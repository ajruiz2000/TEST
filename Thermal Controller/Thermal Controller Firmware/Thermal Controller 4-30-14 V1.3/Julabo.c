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

#include "Julabo.h"
#include "Errors.h"	//global error flag
#include "Main.h"
#include <plib.h>
#include "HardwareProfile.h"
#include <string.h>
#include <STDIO.h>
#include <stdlib.h>



//Private Functions
void WriteToJulabo(char array[], int size);
//char WriteNLArray(char array[], int size);
char *ReadFromJulabo(void);
//float NLExtractTemp(char highByte, char lowByte, char qb);
//char NLOn();

//char NLClearReadBuffer(void);


/*******************************************************************************
>>> char NLInit(void) <<<
Performs necessary initialization functions - all modules must have one
Returns 0 if all is well
*******************************************************************************/
char JulaboInit(void)
{
	char StartJulabo[15] = "out_mode_05 1\r";
	int Julabo = 14;
	char error = 0;
	int oldTime;
	float setTemp;

	
//If no Julabo not present dont initialize and return
	if(!kJulaboPresent)
	{return 0;}
	
	//turn bit on
	JulaboOn();

	OpenTimer23(T2_ON|T2_SOURCE_INT|T2_PS_1_256|T2_32BIT_MODE_ON, 0xFFFFFFFF);
	oldTime = ReadTimer23();
	while(ReadTimer23() < (oldTime + 15 * ksec)) ; //wait for Chiller to turn on 30second delay
	CloseTimer23();
	
	//Establish Julabo Com
	OpenUART1(UART_EN|UART_NO_PAR_8BIT|UART_1STOPBIT, UART_RX_ENABLE|UART_TX_ENABLE,1036); //518
	Wait(250);
	error = JulaboGetStatus('2');

	if (error == 1)
		{
		return 1;
		}


	//Write command to Julabo to turn on/ put in computer mode
	WriteToJulabo(StartJulabo, Julabo);
	Wait(250);
	JulaboSetSetTemp(20.0);
	Wait(250);
	
	OpenTimer23(T2_ON|T2_SOURCE_INT|T2_PS_1_256|T2_32BIT_MODE_ON, 0xFFFFFFFF);
	oldTime = ReadTimer23();
	while(ReadTimer23() < (oldTime + kJulaboOnDelay * ksec)) ; //wait for Athena to turn on
	CloseTimer23();
	error = 0;
	return error;
}


/*******************************************************************************
>>> char NLSetSetTemp(float value) <<<
Takes in desired set temperature
Converts to NesLabs command
Sends out over serial port
Sets setNLSetTemp flag if comm error
*******************************************************************************/
char JulaboSetSetTemp(float value)
{
	char checkSum;
	char error = 0;
	int strlength;
	char JulaboTempCommand[16];
	float SetTemp;
	
	if(!kJulaboPresent)
	{return 0;}

	
	strlength = sprintf(JulaboTempCommand, "out_sp_00 %3.1f\r", value);

	WriteToJulabo(JulaboTempCommand, strlength);
	Wait(10);
	SetTemp = JulaboGetSetTemp();
//	Wait(250);
	
	


	
	//READ FROM TEMP FROM JULABO IF NOT right RETURN error 1
	return error;
}


void WriteToJulabo(char array[], int size)
	{
	int i;
//	putcUART1('\n');
//	Wait(50);//wait 25ms
//	putcUART1('\r');   ///clear command???
//	Wait(50);//wait 25ms
	for ( i=0; i <= size; i++)
		{
		Wait(5);//wait 25ms
		putcUART1(array[i]);
		if(array[i] == '\r') //just in case
			{
			break;
			}
		
		}

	
	}

///*******************************************************************************
//>>> float NLGetSetTemp(void) <<<
//Queries NesLabs for set temperature, coverts response and returns same
//A return of -500.0 indicates impossible temperature
//*******************************************************************************/
float JulaboGetSetTemp(void)
{
	float value;
	int i;
	int strlength = 9;
	char GetSetTempCommand[10] = "in_sp_00\r";
	char *ptr;
	
	
	if(!kJulaboPresent)
	{return 0.0;}
	
			//	WriteToJulabo(GetSetTempCommand, strlength);
			//Wait(250);
			//		ptr = ReadFromJulabo();
	
	//extract temp from Julabo command
//	for (i=0, i<=20; i++)
//		{
//		array[i] = *(ptr + i)
//		if (array[i] == 0x0D)
//			}		u
//			break;
//			}	
	//return temp atoi function
	
//		}
//	WriteToJulabo(ptr, 5);
	//function to read nfrom julabo and return set temp

	value = 1.0;
	return value;
	
}

char *ptr1;
static char status1[36];
char JulaboGetStatus(char mode)
{
	char i;
	float value;
	char Status[10] = "status\r";
	int strlength = 7;
	char *ptr2;

	if(!kJulaboPresent)
	{return 0;}
	
	WriteToJulabo(Status, strlength);
	
	ptr1 =	ReadFromJulabo();

	for (i=0; i<= 36; i++)//fill up string
		{
		status1[i] = (*(ptr1 + i));
		if (status1[i] == '\r' )
			{
			break;
			}
		}
	//call this on peridocally to see if Julabo is running
	
	if(mode == '3')
		{
		if ((status1[0] == '0') && (status1[1] == '3')) //Remote Start On...everything is fine return 0
			{
			return 0;
			}
		}
	//call this on start up to see if Julabo has been powered on
	if(mode == '2')
		{
		if((status1[0] == '0') && (status1[1] == '2'))
			{
			return 0;
			}
		}
//if we got here then there is an error return 1
	return 1;
}


char *ReadFromJulabo(void)
{

	char i;
	char cs;
	int count;
	char test = 0;//initialize as success
  	static char array[60];
	static char *ptr;
	
	
	OpenTimer45(T4_ON|T4_SOURCE_INT|T4_PS_1_256|T4_32BIT_MODE_ON, 0xFFFFFFFF);//used for time out error
	for(i=0; i<58; i++)
	{
		while((!DataRdyUART1()) && ((count = ReadTimer45()) < (ksec))); //wait for data
		 	{
		
			}
		if (DataRdyUART1() == 0)
			{
			i = sprintf(array, "timeout has occured\r\n\0");
			break;
			}

			
		array[i] = getcUART1();
		array[i] = (array[i] & 0x7F);
		if (array[i] == '\n')
			{
			//i++;
			break;
			}
		
	}	
	array[i+1] = '\0';
	CloseTimer45();//turn off timer - needed other places
	ptr = array;
	return ptr;
}

