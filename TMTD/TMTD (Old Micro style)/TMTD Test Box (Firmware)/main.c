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
  Rev   Date         Description
  1.0   11/19/2004   Initial release
  2.1   02/26/2007   Updated for simplicity and to use common
                     coding style
********************************************************************/

/** INCLUDES *******************************************************/
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "./USB/usb_device.h"
#include "./USB/usb.h"
#include "./USB/usb_function_cdc.h"
#include "usart.h"
#include "HardwareProfile.h"
#include "ADC.h"
#include "delays.h"
#include <stdlib.h>
//#include <stdio.h>
#include <string.h>
#include <STDIO.h>
//#include <plib.h>

/** CONFIGURATION **************************************************/
#if defined(PICDEM_FS_USB)      // Configuration bits for PICDEM FS USB Demo Board (based on PIC18F4550)
        #pragma config PLLDIV   = 5         // (20 MHz crystal on PICDEM FS USB board)
        #pragma config CPUDIV   = OSC1_PLL2   
        #pragma config USBDIV   = 2         // Clock source from 96MHz PLL/2
        #pragma config FOSC     = HSPLL_HS
        #pragma config FCMEN    = OFF
        #pragma config IESO     = OFF
        #pragma config PWRT     = OFF
        #pragma config BOR      = OFF //a
        #pragma config BORV     = 3
        #pragma config VREGEN   = OFF     //USB Voltage Regulator a
        #pragma config WDT      = OFF
        #pragma config WDTPS    = 32768
        #pragma config MCLRE    = ON
        #pragma config LPT1OSC  = OFF
        #pragma config PBADEN   = OFF
//      #pragma config CCP2MX   = ON
        #pragma config STVREN   = ON
        #pragma config LVP      = OFF
//      #pragma config ICPRT    = OFF       // Dedicated In-Circuit Debug/Programming
        #pragma config XINST    = OFF       // Extended Instruction Set
        #pragma config CP0      = OFF
        #pragma config CP1      = OFF
//      #pragma config CP2      = OFF
//      #pragma config CP3      = OFF
        #pragma config CPB      = OFF
//      #pragma config CPD      = OFF
        #pragma config WRT0     = OFF
        #pragma config WRT1     = OFF
//      #pragma config WRT2     = OFF
//      #pragma config WRT3     = OFF
        #pragma config WRTB     = OFF       // Boot Block Write Protection
        #pragma config WRTC     = OFF
//      #pragma config WRTD     = OFF
        #pragma config EBTR0    = OFF
        #pragma config EBTR1    = OFF
//      #pragma config EBTR2    = OFF
//      #pragma config EBTR3    = OFF
        #pragma config EBTRB    = OFF



    
#elif defined(LOW_PIN_COUNT_USB_DEVELOPMENT_KIT)
        //14K50
        #pragma config CPU_DIV = NoClkDiv, USB_LSCLK = OFF                   // CONFIG1L
        #pragma config FOSC = HS, PLL_EN=ON, FCMEN = OFF, IESO = OFF                     // CONFIG1H
        #pragma config PWRT = OFF, BOREN = OFF, BORV = 30, VREGEN = ON					// CONFIG2L
        #pragma config WDTEN = OFF, WDTPS = 32768                                     // CONFIG2H
        #pragma config MCLRE = OFF, HFOFST = OFF				        // CONFIG3H
        #pragma config STVREN = ON, LVP = OFF, XINST = OFF, BBSIZ=OFF	// CONFIG4L
        #pragma config CP0 = OFF, CP1 = OFF						                    // CONFIG5L
        #pragma config CPB = OFF                                    			    // CONFIG5H
        #pragma config WRT0 = OFF, WRT1 = OFF						                // CONFIG6L
        //#pragma config WRTB = ON, WRTC = OFF                            			// CONFIG6H
        // Disabled WRTB for debugging.  Reenable for real.
        #pragma config WRTB = OFF, WRTC = OFF                            			// CONFIG6H
        #pragma config EBTR0 = OFF, EBTR1 = OFF							           	// CONFIG7L
        #pragma config EBTRB = OFF                                                  // CONFIG7H
        
        
        #ifdef __DEBUG
            #pragma config BKBUG = ON 
        #endif
        #ifndef __DEBUG
            #pragma config BKBUG = OFF
        #endif   

#elif defined(EXPLORER_16)
    #ifdef __PIC24FJ256GB110__ //Defined by MPLAB when using 24FJ256GB110 device
        _CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2) 
        _CONFIG2( 0xF7FF & IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & PLLDIV_DIV2 & IOL1WAY_ON)
    #else
        #error No hardware board defined, see "HardwareProfile.h" and __FILE__
    #endif
#else
    #error No hardware board defined, see "HardwareProfile.h" and __FILE__
#endif

/** I N C L U D E S **********************************************************/

#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "USB\usb_device.h"
#include "USB\usb.h"
#include "usart.h"
//#include "HardwareProfile.h"
#include "LCD.h"
#include <stdlib.h>
//#include <stdio.h>
#include <string.h>
#include <STDIO.h>
//#include <plib.h>

/** V A R I A B L E S ********************************************************/
#pragma udata
char USB_In_Buffer[64];
char USB_Out_Buffer[64];


int pulse_counter;
char Program;
BOOL DC = FALSE;
BOOL MG = FALSE;
char counterstring[10];
float Basecurrent_Resistor;
double doub;
BOOL stringPrinted;
char frequency[14] = "freq = ";
char Voltage[14] = "Voltage = ";
char basecurrent[14] = "BaseCur = ";
char current[14] = "Current = ";

/** P R I V A T E  P R O T O T Y P E S ***************************************/
static void InitializeSystem(void);
void ProcessIO(void);
void USBDeviceTasks(void);
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
static void BlinkUSBStatus(void);
void UserInit(void);

/** VECTOR REMAPPING ***********************************************/
#if defined(__18CXX)
	//On PIC18 devices, addresses 0x00, 0x08, and 0x18 are used for
	//the reset, high priority interrupt, and low priority interrupt
	//vectors.  However, the current Microchip USB bootloader 
	//examples are intended to occupy addresses 0x00-0x7FF or
	//0x00-0xFFF depending on which bootloader is used.  Therefore,
	//the bootloader code remaps these vectors to new locations
	//as indicated below.  This remapping is only necessary if you
	//wish to program the hex file generated from this project with
	//the USB bootloader.  If no bootloader is used, edit the
	//usb_config.h file and comment out the following defines:
//	#define PROGRAMMABLE_WITH_USB_HID_BOOTLOADER
	//#define PROGRAMMABLE_WITH_USB_LEGACY_CUSTOM_CLASS_BOOTLOADER
	
	#if defined(PROGRAMMABLE_WITH_USB_HID_BOOTLOADER)
		#define REMAPPED_RESET_VECTOR_ADDRESS			0x1200 //changed from 1000
		#define REMAPPED_HIGH_INTERRUPT_VECTOR_ADDRESS	0x1208 //changed from 1008
		#define REMAPPED_LOW_INTERRUPT_VECTOR_ADDRESS	0x1218 //changed from 1018
	#elif defined(PROGRAMMABLE_WITH_USB_MCHPUSB_BOOTLOADER)	
		#define REMAPPED_RESET_VECTOR_ADDRESS			0x800
		#define REMAPPED_HIGH_INTERRUPT_VECTOR_ADDRESS	0x808
		#define REMAPPED_LOW_INTERRUPT_VECTOR_ADDRESS	0x818
	#else	
		#define REMAPPED_RESET_VECTOR_ADDRESS			0x0 
		#define REMAPPED_HIGH_INTERRUPT_VECTOR_ADDRESS	0x08 
		#define REMAPPED_LOW_INTERRUPT_VECTOR_ADDRESS	0x18 
	#endif
	
	#if defined(PROGRAMMABLE_WITH_USB_HID_BOOTLOADER)||defined(PROGRAMMABLE_WITH_USB_MCHPUSB_BOOTLOADER)
	extern void _startup (void);        // See c018i.c in your C18 compiler dir
	#pragma code REMAPPED_RESET_VECTOR = REMAPPED_RESET_VECTOR_ADDRESS
	void _reset (void)
	{
	   // _asm goto _startup _endasm
	}
	#endif
	#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = REMAPPED_HIGH_INTERRUPT_VECTOR_ADDRESS
	void Remapped_High_ISR (void)
	{
	     _asm goto YourHighPriorityISRCode _endasm
	}
	#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = REMAPPED_LOW_INTERRUPT_VECTOR_ADDRESS
	void Remapped_Low_ISR (void)
	{
	     _asm goto YourLowPriorityISRCode _endasm
	}
	
	#if defined(PROGRAMMABLE_WITH_USB_HID_BOOTLOADER)||defined(PROGRAMMABLE_WITH_USB_MCHPUSB_BOOTLOADER)   
	//Note: If this project is built while one of the bootloaders has
	//been defined, but then the output hex file is not programmed with
	//the bootloader, addresses 0x08 and 0x18 would end up programmed with 0xFFFF.
	//As a result, if an actual interrupt was enabled and occured, the PC would jump
	//to 0x08 (or 0x18) and would begin executing "0xFFFF" (unprogrammed space).  This
	//executes as nop instructions, but the PC would eventually reach the REMAPPED_RESET_VECTOR_ADDRESS
	//(0x1000 or 0x800, depending upon bootloader), and would execute the "goto _startup".  This
	//would effective reset the application.
	
	//To fix this situation, we should always deliberately place a 
	//"goto REMAPPED_HIGH_INTERRUPT_VECTOR_ADDRESS" at address 0x08, and a
	//"goto REMAPPED_LOW_INTERRUPT_VECTOR_ADDRESS" at address 0x18.  When the output
	//hex file of this project is programmed with the bootloader, these sections do not
	//get bootloaded (as they overlap the bootloader space).  If the output hex file is not
	//programmed using the bootloader, then the below goto instructions do get programmed,
	//and the hex file still works like normal.  The below section is only required to fix this
	//scenario.
	#pragma code HIGH_INTERRUPT_VECTOR = 0x08
	void High_ISR (void)
	{
	     _asm goto REMAPPED_HIGH_INTERRUPT_VECTOR_ADDRESS _endasm
	}
	#pragma code LOW_INTERRUPT_VECTOR = 0x18
	void Low_ISR (void)
	{
	     _asm goto REMAPPED_LOW_INTERRUPT_VECTOR_ADDRESS _endasm
	}
	#endif	//end of "#if defined(PROGRAMMABLE_WITH_USB_HID_BOOTLOADER)||defined(PROGRAMMABLE_WITH_USB_LEGACY_CUSTOM_CLASS_BOOTLOADER)"  

	#pragma code
	
	
	//These are your actual interrupt handling routines.
	#pragma interruptlow YourHighPriorityISRCode
	
	
//Interupt is activated by 1 second timer
	void YourHighPriorityISRCode()
	{
			

		if (Program == '1')
		{
	//	INTCONbits.PEIE = 0; 	 //Disables all Low Priority Interrupts
		
		
		RS = 0;
		WriteLCD(0x87);
		itoa(pulse_counter, counterstring); 
		LCDput_str(counterstring);
		LCDput_ch('H');
		LCDput_ch('z');
		LCDput_ch(' ');
		LCDput_ch(' ');
		LCDput_ch(' ');
		LCDput_ch(' ');
		LCDput_ch(' ');
		LCDput_ch(' ');
		pulse_counter = 0;
//		INTCONbits.PEIE = 1; //Enables all Low Priority Interrupts	
		}

		INTCONbits.TMR0IF = 0; //Clear Timer Flag
	 	 	
      
	}	//This return will be a "retfie fast", since this is in a #pragma interrupt section 
	#pragma interruptlow YourLowPriorityISRCode

//interuupt is activated by change on RB4-RB7
	void YourLowPriorityISRCode()
		{
		T0CONbits.TMR0ON = 0;
	//	INTCONbits.GIE = 0;
		Delay10TCYx(10); //small delay to account for bouncing
		mLED_4_Toggle();

	if (BootLoader_Switch == 1)
		{
		switch (Program)
		{
			case '1' :
				pulse_counter++;
				break;

			case '2' :
			
				ADC_Voltage();
				break;

			case '3' :
				ADC_BaseCurrent();
				break;

			case '4' :
				ADC_Current();
				break;

		}
	}
	
		T0CONbits.TMR0ON = 1;
		INTCONbits.RBIF = 0;//Clear rb INTERRUPT Flag
		//INTCONbits.GIE = 1;
		
	}	//This return will be a "retfie", since this is in a #pragma interruptlow section 

#endif //of "#if defined(__18CXX)"




/** DECLARATIONS ***************************************************/



#pragma code// declare executable instructions


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
	


void main(void)
{   


	static int count;
	static int count1;
	InitializeSystem();
	initLCD();
	LCDput_str(frequency);
	count = 0;
	count1 = 0;
	pulse_counter = 0;	
	mLED_3_On();
	Delay10TCYx(100);
	mLED_4_On();
	Program = '1';
	
	RCONbits.IPEN = 1; //Enable Interrupt Priority

	RCONbits.SBOREN =0;
	RCONbits.POR =1;   //check for poiwer on reset
	RCONbits.BOR =1;   //check for brown out reset

	INTCONbits.PEIE = 1;  //Enables all Low Priority Interrupts
	INTCONbits.GIE = 1;   //Enables hIGH PRIORITY iNTERRUNPTS
	


    while(1)
    {
		
		// Check bus status and service USB interrupts.
       // USBDeviceTasks(); // Interrupt or polling method.  If using polling, must call
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
    				  

		// Application-specific tasks.
		// Application related code may be added here, or in the ProcessIO() function.


count++;
if (count == 5000U)
	{
	count = 0;
	if (Frequency_Switch == 0)	//Program 1
		{
		if (Program == '1')
			{
			//exit
			}
		else
			{
			INTCONbits.PEIE = 0; 	 //Disable all Low Priority Interrupts
			INTCONbits.GIE = 0;      //Disable High Priority Interrupts
			RS = 0;
			WriteLCD(0x80);
			LCDput_str(frequency);
			pulse_counter = 0;
			Program = '1';
			INTCONbits.PEIE = 1; 	 //Disable all Low Priority Interrupts
			INTCONbits.GIE = 1;      //Disable High Priority Interrupts
			T0CONbits.TMR0ON = 1;	
			}
		}
	if (Voltage_Switch == 0)	//Program 2	
		{
		if (Program == '2')
			{
			//exit
			}
		else
			{
			T0CONbits.TMR0ON = 0;  //turn timer off
			INTCONbits.RBIE = 0; //turn off B interuppts to talk to LCD
		//	INTCONbits.PEIE = 0; 	 //Disable all Low Priority Interrupts
		//	INTCONbits.GIE = 0;      //Disable High Priority Interrupts
			RS = 0;
			WriteLCD(0x80);
			LCDput_str(Voltage);
			ADC_Voltage();
			pulse_counter = 0;
			Program = '2';
			INTCONbits.RBIE = 1;  //turn on b interupts
		//	INTCONbits.PEIE = 1; 	 //Enable all Low Priority Interrupts
		//	INTCONbits.GIE = 1;      //Enable High Priority Interrupts
			}
		}
	if (Basecurrent_Switch == 0) //Program 3
		{
		if (Program == '3')
			{
			//exit
			}
		else
			{
			T0CONbits.TMR0ON = 0;  //turn timer off
			INTCONbits.PEIE = 0; 	 //Disable all Low Priority Interrupts
			INTCONbits.GIE = 0;      //Disable High Priority Interrupts
			RS = 0;
			WriteLCD(0x80);
			LCDput_str(basecurrent);
		//	ADC_BaseCurrent();
			pulse_counter = 0;
			Program = '3';
			INTCONbits.PEIE = 1; 	 //Enable all Low Priority Interrupts
			INTCONbits.GIE = 1;      //Enable High Priority Interrupts
			}
		
		}
	if (Current_Switch == 0)    //Program 4
		{
			if (Program == '4')
			{
			//exit
			}
		else
			{
			T0CONbits.TMR0ON = 0;  //turn timer off
			INTCONbits.PEIE = 0; 	 //Disable all Low Priority Interrupts
			INTCONbits.GIE = 0;      //Disable High Priority Interrupts
			RS = 0;
			WriteLCD(0x80);
			LCDput_str(current);
		//	ADC_Current();
			pulse_counter = 0;
			Program = '4';
			INTCONbits.PEIE = 1; 	 //Enable all Low Priority Interrupts
			INTCONbits.GIE = 1;      //Enable High Priority Interrupts
			}
		}
	else//
		{//
		//
		}//
}//


/*
	if (DC_Switch == 0 && MG == FALSE)
			{
			if(DC == FALSE) //IN DC MODE..WRITE DC TO SCREEN
				{
				DC = TRUE;	
				INTCONbits.PEIE = 0; 	 //Disable all Low Priority Interrupts
				INTCONbits.GIE = 0; 
				RS = 0;
				WriteLCD(0xC0);
				LCDput_ch('D');
				LCDput_ch('C');		
				INTCONbits.PEIE = 1; 	 //Enable all Low Priority Interrupts
				INTCONbits.GIE = 1;      //Enable High Priority Interrupts
				}

			if (count1 == 10U) //UPDATE A/D EVERY 10 CYCLES
			{
			INTCONbits.PEIE = 0; 	 //Disable all Low Priority Interrupts
			INTCONbits.GIE = 0; 
			if (Program == '2')
				{
				ADC_Voltage();
				}
			if (Program == '3')
				{
				ADC_BaseCurrent();
				}
			if (Program == '4')
				{
				ADC_Current();
				}
			count1 = 0;
			INTCONbits.PEIE = 1; 	 //Enable all Low Priority Interrupts
			INTCONbits.GIE = 1;      //Enable High Priority Interrupts
			}
			else
			{
			count1++;
			}
		}

		if (DC_Switch == 1 && DC == TRUE) //JUST EXITED DC MODE..UPDATE LCD SCREEN
			{
			INTCONbits.PEIE = 0; 	 //Disable all Low Priority Interrupts
			INTCONbits.GIE = 0; 
			DC = FALSE;
			RS = 0;
			WriteLCD(0xC0);
			LCDput_ch(' ');
			LCDput_ch(' ');
			INTCONbits.PEIE = 1; 	 //Enable all Low Priority Interrupts
			INTCONbits.GIE = 1;      //Enable High Priority Interrupts

			}


		if (MovieGate_Switch == 0) //Movie Gate Takes priority....switches input no longer intersted in DC mode
			{
			if (MG == FALSE)
				{
				MG = TRUE;
				DC = FALSE;
				INTCONbits.RBIE = 0;
			//	INTCONbits.PEIE = 0; 	 //Disable all Low Priority Interrupts
			//	INTCONbits.GIE = 0; 
				RS = 0;
				WriteLCD(0xC0);
				LCDput_ch('M');
				LCDput_ch('o');
				LCDput_ch('v');
				LCDput_ch('i');
				LCDput_ch('e');
				LCDput_ch(' ');
				LCDput_ch('G');
				LCDput_ch('a');
				LCDput_ch('t');
				LCDput_ch('e');
					INTCONbits.RBIE = 1;
			//	INTCONbits.PEIE = 1; 	 //Enable all Low Priority Interrupts
			//	INTCONbits.GIE = 1;      //Enable High Priority Interrupts
				}
			


			
			if (count1 == 10U)
				{
				INTCONbits.PEIE = 0; 	 //Disable all Low Priority Interrupts
				INTCONbits.GIE = 0; 

				if (Program == '2')
					{
					ADC_Voltage();
					}
				if (Program == '3')
					{
					ADC_BaseCurrent();
					}
				if (Program == '4')
					{
					ADC_Current();
					}
				count1 = 0;
				INTCONbits.PEIE = 1; 	 //Enable all Low Priority Interrupts
				INTCONbits.GIE = 1;      //Enable High Priority Interrupts
				}
			else 
				{

				count1++;
				}
		
			}
		if (MovieGate_Switch == 1 && MG == TRUE)
			{
			INTCONbits.PEIE = 0; 	 //Disable all Low Priority Interrupts
			INTCONbits.GIE = 0; 
			MG = FALSE;
			WriteLCD(0xC0);
			LCDput_ch(' ');
			LCDput_ch(' ');
			LCDput_ch(' ');
			LCDput_ch(' ');
			LCDput_ch(' ');
			LCDput_ch(' ');
			LCDput_ch(' ');
			LCDput_ch(' ');
			LCDput_ch(' ');
			LCDput_ch(' ');
			INTCONbits.PEIE = 1; 	 //Enable all Low Priority Interrupts
			INTCONbits.GIE = 1;      //Enable High Priority Interrupts

			}

		}
	else
		{
		count++;
		}
*/
      //  ProcessIO();        
    }//end while
}//end main


/********************************************************************
 * Function:        static void InitializeSystem(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        InitializeSystem is a centralize initialization
 *                  routine. All required USB initialization routines
 *                  are called from here.
 *
 *                  User application initialization routine should
 *                  also be called from here.                  
 *
 * Note:            None
 *******************************************************************/
void InitializeSystem(void)
{
   		//CONFIG3H.PBADEN = 0; //Disable PortB A/D 
		TRISAbits.TRISA0=1; //Analog Input
		TRISAbits.TRISA1=1;
		TRISAbits.TRISA2=1;
		TRISAbits.TRISA3=1; //Analog Input
		TRISAbits.TRISA4=1;
		TRISAbits.TRISA5=1;
       	ADCON0bits.ADON = 0; //Disable A/D Module
		ADCON0bits.CHS0 = 0; //Select Channel 0 (AN0)
		ADCON0bits.CHS1 = 0;
		ADCON0bits.CHS2 = 0;
		ADCON0bits.CHS3 = 0;


		ADCON1bits.VCFG1 = 0;//VSS
		ADCON1bits.VCFG0 = 0;//VDD
		ADCON1bits.PCFG0 = 0;//SET AN0, AN1, AN2, AN3, AN4, AN5 as analog
		ADCON1bits.PCFG1 = 0;//rest are digital
		ADCON1bits.PCFG2 = 0;
		ADCON1bits.PCFG3 = 1;


		ADCON2bits.ADFM = 0;//Left Justified
		ADCON2bits.ACQT0 = 1;// Aquisition time
		ADCON2bits.ACQT1 = 0;//4 tad
		ADCON2bits.ACQT2 = 0;
		ADCON2bits.ADCS0 = 0;// A/D Conversion Clock
		ADCON2bits.ADCS1 = 1;
		ADCON2bits.ADCS2 = 1;                 
    

   
    
//	If the host PC sends a GetStatus (device) request, the firmware must respond
//	and let the host know if the USB peripheral device is currently bus powered
//	or self powered.  See chapter 9 in the official USB specifications for details
//	regarding this request.  If the peripheral device is capable of being both
//	self and bus powered, it should not return a hard coded value for this request.
//	Instead, firmware should check if it is currently self or bus powered, and
//	respond accordingly.  If the hardware has been configured like demonstrated
//	on the PICDEM FS USB Demo Board, an I/O pin can be polled to determine the
//	currently selected power source.  On the PICDEM FS USB Demo Board, "RA2" 
//	is used for	this purpose.  If using this feature, make sure "USE_SELF_POWER_SENSE_IO"
//	has been defined in HardwareProfile.h, and that an appropriate I/O pin has been mapped
//	to it in HardwareProfile.h.
    #if defined(USE_SELF_POWER_SENSE_IO)
    tris_self_power = INPUT_PIN;	// See HardwareProfile.h
    #endif
    
    USBDeviceInit();	//usb_device.c.  Initializes USB module SFRs and firmware
    					//variables to known states.
    UserInit();

}//end InitializeSystem



/******************************************************************************
 * Function:        void UserInit(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine should take care of all of the demo code
 *                  initialization that is required.
 *
 * Note:            
 *
 *****************************************************************************/
void UserInit(void)
{
    stringPrinted = TRUE;
    //Initialize all of the LED pins



	


	//Turn on Timer and set overflow to low priority
	T0CONbits.TMR0ON = 1; // turn timer 1 on
	T0CONbits.T08BIT = 0; //16 bit counter
	T0CONbits.T0CS = 0; //Clock as counter
	T0CONbits.PSA = 0; // prescale enable
	T0CONbits.T0PS2 = 1; //prescale = 128
	T0CONbits.T0PS1 = 1;
	T0CONbits.T0PS0 = 0;

	INTCONbits.TMR0IF = 0; // clear timer interrupt flag
	INTCONbits.TMR0IE = 1; //enable timer overflow bit
	INTCON2bits.TMR0IP = 1;//HIGH priority


	//Enable RB port change interrupt
	TRISB = 0b11111111; //All inputs
	INTCON2bits.RBPU = 0; // enable PORTB internal pullup
//	PIR1bits.RCIF = 0; //clear rb interupt
//	PORTB = 0b11111111; //pull up all inputs
	INTCONbits.RBIE = 1; //turn on port b interrupts	
	INTCON2bits.RBIP = 0; //Low Priority b interupts
	INTCONbits.INT0IE = 0;   //no external interrupts
	INTCON3bits.INT1IE = 0;
	INTCON3bits.INT2IE = 0;



	 


	mInitD();
	mInitE();
	mInitB(); 

	
	


}//end UserInit

/********************************************************************
 * Function:        void ProcessIO(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function is a place holder for other user
 *                  routines. It is a mixture of both USB and
 *                  non-USB tasks.
 *
 * Note:            None
 *******************************************************************/
void ProcessIO(void)
{   

	


    BYTE numBytesRead;
    //Blink the LEDs according to the USB device status

	
    BlinkUSBStatus();
    // User Application USB tasks
    if((USBDeviceState < CONFIGURED_STATE)||(USBSuspendControl==1)) return;

		if(mUSBUSARTIsTxTrfReady())           //If USB ready to transmit data
   		 {
		
		numBytesRead = getsUSBUSART(USB_Out_Buffer,64);
		if(numBytesRead != 0)
		{
			BYTE i;
	        
			for(i=0;i<numBytesRead;i++)
			{
				switch(USB_Out_Buffer[i])
				{
					case 0x0A:
						USB_In_Buffer[i] = USB_Out_Buffer[i];
						
						WriteUSART(USB_In_Buffer[i]);
						while(BusyUSART())
						{
						}
				//		Delay100TCYx(30);
					
						break;
					case 0x0D:                          //After carriage return check for response from simple step
						
						USB_In_Buffer[i] = USB_Out_Buffer[i];
						
						WriteUSART(USB_In_Buffer[i]);
						while(BusyUSART())
						{
						}
				//		Delay100TCYx(30);
						
					//	Delay100TCYx(200);
					//	LATDbits.LATD3 = ~LATDbits.LATD3;			
						break;
				    default:
						USB_In_Buffer[i] = USB_Out_Buffer[i];
					
						WriteUSART(USB_In_Buffer[i]);
						while(BusyUSART())
						{
						}
						
						break;
				}//end switch

			}// end if
			
		}//end if
	
	}//end if
    CDCTxService();
}		//end ProcessIO

/********************************************************************
 * Function:        void BlinkUSBStatus(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        BlinkUSBStatus turns on and off LEDs 
 *                  corresponding to the USB device state.
 *
 * Note:            mLED macros can be found in HardwareProfile.h
 *                  USBDeviceState is declared and updated in
 *                  usb_device.c.
 *******************************************************************/
static void BlinkUSBStatus(void)
{
    static WORD led_count=0;
    
    if(led_count == 0)led_count = 10000U;
    led_count--;

    #define mLED_Both_Off()         {mLED_1_Off();mLED_2_Off();}
    #define mLED_Both_On()          {mLED_1_On();mLED_2_On();}
    #define mLED_Only_1_On()        {mLED_1_On();mLED_2_Off();}
    #define mLED_Only_2_On()        {mLED_1_Off();mLED_2_On();}

    if(USBSuspendControl == 1)
    {
        if(led_count==0)
        {
            mLED_1_Toggle();
            mLED_2 = mLED_1;        // Both blink at the same time
        }//end if
    }
    else
    {
        if(USBDeviceState == DETACHED_STATE)
        {
            mLED_Both_Off();
        }
        else if(USBDeviceState == ATTACHED_STATE)
        {
            mLED_Both_On();
        }
        else if(USBDeviceState == POWERED_STATE)
        {
            mLED_Only_1_On();
        }
        else if(USBDeviceState == DEFAULT_STATE)
        {
            mLED_Only_2_On();
        }
        else if(USBDeviceState == ADDRESS_STATE)
        {
            if(led_count == 0)
            {
			
                mLED_1_Toggle();
                mLED_2_Off();
            }//end if
        }
        else if(USBDeviceState == CONFIGURED_STATE)
        {
            if(led_count==0)
            {
			//	scanx();
                mLED_1_Toggle();
                mLED_2 = !mLED_1;       // Alternate blink                
            }//end if
        }//end if(...)
    }//end if(UCONbits.SUSPND...)

}//end BlinkUSBStatus




// ******************************************************************************************************
// ************** USB Callback Functions ****************************************************************
// ******************************************************************************************************
// The USB firmware stack will call the callback functions USBCBxxx() in response to certain USB related
// events.  For example, if the host PC is powering down, it will stop sending out Start of Frame (SOF)
// packets to your device.  In response to this, all USB devices are supposed to decrease their power
// consumption from the USB Vbus to <2.5mA each.  The USB module detects this condition (which according
// to the USB specifications is 3+ms of no bus activity/SOF packets) and then calls the USBCBSuspend()
// function.  You should modify these callback functions to take appropriate actions for each of these
// conditions.  For example, in the USBCBSuspend(), you may wish to add code that will decrease power
// consumption from Vbus to <2.5mA (such as by clock switching, turning off LEDs, putting the
// microcontroller to sleep, etc.).  Then, in the USBCBWakeFromSuspend() function, you may then wish to
// add code that undoes the power saving things done in the USBCBSuspend() function.

// The USBCBSendResume() function is special, in that the USB stack will not automatically call this
// function.  This function is meant to be called from the application firmware instead.  See the
// additional comments near the function.

/******************************************************************************
 * Function:        void USBCBSuspend(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Call back that is invoked when a USB suspend is detected
 *
 * Note:            None
 *****************************************************************************/
void USBCBSuspend(void)
{
	//Example power saving code.  Insert appropriate code here for the desired
	//application behavior.  If the microcontroller will be put to sleep, a
	//process similar to that shown below may be used:
	
	//ConfigureIOPinsForLowPower();
	//SaveStateOfAllInterruptEnableBits();
	//DisableAllInterruptEnableBits();
	//EnableOnlyTheInterruptsWhichWillBeUsedToWakeTheMicro();	//should enable at least USBActivityIF as a wake source
	//Sleep();
	//RestoreStateOfAllPreviouslySavedInterruptEnableBits();	//Preferrably, this should be done in the USBCBWakeFromSuspend() function instead.
	//RestoreIOPinsToNormal();									//Preferrably, this should be done in the USBCBWakeFromSuspend() function instead.

	//IMPORTANT NOTE: Do not clear the USBActivityIF (ACTVIF) bit here.  This bit is 
	//cleared inside the usb_device.c file.  Clearing USBActivityIF here will cause 
	//things to not work as intended.	
	

    #if defined(__C30__)
    #if 0
        U1EIR = 0xFFFF;
        U1IR = 0xFFFF;
        U1OTGIR = 0xFFFF;
        IFS5bits.USB1IF = 0;
        IEC5bits.USB1IE = 1;
        U1OTGIEbits.ACTVIE = 1;
        U1OTGIRbits.ACTVIF = 1;
        TRISA &= 0xFF3F;
        LATAbits.LATA6 = 1;
        Sleep();
        LATAbits.LATA6 = 0;
    #endif
    #endif
}


/******************************************************************************
 * Function:        void _USB1Interrupt(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function is called when the USB interrupt bit is set
 *					In this example the interrupt is only used when the device
 *					goes to sleep when it receives a USB suspend command
 *
 * Note:            None
 *****************************************************************************/
#if 0
void __attribute__ ((interrupt)) _USB1Interrupt(void)
{
    #if !defined(self_powered)
        if(U1OTGIRbits.ACTVIF)
        {
            LATAbits.LATA7 = 1;
        
            IEC5bits.USB1IE = 0;
            U1OTGIEbits.ACTVIE = 0;
            IFS5bits.USB1IF = 0;
        
            //USBClearInterruptFlag(USBActivityIFReg,USBActivityIFBitNum);
            USBClearInterruptFlag(USBIdleIFReg,USBIdleIFBitNum);
            //USBSuspendControl = 0;
            LATAbits.LATA7 = 0;
        }
    #endif
}
#endif

/******************************************************************************
 * Function:        void USBCBWakeFromSuspend(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        The host may put USB peripheral devices in low power
 *					suspend mode (by "sending" 3+ms of idle).  Once in suspend
 *					mode, the host may wake the device back up by sending non-
 *					idle state signalling.
 *					
 *					This call back is invoked when a wakeup from USB suspend 
 *					is detected.
 *
 * Note:            None
 *****************************************************************************/
void USBCBWakeFromSuspend(void)
{
	// If clock switching or other power savings measures were taken when
	// executing the USBCBSuspend() function, now would be a good time to
	// switch back to normal full power run mode conditions.  The host allows
	// a few milliseconds of wakeup time, after which the device must be 
	// fully back to normal, and capable of receiving and processing USB
	// packets.  In order to do this, the USB module must receive proper
	// clocking (IE: 48MHz clock must be available to SIE for full speed USB
	// operation).
}

/********************************************************************
 * Function:        void USBCB_SOF_Handler(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        The USB host sends out a SOF packet to full-speed
 *                  devices every 1 ms. This interrupt may be useful
 *                  for isochronous pipes. End designers should
 *                  implement callback routine as necessary.
 *
 * Note:            None
 *******************************************************************/
void USBCB_SOF_Handler(void)
{
    // No need to clear UIRbits.SOFIF to 0 here.
    // Callback caller is already doing that.
}

/*******************************************************************
 * Function:        void USBCBErrorHandler(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        The purpose of this callback is mainly for
 *                  debugging during development. Check UEIR to see
 *                  which error causes the interrupt.
 *
 * Note:            None
 *******************************************************************/
void USBCBErrorHandler(void)
{
    // No need to clear UEIR to 0 here.
    // Callback caller is already doing that.

	// Typically, user firmware does not need to do anything special
	// if a USB error occurs.  For example, if the host sends an OUT
	// packet to your device, but the packet gets corrupted (ex:
	// because of a bad connection, or the user unplugs the
	// USB cable during the transmission) this will typically set
	// one or more USB error interrupt flags.  Nothing specific
	// needs to be done however, since the SIE will automatically
	// send a "NAK" packet to the host.  In response to this, the
	// host will normally retry to send the packet again, and no
	// data loss occurs.  The system will typically recover
	// automatically, without the need for application firmware
	// intervention.
	
	// Nevertheless, this callback function is provided, such as
	// for debugging purposes.
}


/*******************************************************************
 * Function:        void USBCBCheckOtherReq(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        When SETUP packets arrive from the host, some
 * 					firmware must process the request and respond
 *					appropriately to fulfill the request.  Some of
 *					the SETUP packets will be for standard
 *					USB "chapter 9" (as in, fulfilling chapter 9 of
 *					the official USB specifications) requests, while
 *					others may be specific to the USB device class
 *					that is being implemented.  For example, a HID
 *					class device needs to be able to respond to
 *					"GET REPORT" type of requests.  This
 *					is not a standard USB chapter 9 request, and 
 *					therefore not handled by usb_device.c.  Instead
 *					this request should be handled by class specific 
 *					firmware, such as that contained in usb_function_hid.c.
 *
 * Note:            None
 *******************************************************************/
void USBCBCheckOtherReq(void)
{
    USBCheckCDCRequest();
}//end


/*******************************************************************
 * Function:        void USBCBStdSetDscHandler(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        The USBCBStdSetDscHandler() callback function is
 *					called when a SETUP, bRequest: SET_DESCRIPTOR request
 *					arrives.  Typically SET_DESCRIPTOR requests are
 *					not used in most applications, and it is
 *					optional to support this type of request.
 *
 * Note:            None
 *******************************************************************/
void USBCBStdSetDscHandler(void)
{
    // Must claim session ownership if supporting this request
}//end


/*******************************************************************
 * Function:        void USBCBInitEP(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function is called when the device becomes
 *                  initialized, which occurs after the host sends a
 * 					SET_CONFIGURATION (wValue not = 0) request.  This 
 *					callback function should initialize the endpoints 
 *					for the device's usage according to the current 
 *					configuration.
 *
 * Note:            None
 *******************************************************************/
void USBCBInitEP(void)
{
    CDCInitEP();
}

/********************************************************************
 * Function:        void USBCBSendResume(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        The USB specifications allow some types of USB
 * 					peripheral devices to wake up a host PC (such
 *					as if it is in a low power suspend to RAM state).
 *					This can be a very useful feature in some
 *					USB applications, such as an Infrared remote
 *					control	receiver.  If a user presses the "power"
 *					button on a remote control, it is nice that the
 *					IR receiver can detect this signalling, and then
 *					send a USB "command" to the PC to wake up.
 *					
 *					The USBCBSendResume() "callback" function is used
 *					to send this special USB signalling which wakes 
 *					up the PC.  This function may be called by
 *					application firmware to wake up the PC.  This
 *					function should only be called when:
 *					
 *					1.  The USB driver used on the host PC supports
 *						the remote wakeup capability.
 *					2.  The USB configuration descriptor indicates
 *						the device is remote wakeup capable in the
 *						bmAttributes field.
 *					3.  The USB host PC is currently sleeping,
 *						and has previously sent your device a SET 
 *						FEATURE setup packet which "armed" the
 *						remote wakeup capability.   
 *
 *					This callback should send a RESUME signal that
 *                  has the period of 1-15ms.
 *
 * Note:            Interrupt vs. Polling
 *                  -Primary clock
 *                  -Secondary clock ***** MAKE NOTES ABOUT THIS *******
 *                   > Can switch to primary first by calling USBCBWakeFromSuspend()
 
 *                  The modifiable section in this routine should be changed
 *                  to meet the application needs. Current implementation
 *                  temporary blocks other functions from executing for a
 *                  period of 1-13 ms depending on the core frequency.
 *
 *                  According to USB 2.0 specification section 7.1.7.7,
 *                  "The remote wakeup device must hold the resume signaling
 *                  for at lest 1 ms but for no more than 15 ms."
 *                  The idea here is to use a delay counter loop, using a
 *                  common value that would work over a wide range of core
 *                  frequencies.
 *                  That value selected is 1800. See table below:
 *                  ==========================================================
 *                  Core Freq(MHz)      MIP         RESUME Signal Period (ms)
 *                  ==========================================================
 *                      48              12          1.05
 *                       4              1           12.6
 *                  ==========================================================
 *                  * These timing could be incorrect when using code
 *                    optimization or extended instruction mode,
 *                    or when having other interrupts enabled.
 *                    Make sure to verify using the MPLAB SIM's Stopwatch
 *                    and verify the actual signal on an oscilloscope.
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
 * Function:        void USBCBEP0DataReceived(void)
 *
 * PreCondition:    ENABLE_EP0_DATA_RECEIVED_CALLBACK must be
 *                  defined already (in usb_config.h)
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function is called whenever a EP0 data
 *                  packet is received.  This gives the user (and
 *                  thus the various class examples a way to get
 *                  data that is received via the control endpoint.
 *                  This function needs to be used in conjunction
 *                  with the USBCBCheckOtherReq() function since 
 *                  the USBCBCheckOtherReq() function is the apps
 *                  method for getting the initial control transfer
 *                  before the data arrives.
 *
 * Note:            None
 *******************************************************************/
#if defined(ENABLE_EP0_DATA_RECEIVED_CALLBACK)
void USBCBEP0DataReceived(void)
{
}
#endif


/** EOF main.c *************************************************/
