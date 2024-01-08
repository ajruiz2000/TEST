/*******************************************************************************
  NesLabs Chiller Interface 'Object'

  Summary:
    This file contains the interface functions for NesLabs Chiller
    
  Description:
	Contains functions for setting and getting parameters from NesLabs Chiller
	via its serial port interface. Complete set of parameters is not implimented,
	only those related to 
	Set/Get set point temperature 
	Get actual temperature
	Get Status
	Status errors and comm errors are set as flags in global variable 'errorFlags'
	
*******************************************************************************/
/*******************************************************************************
FileName:       NesLab.c
Dependencies:   See includes, flag bits must be contained in 'errorFlags'
Processor:      PIC32MX

Complier:       Microchip MPLAB C32 v8.0 or higher
Company:        Quantum Focus Insturments, Corp.

Copyright © 2010  All rights reserved.
*******************************************************************************/

#include "NesLab.h"
#include "Errors.h"	//global error flag
#include "Main.h"
#include <plib.h>
#include "HardwareProfile.h"

#define kLead 0xCA

#define kQDSize 6
#define kSDSize 8
#define kRDSize 9
#define kStDSize 11
#define kOnOffSize 14
#define kCommandByte 3


//used to send queries to NesLab unit
union
{
	char array[kQDSize];
	struct
		{
			char ca;		//do not change programatically
			char ID1;	//do not change programatically
			char ID2;	//do not change programatically
			char command;
			char bytes;	//do not change programatically
			char cs;		
		}Bytes;
} nlQueryData;

union
{
	char array[kSDSize];
	struct
		{
			char ca;		//do not change programatically
			char ID1;	//do not change programatically
			char ID2;	//do not change programatically
			char command;
			char bytes;	//do not change programatically
			char data1;
			char data2;
			char cs;		
		}Bytes;
} nlSetData;

union
{
	char array[kRDSize];
	struct
		{
			char ca;
			char ID1;
			char ID2;
			char command;
			char bytes;
			char qb; 			//qualifer byte - indicates data precision
			char data1;
			char data2;
			char cs;		
		}Bytes;
}nlResData;


union
	{
	char array[kStDSize];
	struct
		{
		char ca;
		char ID1;
		char ID2;
		char command;
		char bytes;
		char data1; 
		char data2;
		char data3;
		char data4;
		char data5;
		char cs;		
		}Bytes;
	}nlStatusData;

union
	{
	char array[kOnOffSize];
	struct
		{
		char ca;
		char ID1;
		char ID2;
		char command;
		char bytes;
		char data1; 
		char data2;
		char data3;
		char data4;
		char data5;
		char data6;
		char data7;
		char data8;
		char cs;		
		}Bytes;
	}nlOnOffData;

union
	{
	short sInt;
	struct
		{
		char bottomByte;
		char topByte;
		}Bytes;
	}nlTemp;
		 


//Private Functions
char GetCheckSum(char array[], int size); 
char WriteNLArray(char array[], int size);
char ReadNLArray(char array[], int size);
float NLExtractTemp(char highByte, char lowByte, char qb);
char NLOn();

char NLClearReadBuffer(void);


/*******************************************************************************
>>> char NLInit(void) <<<
Performs necessary initialization functions - all modules must have one
Returns 0 if all is well
*******************************************************************************/
char NLInit(void)
{
	char error;
	int oldTime;


	

	if(!kNLPresent)
	{return 0;}
	//sets common bytes to 'fixed' values - do not change
	


	NesLabOn();



//	mPORTCSetPinsDigitalOut(kNesLabsDIO);
//	mPORTCSetBits(kNesLabsDIO); // Turn on NESLAB
//	LATCbits.LATC1 = 1;






	OpenTimer23(T2_ON|T2_SOURCE_INT|T2_PS_1_256|T2_32BIT_MODE_ON, 0xFFFFFFFF);
	oldTime = ReadTimer23();
	while(ReadTimer23() < (oldTime + 1 * ksec)) ; //wait for Athena to turn on
	CloseTimer23();
	//mPORTCClearBits(kNesLabsDIO);
	OpenUART1(UART_EN|UART_NO_PAR_8BIT|UART_1STOPBIT, UART_RX_ENABLE|UART_TX_ENABLE,259); //518
	nlQueryData.Bytes.ca = nlSetData.Bytes.ca = kLead;
	nlQueryData.Bytes.ID1 = nlSetData.Bytes.ID1 = kNLID1;
	nlQueryData.Bytes.ID2 = nlSetData.Bytes.ID2 = kNLID2;
	nlQueryData.Bytes.bytes = 0x00;
//	NLSetSetTemp(20.0);
	error =	NLOn();

	OpenTimer23(T2_ON|T2_SOURCE_INT|T2_PS_1_256|T2_32BIT_MODE_ON, 0xFFFFFFFF);
	oldTime = ReadTimer23();
	while(ReadTimer23() < (oldTime + kNLOnDelay * ksec)) ; //wait for Athena to turn on
	CloseTimer23();
	error = NLGetStatus();

	return error;
}


/*******************************************************************************
>>> char NLSetSetTemp(float value) <<<
Takes in desired set temperature
Converts to NesLabs command
Sends out over serial port
Sets setNLSetTemp flag if comm error
*******************************************************************************/
char NLSetSetTemp(float value)
{
	char checkSum;
	char error = 0;
	
	if(!kNLPresent)
	{return 0;}
	errorFlag.bits.setNLSetTemp = 0;	//reset NesLab SetTemp error
	nlTemp.sInt = (short) (10.0 * value); //NesLab has no decimal, xx.xyyy goes to xxx
	nlSetData.Bytes.command = 0xF0;
	nlSetData.Bytes.bytes = 0x02;
	nlSetData.Bytes.data1 = nlTemp.Bytes.topByte;
	nlSetData.Bytes.data2 = nlTemp.Bytes.bottomByte;
	checkSum = GetCheckSum(nlSetData.array, kSDSize);
	nlSetData.Bytes.cs = checkSum;
	//send out data

	WriteNLArray(nlSetData.array, kSDSize);
	error = ReadNLArray(nlResData.array, kRDSize);
	return error;
}


/*******************************************************************************
>>> float NLGetSetTemp(void) <<<
Queries NesLabs for set temperature, coverts response and returns same
A return of -500.0 indicates impossible temperature
*******************************************************************************/
float NLGetSetTemp(void)
{
	float value;
	
	if(!kNLPresent)
	{return 0.0;}
	errorFlag.bits.getNLSetTemp = 0;	//reset NesLab SetTemp error
	value = kErrorTemp; //indicates an error
	nlQueryData.Bytes.command = 0x70;
	nlQueryData.Bytes.cs = 0x8E;

	//send out query
	WriteNLArray(nlQueryData.array, kQDSize);
	if (ReadNLArray(nlResData.array, kRDSize)) //return is put into nlResData??
	{
		errorFlag.bits.getNLSetTemp = 1;	//set NesLab SetTemp error
		return value;
	}
	//extract temperture from response
	value = NLExtractTemp(nlResData.Bytes.data1, nlResData.Bytes.data2, nlResData.Bytes.qb);
	return value;
}


/*******************************************************************************
>>> float NLGetTemp(void) <<<
Queries NesLabs for actual temperature, coverts response and returns same
A return of -500.0 indicates impossible temperature
*******************************************************************************/
float NLGetTemp(void)
{
	float value;

	if(!kNLPresent)
	{return 0.0;}
	errorFlag.bits.getNLTemp = 0;	//reset NesLab SetTemp error
	value = kErrorTemp; //indicates an error
	nlQueryData.Bytes.command = 0x20;
	nlQueryData.Bytes.cs = 0xDE;
	nlSetData.Bytes.cs  = GetCheckSum(nlQueryData.array, kQDSize);
	//send out query
	WriteNLArray(nlQueryData.array, kQDSize);
	if (ReadNLArray(nlResData.array, kRDSize)) //return is put into nlResData??
	{
		errorFlag.bits.getNLTemp = 1;	//set NesLab SetTemp error
		return value;
	}


	//extract temperture from response
	value = NLExtractTemp(nlResData.Bytes.data1, nlResData.Bytes.data2, nlResData.Bytes.qb);
	return value;
}


/*******************************************************************************
>>> char NLGetStatus(void) <<<
Gets NesLabs Status condition - verious error flags, etc.
Checks for problems and returns 0 if none, 1 if any 
*******************************************************************************/
char NLGetStatus(void)
{
	float value;

	if(!kNLPresent)
	{return 0;}
	nlStatusData.Bytes.data1 = nlStatusData.Bytes.data2 = nlStatusData.Bytes.data3 = 0;
	errorFlag.bits.getNLStatus = 0;	//reset NesLab SetTemp error

	nlQueryData.Bytes.command = 0x09;
	nlQueryData.Bytes.cs = 0xF5;

	//send out query
	WriteNLArray(nlQueryData.array, kQDSize);
	if (ReadNLArray(nlStatusData.array, kStDSize)) //return is put into nlResData??
	{
		errorFlag.bits.getNLStatus = 1;	//set NesLab SetTemp error
		return 1;
	}
	
//check return errors - any none zero means a problem 
// 0x08 in data2 indicates no external sensor
	if(nlStatusData.Bytes.data1 || (nlStatusData.Bytes.data2 & (!0x08)) //ignore bit3 of data2 - no second sensor
		|| nlStatusData.Bytes.data3 || !(nlStatusData.Bytes.data4 & 0x08)) //only check bit 3 of data4 - unit On/Off
	{return 1;}
	return 0;
}

char NLOn()
	{
		nlOnOffData.Bytes.ca = kLead;
		nlOnOffData.Bytes.ID1 = kNLID1;
		nlOnOffData.Bytes.ID2 = kNLID2;
		nlOnOffData.Bytes.command = 0x81;
		nlOnOffData.Bytes.bytes = 0x08;
		nlOnOffData.Bytes.data1 = 0x01;
		nlOnOffData.Bytes.data2 = 0x02;
		nlOnOffData.Bytes.data3 = 0x02;
		nlOnOffData.Bytes.data4 = 0x02;
		nlOnOffData.Bytes.data5 = 0x02;
		nlOnOffData.Bytes.data6 = 0x02;
		nlOnOffData.Bytes.data7 = 0x02;
		nlOnOffData.Bytes.data8 = 0x02;
		nlOnOffData.Bytes.cs = GetCheckSum(nlOnOffData.array, kOnOffSize);
		WriteNLArray(nlOnOffData.array, kOnOffSize);
		nlOnOffData.Bytes.bytes = 0x00;
		return ReadNLArray(nlOnOffData.array, kOnOffSize);
	}

/*******************************************************************************
>>> char GetCheckSum(char array[], int size) <<<
Returns a check sum from input array based on NesLabs spec
*******************************************************************************/
char GetCheckSum(char array[], int size)
{
	int i;
	char cs = 0;

	for(i=1; i < (size-1); i++) //omit first and last values
	{
		cs += array[i]; //sum up cs - let it overflow
	}
	cs = cs ^ 0xFF; //invert for check sum
	return cs;
}

/*******************************************************************************
>>> float ExtractTemp(char highByte, char lowByte, char qb) <<<
Extracts temperture from 2 byte Neslabs format, turns it into a float and returns same
*******************************************************************************/
float NLExtractTemp(char highByte, char lowByte, char qb)
{
	float value;

	if(qb < 0x20)  //qb of x10 or x11 indicates one digit percison, x20 or x21 indicates two digits
	{value = ((float)(256 * highByte + lowByte))/10.0;}
	else
	{value = ((float)(256 * highByte + lowByte))/100.0;}
	return value;
}


/*******************************************************************************
>>> char WriteNLArray(char array[], char size) <<<
Writes input array out to Neslabs via serial port
Reads Neslabs response and places it into global nlResData
Returns 1 if errors and 0 if not
*******************************************************************************/
//currently a simulation - need serial functions
char WriteNLArray(char array[], int size)
{
	int i;
	
	NLClearReadBuffer();

	for(i=0; i<size; i++)
	{
	putcUART1(array[i]);
	}
	return 0;
}

char ReadNLArray(char array[], int size)
{
//	char maxBytes = kRDSize;
	char i;
//	char error;
	char cs;
//	char *cPointer;
	int count;
	char test = 0;//initialize as success

	
	OpenTimer45(T4_ON|T4_SOURCE_INT|T4_PS_1_256|T4_32BIT_MODE_ON, 0xFFFFFFFF);//used for time out error
	for(i=0; i<size; i++)
	{
		while((test = !DataRdyUART1()) && ((count = ReadTimer45()) < ksec)); //wait for data
		if(test) 
		{return 1;}// a time out occured
		array[i] = getcUART1();
		if((i == kCommandByte) && (array[kCommandByte] == 0x0F))
		{return 1;} //write error occured - !!!! MAY NEED TO CLEAR BUFFER
	}	
	CloseTimer45();//turn off timer - needed other places
	Wait(100); //wait ~ 100 msec so NesLabs does not get instruction overload
	//test check sum for valid return
	cs = GetCheckSum(array, size);
	if (array[size - 1] != cs)
	{return 1;}
	//if we get here, all is well
	return 0;
}



char NLClearReadBuffer(void)
{
	return 0;
}

