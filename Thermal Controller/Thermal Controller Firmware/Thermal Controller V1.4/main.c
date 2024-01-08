/********************************************************************
 FileName:     main.c
 Dependencies: See INCLUDES section
 Processor:		PIC18 or PIC24 USB Microcontrollers
 Hardware:		The code is natively intended to be used on the following
 				hardware platforms: PICDEM™ FS USB Demo Board, 
 				PIC18F87J50 FS USB Plug-In Module, or
 				Explorer 16 + PIC24 USB PIM.  The firmware may be
 				modified for use on other USB platforms by editing the
 				HardwareProfile.h file.
 Complier:  	Microchip C18 (for PIC18) or C30 (for PIC24)
 Company:		Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the “Company”) for its PIC® Microcontroller is intended and
 supplied to you, the Company’s customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

********************************************************************
 File Description:

 Change History:
  Rev   Description
  ----  -----------------------------------------
  1.0   Initial release

  1.1   Added code to allow high voltage to switch in after it reaches a thershold temp

  1.2   Added code to allow for Julabo Chiller

  1.3   Changed Wait cycle to 3s for pulsing Athena (This was added for water sloshing)

  1.4  Added code to control fan by microcontroller     5/2014

  1.5 Added code to use serial
********************************************************************/

/** INCLUDES *******************************************************/
#include <plib.h>
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "USB/usb_device.h"
#include "USB/usb.h"
#include "USB/usb_function_cdc.h"
#include "HardwareProfile.h"
#include "D32.h"
#include "UpDown.h"
#include "Athena.h"
#include "NesLab.h"
#include "Julabo.h"
#include "main.h"
#include "Errors.h"

/** CONFIGURATION **************************************************/

// NOTE THAT BECAUSE WE USE THE BOOTLOADER, NO CONFIGURATION IS NECESSARY
// THE BOOTLOADER PROJECT ACTUALLY CONTROLS ALL OF OUR CONFIG BITS

/** V A R I A B L E S ********************************************************/
#pragma udata

/** P R I V A T E  P R O T O T Y P E S ***************************************/
static void InitializeSystem(void);
void ProcessIO(void);
void USBDeviceTasks(void);
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
void BlinkUSBStatus(void);
void UserInit(void);

/** VECTOR REMAPPING ***********************************************/

/** DECLARATIONS ***************************************************/
#pragma code

/******************************************************************************
 * Function:        void main(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Main program entry point.
 *
 * Note:            None
 *****************************************************************************/

int main(void)
{  
	static int FanCounter = 0U;
	int count = 0;
	int JulaboSwitchFlag = 0;
	float newTemp;
	float stageTemp;
	static float oldAthenaSetTemp = 0.0;
	BOOL test = TRUE;
	newTempSet = 0;
	glError = 0;//used to signal global error
	count = 0;
    InitializeSystem();
	int erase;
	char Erase1[16];

    #if defined(USB_INTERRUPT)
        USBDeviceAttach();
    #endif

    while(1)
    {
        #if defined(USB_POLLING)
		// Check bus status and service USB interrupts.
        USBDeviceTasks(); // Interrupt or polling method.  If using polling, must call
        				  // this function periodically.  This function will take care
        				  // of processing and responding to SETUP transactions 
        				  // (such as during the enumeration process when you first
        				  // plug in).  USB hosts require that USB devices should accept
        				  // and process SETUP packets in a timely fashion.  Therefore,
        				  // when using polling, this function should be called 
        				  // frequently (such as once about every 100 microseconds) at any
        				  // time that a SETUP packet might reasonably be expected to
        				  // be sent by the host to your device.  In most cases, the
        				  // USBDeviceTasks() function does not take very long to
        				  // execute (~50 instruction cycles) before it returns.
        #endif
    				  

		// Application-speciic tasks.
		// Application related code may be added here, or in the ProcessIO() function.
        ProcessIO();

		//Indicates if set voltage command was recieved from computer
		//want to set high power bit and NL in about 2 seconds
		//if updated instantounisly might overload Athena

		if (FanSensor1 == 0)
		{
		FanOn();
		FanCounter = 0;	
		}
		else
		{
		if (++FanCounter >= 25000000)
			{
			FanOff();
			FanCounter = 0;
			}

		}


	if(!glError)
		{
		if (newTempSet != 0) 
			{	
			if (count < 325000) //Software set counter to check almost instantly for change of voltage condition
				{								
				count = 325000;
				} 
			test = TRUE;
			newTempSet = 0;// reset settemp
			}  
		
		if((++count > 375000) && test == TRUE) // about 1 every ten seconds 2000000 before let it be 1/8 250000
			{
			count = 0;//reset counter
			newTempSet = 0; //reset newTemp
			mLED_2_Toggle();
           

			 if((newTemp = AthenaGetSetTemp()) == kErrorTemp)
				{
				ShutDown1();
				}
			

			
		     if(newTemp != oldAthenaSetTemp) //check to see if set temp changed
				{
				if(newTemp >= (stageThreshold + 10.0))
					{	 
					test = TRUE;
					stageTemp = AthenaGetTemp ();//anthony code
					
					if(stageTemp >= stageThreshold)// check to see if we allowed to switch voltage if not dont update so we can come back when ready to switch
						{
						oldAthenaSetTemp = newTemp; // ok we switched dont come back			
						HighTempOn();
						}
					else
						{
						HighTempOff();
						}
					}			
				else        
					{
					HighTempOff();
					oldAthenaSetTemp = newTemp;
					}
				
			if (JulaboGetStatus('3')) //check Julabo status before changing temp
				{
				ShutDown1();
				}			

			if(SetJulaboPower(newTemp))  
				{
				ShutDown1();
				}


			if(SetNLPower(newTemp)) //set NL temp regardless of stage temp
				{
				ShutDown1();
				}
				
				}
					
			else
				{
				test = TRUE;
				 if (JulaboGetStatus('3'))
					{
					ShutDown1();
					}	

				if(NLGetStatus())
					{
					ShutDown1();
					}
				}
		} // end count if loop
	}//end glerror
		      
    }//end while
}//end main

//creats a delay of ~ msec milliseconds
void Wait(int msec)
{
	int i;
	int temp;
	
	temp = msec*5000;
	for (i=0; i<temp; i++)
	{;}
}

void ShutDown1(void)
{
	
//	mPORTCClearBits(kAthenaDIO|kPowerDIO);	//shut Athean power off
	AthenaOff();
	HighTempOff();
	mLED_2_On();                                //indicate com error
	Wait(10000);								//Wait a little
	
//	mPORTCClearBits(kNesLabsDIO);
	NesLabOff();

	glError = 1;
}

/********************************************************************
 * Function:        static void InitializeSystem(void)
 * PreCondition:    None
 * Input:           None
 * Output:          None
 * Side Effects:    None
 * Overview:        InitializeSystem is a centralize initialization
 *                  routine. All required USB initialization routines
 *                  are called from here.
 *                  User application initialization routine should
 *                  also be called from here.                  
 * Note:            None
 *******************************************************************/
static void InitializeSystem(void)
{
    AD1PCFG = 0xFFFF; //Sets all ADC pins as digital??? 
   
    #if defined(USE_USB_BUS_SENSE_IO)
    tris_usb_bus_sense = INPUT_PIN; // See HardwareProfile.h - used to sense USB power - see full description
    #endif
    
    #if defined(USE_SELF_POWER_SENSE_IO)
    tris_self_power = INPUT_PIN;	// See HardwareProfile.h - see full description
    #endif

    // Configure the proper PB frequency and the number of wait states
	SYSTEMConfigWaitStatesAndPB(80000000L);

    // Enable the cache for the best performance
	CheKseg0CacheOn();	

 	mJTAGPortEnable(0); //turns of JTAG comm
	PMCONbits.ON = 0; // not sure

    
    UserInit();

    USBDeviceInit();	//usb_device.c.  Initializes USB module SFRs and firmware
    					//variables to known states.
}//end InitializeSystem

/********************************************************************
 * Function:        void BlinkUSBStatus(void)
 * PreCondition:    None
 * Input:           None
 * Output:          None
 * Side Effects:    None
 * Overview:        BlinkUSBStatus turns on and off LEDs 
 *                  corresponding to the USB device state.
 * Note:            mLED macros can be found in HardwareProfile.h
 *                  USBDeviceState is declared and updated in
 *                  usb_device.c.
 *******************************************************************/
void BlinkUSBStatus(void)
{
    static WORD led_count = 0;
    
    if(led_count == 0)
	{led_count = 50000U;}
    led_count--;

    if(USBDeviceState == CONFIGURED_STATE)
    {
        if(led_count == 0)
        {mLED_USB_Toggle();}
    }
}



/******************************************************************************
 * Function:        void _USB1Interrupt(void)
 * PreCondition:    None
 * Input:           None
 * Output:          None
 * Side Effects:    None
 * Overview:        This function is called when the USB interrupt bit is set
 *					In this example the interrupt is only used when the device
 *					goes to sleep when it receives a USB suspend command
 * Note:            None
 *****************************************************************************/
#if 0
void __attribute__ ((interrupt)) _USB1Interrupt(void)
{
    #if !defined(self_powered)
        if(U1OTGIRbits.ACTVIF)
        {
            IEC5bits.USB1IE = 0;
            U1OTGIEbits.ACTVIE = 0;
            IFS5bits.USB1IF = 0;
        
            //USBClearInterruptFlag(USBActivityIFReg,USBActivityIFBitNum);
            USBClearInterruptFlag(USBIdleIFReg,USBIdleIFBitNum);
            //USBSuspendControl = 0;
        }
    #endif
}
#endif


/*******************************************************************
 * Function:        void USBCBCheckOtherReq(void)
 * PreCondition:    None
 * Input:           None
 * Output:          None
 * Side Effects:    None
 * Overview:        When SETUP packets arrive from the host, some
 * 					firmware must process the request and respond
 *					appropriately to fulfill the request.  
 * Note:            None
 *******************************************************************/
void USBCBCheckOtherReq(void)
{
    USBCheckCDCRequest();
}//end


/*******************************************************************
 * Function:        void USBCBInitEP(void)
 * PreCondition:    None
 * Input:           None
 * Output:          None
 * Side Effects:    None
 * Overview:        This function is called when the device becomes
 *                  initialized, which occurs after the host sends a
 * 					SET_CONFIGURATION (wValue not = 0) request.  This 
 *					callback function should initialize the endpoints 
 *					for the device's usage according to the current 
 *					configuration.
 * Note:            None
 *******************************************************************/
void USBCBInitEP(void)
{
    CDCInitEP();
}

/********************************************************************
 * Function:        void USBCBSendResume(void)
 * PreCondition:    None
 * Input:           None
 * Output:          None
 * Side Effects:    None
 * Overview:        The USB specifications allow some types of USB
 * 					peripheral devices to wake up a host PC (such
 *					as if it is in a low power suspend to RAM state).
 *					This callback should send a RESUME signal that
 *                  has the period of 1-15ms.
 * Note:            Interrupt vs. Polling
 *                 See Original for details
 *******************************************************************/
void USBCBSendResume(void)
{
    static WORD delay_count;
    
    USBResumeControl = 1;                // Start RESUME signaling
    
    delay_count = 1800U;                // Set RESUME line for 1-13 ms
    do
    {
        delay_count--;
    }while(delay_count);
    USBResumeControl = 0;
}



/*******************************************************************
 * Function:        BOOL USER_USB_CALLBACK_EVENT_HANDLER(
 *                        USB_EVENT event, void *pdata, WORD size)
 * PreCondition:    None
 * Input:           USB_EVENT event - the type of event
 *                  void *pdata - pointer to the event data
 *                  WORD size - size of the event data
 * Output:          None
 * Side Effects:    None
 * Overview:        This function is called from the USB stack to
 *                  notify a user application that a USB event
 *                  occured.  This callback is in interrupt context
 *                  when the USB_INTERRUPT option is selected.
 * Note:            See original for additional events not used here
 *******************************************************************/
BOOL USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, WORD size)
{
    switch(event)
    {
        case EVENT_CONFIGURED: 
            USBCBInitEP();
            break;
//        case EVENT_SET_DESCRIPTOR:
//            USBCBStdSetDscHandler();
//            break;
        case EVENT_EP0_REQUEST:
            USBCBCheckOtherReq();
            break;
//        case EVENT_SOF:
//            USBCB_SOF_Handler();
//            break;
//        case EVENT_SUSPEND:
//            USBCBSuspend();
//            break;
//        case EVENT_RESUME:
//            USBCBWakeFromSuspend();
//            break;
//        case EVENT_BUS_ERROR:
//            USBCBErrorHandler();
//            break;
        case EVENT_TRANSFER:
            Nop();
            break;
        default:
            break;
    }      
    return TRUE; 
}

/** EOF main.c *************************************************/
