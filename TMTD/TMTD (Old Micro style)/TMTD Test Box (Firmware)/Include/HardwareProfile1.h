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




            #define DEMO_BOARD PICDEM_FS_USB
            #define PICDEM_FS_USB
            #define GetSystemClock()        48000000
       



/** TRIS ***********************************************************/
#define INPUT_PIN           1
#define OUTPUT_PIN          0

/** USB ************************************************************/

	
   #define PROGRAMMABLE_WITH_USB_HID_BOOTLOADER		//Uncomment this to make the output HEX of this project work with the HID Bootloader
   #define USB_BUS_SENSE       1                    
   #define self_power          1
    
    /** LED ************************************************************/
    #define mInitAllLEDs()      LATD &= 0x0000; TRISD &= 0x0000; //all LED outputs and low
    //8 LEDs on Joystick Board
    #define mLED_1              LATDbits.LATD0   //USB
    #define mLED_2              LATDbits.LATD1   //USB
    #define mLED_3              LATDbits.LATD2
    #define Focus_LED           LATDbits.LATD3  //Focus
	#define mLED_4		        LATDbits.LATD4
    #define LowSpeed_LED        LATDbits.LATD5  //Low Speed
    #define MedSpeed_LED        LATDbits.LATD6  //Med Speed
    #define HighSpeed_LED       LATDbits.LATD7  //High Speed


	#define LEDS_On()          	LATD = 0xFFFF;
    #define mLED_1_On()         mLED_1 = 1;
    #define mLED_2_On()         mLED_2 = 1;
    #define mLED_3_On()         mLED_3 = 1;
    #define mLED_4_On()         mLED_4 = 1;
	#define LowSpeed_LED_On()   LowSpeed_LED=1; MedSpeed_LED = 0; HighSpeed_LED = 0; 
	#define MedSpeed_LED_On()   LowSpeed_LED=0; MedSpeed_LED = 1; HighSpeed_LED = 0;    
	#define HighSpeed_LED_On()  LowSpeed_LED=0; MedSpeed_LED = 0; HighSpeed_LED = 1;
	#define Focus_LED_On()      Focus_LED = 1;


	#define LEDS_Off()          LATD = 0x0000;
    #define mLED_1_Off()        mLED_1 = 0;
    #define mLED_2_Off()        mLED_2 = 0;
    #define mLED_3_Off()        mLED_3 = 0;
    #define mLED_4_Off()        mLED_4 = 0;
	#define Focus_LED_Off()     Focus_LED = 0;
	
    
    #define mLED_1_Toggle()     mLED_1 = !mLED_1;
    #define mLED_2_Toggle()     mLED_2 = !mLED_2;
    #define mLED_3_Toggle()     mLED_3 = !mLED_3;
    #define mLED_4_Toggle()     mLED_4 = !mLED_4;
	#define LowSpeed_LED_Toggle()    LowSpeed_LED =! LowSpeed_LED;     
    #define MedSpeed_LED_Toggle()    MedSpeed_LED =! MedSpeed_LED;     
    #define HighSpeed_LED_Toggle()   HighSpeed_LED =! HighSpeed_LED; 
	#define Focus_LED_Toggle()       Focus_LED =! Focus_LED; 

    

	
	
    /** SWITCH *********************************************************/
   
    #define mInitAllSwitches()  TRISB = 0xFFFF;   //All inputs
    #define mInitSwitch2()      TRISBbits.TRISB4=1;   //Switch used for Bootloader
    #define mInitSwitch3()      TRISBbits.TRISB5=1;
 	#define mInitLowSpeedSwitch() 	TRISBbits.TRISB0 = 1; // low speed input
    #define mInitMedSpeedSwitch()   TRISBbits.TRISB1 = 1; // med speed input
	#define mInitHighSpeedSwitch()  TRISBbits.TRISB2 = 1; // high speed input
 




	#define Low_Speed PORTBbits.RB0
	#define Med_Speed PORTBbits.RB1
	#define High_Speed PORTBbits.RB2
	#define Focus_button PORTBbits.RB3
    
  


	#define UART_TRISTx   TRISBbits.TRISB7
	#define UART_TRISRx   TRISBbits.TRISB5
	#define UART_Tx       PORTBbits.RB7
	#define UART_Rx       PORTBbits.RB5
	#define UART_TRISRTS  TRISBbits.TRISB4
	#define UART_RTS      PORTBbits.RB4
	#define UART_TRISDTR  TRISBbits.TRISB6
	#define UART_DTR      PORTBbits.RB6
    #define UART_ENABLE RCSTAbits.SPEN

    #define UART_SEND_BREAK() 	{   \
                                    TXSTAbits.SENDB = 1;\
                                    TXSTAbits.TXEN = 1;\
                                    TXREG = 0x00;\
                                }



#define TRUE 1
#define FALSE 0




#endif  //HARDWARE_PROFILE_H
