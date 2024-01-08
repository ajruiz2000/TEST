/********************************************************************
 FileName:     	HardwareProfile.h
 Dependencies:	See INCLUDES section
 Processor:		PIC18 or PIC24 USB Microcontrollers
 Hardware:		The code is natively intended to be used on the following
 				hardware platforms: PICDEM™ FS USB Demo Board, 
 				PIC18F87J50 FS USB Plug-In Module, or
 				Explorer 16 + PIC24 USB PIM.  The firmware may be
 				modified for use on other USB platforms by editing this
 				file (HardwareProfile.h).
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

#ifndef HARDWARE_PROFILE_H
#define HARDWARE_PROFILE_H

//#define DEMO_BOARD USER_DEFINED_BOARD


            #define DEMO_BOARD PICDEM_FS_USB
            #define PICDEM_FS_USB
            #define GetSystemClock()        48000000
        


//#define ENABLE_CONSOLE

/** TRIS ***********************************************************/
#define INPUT_PIN           1
#define OUTPUT_PIN          0

/** USB ************************************************************/

	//The PICDEM FS USB Demo Board platform supports the USE_SELF_POWER_SENSE_IO
	//and USE_USB_BUS_SENSE_IO features.  Uncomment the below line(s) if
	//it is desireable to use one or both of the features.
	//#define USE_SELF_POWER_SENSE_IO	
	//#define USE_USB_BUS_SENSE_IO

	//#define PROGRAMMABLE_WITH_USB_MCHPUSB_BOOTLOADER	//Uncomment this to make the output HEX of this project work with the MCHPUSB Bootloader
   #define PROGRAMMABLE_WITH_USB_HID_BOOTLOADER		//Uncomment this to make the output HEX of this project work with the HID Bootloader

 //   #define tris_usb_bus_sense  TRISAbits.TRISA1    // Input
    
  //  #if defined(USE_USB_BUS_SENSE_IO)
  //  #define USB_BUS_SENSE       PORTAbits.RA1
   // #else
    #define USB_BUS_SENSE       1
  //  #endif
    
   // #define tris_self_power     TRISAbits.TRISA2    // Input
    
  //  #if defined(USE_SELF_POWER_SENSE_IO)
  //  #define self_power          PORTAbits.RA2
  //  #else
    #define self_power          1
  //  #endif
    
    // External Transceiver Interface
   
    
    /** LED ************************************************************/
    #define mInitD()      LATD &= 0x0000; TRISD &= 0x0000;
    
    #define mLED_1              LATDbits.LATD0
    #define mLED_2              LATDbits.LATD1
    #define DB4                 LATDbits.LATD2
    #define DB5                 LATDbits.LATD3
	#define DB6                 LATDbits.LATD4
    #define DB7                 LATDbits.LATD5
    #define Enable              LATDbits.LATD6
    #define RW                  LATDbits.LATD7

	#define mInitE()  			LATE &= 0xb000; TRISE &= 0b000;
	#define RS              	LATEbits.LATE2
	#define mLED_3				LATEbits.LATE1
	#define mLED_4				LATEbits.LATE0



    
    #define mLED_1_On()         mLED_1 = 1;
    #define mLED_2_On()         mLED_2 = 1;
	#define mLED_3_On()         mLED_3 = 1;
    #define mLED_4_On()         mLED_4 = 1;
    #define mLED_1_Off()        mLED_1 = 0;
    #define mLED_2_Off()        mLED_2 = 0;
	#define mLED_3_Off()        mLED_3 = 0;
    #define mLED_4_Off()        mLED_4 = 0;
    #define mLED_1_Toggle()     mLED_1 = !mLED_1;
    #define mLED_2_Toggle()     mLED_2 = !mLED_2;
	#define mLED_3_Toggle()     mLED_3 = !mLED_3;
    #define mLED_4_Toggle()     mLED_4 = !mLED_4;

    
    

	#define mInitB()  TRISB = 0xFFFF;   //All inputs
    #define mInitSwitch2()      TRISBbits.TRISB4=1;   //Switch used for Bootloader
    #define mInitSwitch3()      TRISBbits.TRISB5=1;
 	#define mInitLowSpeedSwitch() 	TRISBbits.TRISB0 = 1; // low speed input
    #define mInitMedSpeedSwitch()   TRISBbits.TRISB1 = 1; // med speed input
	#define mInitHighSpeedSwitch()  TRISBbits.TRISB2 = 1; // high speed input
 




	#define Frequency_Switch PORTBbits.RB0
	#define Voltage_Switch PORTBbits.RB1
	#define Basecurrent_Switch PORTBbits.RB2
	#define Current_Switch PORTBbits.RB3
	#define BootLoader_Switch PORTBbits.RB4
    #define DC_Switch PORTBbits.RB5
	#define MovieGate_Switch PORTBbits.RB6
	#define Fivefivefive_Switch  PORTBbits.RB7
    
    
   








#endif  //HARDWARE_PROFILE_H
