/*********************************************************************
 *
 *             Microchip USB C18 Firmware -  CDC Version 1.0
 *
 *********************************************************************
 * FileName:        cdc.c
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC18
 * Compiler:        C18 2.30.01+
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * The software supplied herewith by Microchip Technology Incorporated
 * (the “Company”) for its PICmicro® Microcontroller is intended and
 * supplied to you, the Company’s customer, for use solely and
 * exclusively on Microchip PICmicro Microcontroller products. The
 * software is owned by the Company and/or its supplier, and is
 * protected under applicable copyright laws. All rights are reserved.
 * Any use in violation of the foregoing restrictions may subject the
 * user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this
 * license.
 *
 * THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 * TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 * IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 ********************************************************************/

/** I N C L U D E S **********************************************************/
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "USB\usb_device.h"
#include "USB\usb_function_cdc.h"
#include "HardwareProfile.h"

#ifdef USB_USE_CDC

/** V A R I A B L E S ********************************************************/
#if !defined(CDC_RAM_ADDRESS)
    #if defined(__18F14K50)
        #define CDC_RAM_SECTION usbram2
    #elif defined(__18F4550)
        #define CDC_RAM_SECTION USB_VARS
    #endif
#endif

#if defined(__18CXX)
#pragma udata CDC_RAM_SECTION
#endif
volatile FAR CDC_NOTICE cdc_notice;
volatile FAR unsigned char cdc_data_rx[CDC_DATA_OUT_EP_SIZE];
volatile FAR unsigned char cdc_data_tx[CDC_DATA_IN_EP_SIZE];
LINE_CODING line_coding;    // Buffer to store line coding information

#pragma udata
BYTE cdc_rx_len;            // total rx length

BYTE cdc_trf_state;         // States are defined cdc.h
POINTER pCDCSrc;            // Dedicated source pointer
POINTER pCDCDst;            // Dedicated destination pointer
BYTE cdc_tx_len;            // total tx length
BYTE cdc_mem_type;          // _ROM, _RAM

USB_HANDLE CDCDataOutHandle;
USB_HANDLE CDCDataInHandle;


CONTROL_SIGNAL_BITMAP control_signal_bitmap;
DWORD BaudRateGen;			// BRG value calculated from baudrate
extern BYTE  i;
extern BYTE_VAL *pDst;

/*
 * SEND_ENCAPSULATED_COMMAND and GET_ENCAPSULATED_RESPONSE are required
 * requests according to the CDC specification.
 * However, it is not really being used here, therefore a dummy buffer is
 * used for conformance.
 */
#define dummy_length    0x08
BYTE_VAL dummy_encapsulated_cmd_response[dummy_length];

#if defined(USB_CDC_SET_LINE_CODING_HANDLER)
CTRL_TRF_RETURN USB_CDC_SET_LINE_CODING_HANDLER(CTRL_TRF_PARAMS);
#endif

/** P R I V A T E  P R O T O T Y P E S ***************************************/
void USBCDCSetLineCoding(void);

/** D E C L A R A T I O N S **************************************************/
//#pragma code

/** C L A S S  S P E C I F I C  R E Q ****************************************/
/******************************************************************************
 * Function:        void USBCheckCDCRequest(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine checks the setup data packet to see if it
 *                  knows how to handle it
 *
 * Note:            None
 *****************************************************************************/
void USBCheckCDCRequest(void)
{
    /*
     * If request recipient is not an interface then return
     */
    if(SetupPkt.Recipient != RCPT_INTF) return;

    /*
     * If request type is not class-specific then return
     */
    if(SetupPkt.RequestType != CLASS) return;

    /*
     * Interface ID must match interface numbers associated with
     * CDC class, else return
     */
    if((SetupPkt.bIntfID != CDC_COMM_INTF_ID)&&
       (SetupPkt.bIntfID != CDC_DATA_INTF_ID)) return;
    
    switch(SetupPkt.bRequest)
    {
        //****** These commands are required ******//
        case SEND_ENCAPSULATED_COMMAND:
         //send the packet
            inPipes[0].pSrc.bRam = (BYTE*)&dummy_encapsulated_cmd_response;
            inPipes[0].wCount.Val = dummy_length;
            inPipes[0].info.bits.ctrl_trf_mem = USB_INPIPES_RAM;
            inPipes[0].info.bits.busy = 1;
            break;
        case GET_ENCAPSULATED_RESPONSE:
            // Populate dummy_encapsulated_cmd_response first.
            inPipes[0].pSrc.bRam = (BYTE*)&dummy_encapsulated_cmd_response;
            inPipes[0].info.bits.busy = 1;
            break;
        //****** End of required commands ******//

        #if defined(USB_CDC_SUPPORT_ABSTRACT_CONTROL_MANAGEMENT_CAPABILITIES_D1)
        case SET_LINE_CODING:
            outPipes[0].wCount.Val = SetupPkt.wLength;
            outPipes[0].pDst.bRam = (BYTE*)LINE_CODING_TARGET;
            outPipes[0].pFunc = LINE_CODING_PFUNC;
            outPipes[0].info.bits.busy = 1;
            break;
            
        case GET_LINE_CODING:
            USBEP0SendRAMPtr(
                (BYTE*)&line_coding,
                LINE_CODING_LENGTH,
                USB_EP0_INCLUDE_ZERO);
            break;

        case SET_CONTROL_LINE_STATE:
            control_signal_bitmap._byte = LSB(SetupPkt.W_Value);
            CONFIGURE_RTS(control_signal_bitmap.CARRIER_CONTROL);
            CONFIGURE_DTR(control_signal_bitmap.DTE_PRESENT);
            inPipes[0].info.bits.busy = 1;
            break;
        #endif

        #if defined(USB_CDC_SUPPORT_ABSTRACT_CONTROL_MANAGEMENT_CAPABILITIES_D2)
        case SEND_BREAK:                        // Optional
            inPipes[0].info.bits.busy = 1;
			if (SetupPkt.wValue == 0xFFFF)
			{
				UART_ENABLE = 0;  // turn off USART
				UART_TRISTx = 0;   // Make TX pin an output
				UART_Tx = 0;   // make it low
			}
			else if (SetupPkt.wValue == 0x0000)
			{
				UART_ENABLE = 1;  // turn on USART
				UART_TRISTx = 1;   // Make TX pin an input
			}
			else
			{
                UART_SEND_BREAK();
			}
            break;
        #endif
        default:
            break;
    }//end switch(SetupPkt.bRequest)

}//end USBCheckCDCRequest

/** U S E R  A P I ***********************************************************/

/******************************************************************************
 * Function:        void CDCInitEP(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        CDCInitEP initializes CDC endpoints, buffer descriptors,
 *                  internal state-machine, and variables.
 *                  It should be called after the USB host has sent out a
 *                  SET_CONFIGURATION request.
 *                  See USBStdSetCfgHandler() in usb_device.c for examples.
 *
 * Note:            None
 *****************************************************************************/
void CDCInitEP(void)
{
   	//Abstract line coding information
   	line_coding.dwDTERate.Val = 19200;      // baud rate
   	line_coding.bCharFormat = 0x00;             // 1 stop bit
   	line_coding.bParityType = 0x00;             // None
   	line_coding.bDataBits = 0x08;               // 5,6,7,8, or 16

    cdc_trf_state = CDC_TX_READY;
    cdc_rx_len = 0;
    
    /*
     * Do not have to init Cnt of IN pipes here.
     * Reason:  Number of BYTEs to send to the host
     *          varies from one transaction to
     *          another. Cnt should equal the exact
     *          number of BYTEs to transmit for
     *          a given IN transaction.
     *          This number of BYTEs will only
     *          be known right before the data is
     *          sent.
     */
    USBEnableEndpoint(CDC_COMM_EP,USB_IN_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
    USBEnableEndpoint(CDC_DATA_EP,USB_IN_ENABLED|USB_OUT_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);

    CDCDataOutHandle = USBRxOnePacket(CDC_DATA_EP,(BYTE*)&cdc_data_rx,sizeof(cdc_data_rx));
    CDCDataInHandle = NULL;
}//end CDCInitEP

/******************************************************************************
 * Function:        BYTE getsUSBUSART(char *buffer,
 *                                    BYTE len)
 *
 * PreCondition:    Value of input argument 'len' should be smaller than the
 *                  maximum endpoint size responsible for receiving bulk
 *                  data from USB host for CDC class.
 *                  Input argument 'buffer' should point to a buffer area that
 *                  is bigger or equal to the size specified by 'len'.
 *
 * Input:           buffer  : Pointer to where received BYTEs are to be stored
 *                  len     : The number of BYTEs expected.
 *
 * Output:          The number of BYTEs copied to buffer.
 *
 * Side Effects:    Publicly accessible variable cdc_rx_len is updated with
 *                  the number of BYTEs copied to buffer.
 *                  Once getsUSBUSART is called, subsequent retrieval of
 *                  cdc_rx_len can be done by calling macro mCDCGetRxLength().
 *
 * Overview:        getsUSBUSART copies a string of BYTEs received through
 *                  USB CDC Bulk OUT endpoint to a user's specified location. 
 *                  It is a non-blocking function. It does not wait
 *                  for data if there is no data available. Instead it returns
 *                  '0' to notify the caller that there is no data available.
 *
 * Note:            If the actual number of BYTEs received is larger than the
 *                  number of BYTEs expected (len), only the expected number
 *                  of BYTEs specified will be copied to buffer.
 *                  If the actual number of BYTEs received is smaller than the
 *                  number of BYTEs expected (len), only the actual number
 *                  of BYTEs received will be copied to buffer.
 *****************************************************************************/
BYTE getsUSBUSART(char *buffer, BYTE len)
{
    cdc_rx_len = 0;
    
    if(!USBHandleBusy(CDCDataOutHandle))
    {
        /*
         * Adjust the expected number of BYTEs to equal
         * the actual number of BYTEs received.
         */
        if(len > USBHandleGetLength(CDCDataOutHandle))
            len = USBHandleGetLength(CDCDataOutHandle);
        
        /*
         * Copy data from dual-ram buffer to user's buffer
         */
        for(cdc_rx_len = 0; cdc_rx_len < len; cdc_rx_len++)
            buffer[cdc_rx_len] = cdc_data_rx[cdc_rx_len];

        /*
         * Prepare dual-ram buffer for next OUT transaction
         */

        CDCDataOutHandle = USBRxOnePacket(CDC_DATA_EP,(BYTE*)&cdc_data_rx,sizeof(cdc_data_rx));

    }//end if
    
    return cdc_rx_len;
    
}//end getsUSBUSART

/******************************************************************************
 * Function:        void putUSBUSART(char *data, BYTE length)
 *
 * PreCondition:    cdc_trf_state must be in the CDC_TX_READY state.
 *                  
 *                  The string of characters pointed to by 'data' must equal
 *                  to or smaller than 255 BYTEs.
 *
 * Input:           data    : Pointer to an array of data, length specified in the call.
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        putUSBUSART writes an array of data to the USB, of the
 *                  specified length.  This allows 0x00 to be transferred
 *                  without interrupting the flow. 
 *
 * Note:            The transfer mechanism for device-to-host(put) is more
 *                  flexible than host-to-device(get). It can handle
 *                  a string of data larger than the maximum size of bulk IN
 *                  endpoint. A state machine is used to transfer a long
 *                  string of data over multiple USB transactions.
 *                  See CDCTxService() for more details.
 *****************************************************************************/
void putUSBUSART(char *data, BYTE  length)
{
    /*
     * User should have checked that cdc_trf_state is in CDC_TX_READY state
     * before calling this function.
     * As a safety precaution, this fuction checks the state one more time
     * to make sure it does not override any pending transactions.
     *
     * Currently it just quits the routine without reporting any errors back
     * to the user.
     *
     * Bottomline: User MUST make sure that mUSBUSARTIsTxTrfReady()==1
     *             before calling this function!
     * Example:
     * if(mUSBUSARTIsTxTrfReady())
     *     putUSBUSART(pData, Length);
     *
     * IMPORTANT: Never use the following blocking while loop to wait:
     * while(!mUSBUSARTIsTxTrfReady())
     *     putUSBUSART(pData, Length);
     *
     * The whole firmware framework is written based on cooperative
     * multi-tasking and a blocking code is not acceptable.
     * Use a state machine instead.
     */
    if(cdc_trf_state == CDC_TX_READY)
    {
        mUSBUSARTTxRam((BYTE*)data, length);     // See cdc.h
    }
}//end putUSBUSART

/******************************************************************************
 * Function:        void putsUSBUSART(char *data, BYTE length)
 *
 * PreCondition:    cdc_trf_state must be in the CDC_TX_READY state.
 *                  
 *                  The string of characters pointed to by 'data' must equal
 *                  to or smaller than 255 BYTEs.
 *
 * Input:           data    : Pointer to a null-terminated string of data.
 *                            If a null character is not found, 255 BYTEs
 *                            of data will be transferred to the host.
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        putsUSBUSART writes a string of data to the USB including
 *                  the null character. Use this version, 'puts', to transfer
 *                  data located in data memory.
 *
 * Note:            The transfer mechanism for device-to-host(put) is more
 *                  flexible than host-to-device(get). It can handle
 *                  a string of data larger than the maximum size of bulk IN
 *                  endpoint. A state machine is used to transfer a long
 *                  string of data over multiple USB transactions.
 *                  See CDCTxService() for more details.
 *****************************************************************************/
void putsUSBUSART(char *data)
{
    BYTE len;
    char *pData;

    /*
     * User should have checked that cdc_trf_state is in CDC_TX_READY state
     * before calling this function.
     * As a safety precaution, this fuction checks the state one more time
     * to make sure it does not override any pending transactions.
     *
     * Currently it just quits the routine without reporting any errors back
     * to the user.
     *
     * Bottomline: User MUST make sure that mUSBUSARTIsTxTrfReady()==1
     *             before calling this function!
     * Example:
     * if(mUSBUSARTIsTxTrfReady())
     *     putsUSBUSART(pData, Length);
     *
     * IMPORTANT: Never use the following blocking while loop to wait:
     * while(!mUSBUSARTIsTxTrfReady())
     *     putsUSBUSART(pData);
     *
     * The whole firmware framework is written based on cooperative
     * multi-tasking and a blocking code is not acceptable.
     * Use a state machine instead.
     */
    if(cdc_trf_state != CDC_TX_READY) return;
    
    /*
     * While loop counts the number of BYTEs to send including the
     * null character.
     */
    len = 0;
    pData = data;
    do
    {
        len++;
        if(len == 255) break;       // Break loop once max len is reached.
    }while(*pData++);
    
    /*
     * Second piece of information (length of data to send) is ready.
     * Call mUSBUSARTTxRam to setup the transfer.
     * The actual transfer process will be handled by CDCTxService(),
     * which should be called once per Main Program loop.
     */
    mUSBUSARTTxRam((BYTE*)data, len);     // See cdc.h
}//end putsUSBUSART

/******************************************************************************
 * Function:        void putrsUSBUSART(const rom char *data)
 *
 * PreCondition:    cdc_trf_state must be in the CDC_TX_READY state.
 *                  
 *                  The string of characters pointed to by 'data' must equal
 *                  to or smaller than 255 BYTEs.
 *
 * Input:           data    : Pointer to a null-terminated string of data.
 *                            If a null character is not found, 255 BYTEs
 *                            of data will be transferred to the host.
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        putrsUSBUSART writes a string of data to the USB including
 *                  the null character. Use this version, 'putrs', to transfer
 *                  data literals and data located in program memory.
 *
 * Note:            The transfer mechanism for device-to-host(put) is more
 *                  flexible than host-to-device(get). It can handle
 *                  a string of data larger than the maximum size of bulk IN
 *                  endpoint. A state machine is used to transfer a long
 *                  string of data over multiple USB transactions.
 *                  See CDCTxService() for more details.
 *****************************************************************************/
void putrsUSBUSART(const ROM char *data)
{
    BYTE len;
    const ROM char *pData;

    /*
     * User should have checked that cdc_trf_state is in CDC_TX_READY state
     * before calling this function.
     * As a safety precaution, this fuction checks the state one more time
     * to make sure it does not override any pending transactions.
     *
     * Currently it just quits the routine without reporting any errors back
     * to the user.
     *
     * Bottomline: User MUST make sure that mUSBUSARTIsTxTrfReady()
     *             before calling this function!
     * Example:
     * if(mUSBUSARTIsTxTrfReady())
     *     putsUSBUSART(pData);
     *
     * IMPORTANT: Never use the following blocking while loop to wait:
     * while(cdc_trf_state != CDC_TX_READY)
     *     putsUSBUSART(pData);
     *
     * The whole firmware framework is written based on cooperative
     * multi-tasking and a blocking code is not acceptable.
     * Use a state machine instead.
     */
    if(cdc_trf_state != CDC_TX_READY) return;
    
    /*
     * While loop counts the number of BYTEs to send including the
     * null character.
     */
    len = 0;
    pData = data;
    do
    {
        len++;
        if(len == 255) break;       // Break loop once max len is reached.
    }while(*pData++);
    
    /*
     * Second piece of information (length of data to send) is ready.
     * Call mUSBUSARTTxRom to setup the transfer.
     * The actual transfer process will be handled by CDCTxService(),
     * which should be called once per Main Program loop.
     */

    mUSBUSARTTxRom((ROM BYTE*)data,len); // See cdc.h

}//end putrsUSBUSART

/******************************************************************************
 * Function:        void CDCTxService(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        CDCTxService handles device-to-host transaction(s).
 *                  This function should be called once per Main Program loop.
 *
 * Note:            None
 *****************************************************************************/
void CDCTxService(void)
{
    BYTE byte_to_send;
    BYTE i;
    
    if(USBHandleBusy(CDCDataInHandle)) return;
    /*
     * Completing stage is necessary while [ mCDCUSartTxIsBusy()==1 ].
     * By having this stage, user can always check cdc_trf_state,
     * and not having to call mCDCUsartTxIsBusy() directly.
     */
    if(cdc_trf_state == CDC_TX_COMPLETING)
        cdc_trf_state = CDC_TX_READY;
    
    /*
     * If CDC_TX_READY state, nothing to do, just return.
     */
    if(cdc_trf_state == CDC_TX_READY) return;
    
    /*
     * If CDC_TX_BUSY_ZLP state, send zero length packet
     */
    if(cdc_trf_state == CDC_TX_BUSY_ZLP)
    {
        CDCDataInHandle = USBTxOnePacket(CDC_DATA_EP,NULL,0);
        //CDC_DATA_BD_IN.CNT = 0;
        cdc_trf_state = CDC_TX_COMPLETING;
    }
    else if(cdc_trf_state == CDC_TX_BUSY)
    {
        /*
         * First, have to figure out how many byte of data to send.
         */
    	if(cdc_tx_len > sizeof(cdc_data_tx))
    	    byte_to_send = sizeof(cdc_data_tx);
    	else
    	    byte_to_send = cdc_tx_len;

        /*
         * Subtract the number of bytes just about to be sent from the total.
         */
    	cdc_tx_len = cdc_tx_len - byte_to_send;
    	  
        pCDCDst.bRam = (BYTE*)&cdc_data_tx; // Set destination pointer
        
        i = byte_to_send;
        if(cdc_mem_type == _ROM)            // Determine type of memory source
        {
            while(i)
            {
                *pCDCDst.bRam = *pCDCSrc.bRom;
                pCDCDst.bRam++;
                pCDCSrc.bRom++;
                i--;
            }//end while(byte_to_send)
        }
        else // _RAM
        {
            while(i)
            {
                *pCDCDst.bRam = *pCDCSrc.bRam;
                pCDCDst.bRam++;
                pCDCSrc.bRam++;
                i--;
            }//end while(byte_to_send._word)
        }//end if(cdc_mem_type...)
        
        /*
         * Lastly, determine if a zero length packet state is necessary.
         * See explanation in USB Specification 2.0: Section 5.8.3
         */
        if(cdc_tx_len == 0)
        {
            if(USBHandleGetLength(CDCDataInHandle) == sizeof(cdc_data_tx))
                cdc_trf_state = CDC_TX_BUSY_ZLP;
            else
                cdc_trf_state = CDC_TX_COMPLETING;
        }//end if(cdc_tx_len...)
            
    }//end if(cdc_tx_sate == CDC_TX_BUSY)
    
    /*
     * Both CDC_TX_BUSY and CDC_TX_BUSY_ZLP states use the following macro
     */
    CDCDataInHandle = USBTxOnePacket(CDC_DATA_EP,(BYTE*)&cdc_data_tx,byte_to_send);

}//end CDCTxService

#endif //USB_USE_CDC

/** EOF cdc.c ****************************************************************/
