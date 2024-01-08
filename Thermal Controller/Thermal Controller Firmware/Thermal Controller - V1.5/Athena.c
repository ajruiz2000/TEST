/*`

*/

#include "Athena.h"
#include "NesLab.h"
#include "Julabo.h"
#include "Errors.h"
#include "Main.h"
//#include "ini.h"
//#include "delay.h"
#include <plib.h>
#include <STDIO.h>
#include <string.h>
#include <stdlib.h>
#include "HardwareProfile.h"
#include "Compiler.h"
#include "p32xxxx.h"
#include "p32mx460f512l.h"
#include "timer.h"

#define TIME_OUT 1 /// NEEDS TO BE DEFINED IN SERIAL COMM .H FILE

#define kLead '#'

//#define _TMR23 //added MPLABX for timer 23 initialize


#define kDataOffset 6 //start of data in Athena writes
//#define kErrorTemp -500.0 //non-physical temperature used as return error

//all non-Athena responses must be in Athena format \l'#' 'kID1' 'kID2' "text10" '\r\l'

char timeOutArray[] = {'\n', 'E', 'R', 'R', 'O', 'R', '_', 'T', 'O', '\r', '\n'};
char badIDArray[] = {'\n', 'E', 'R', 'R', 'O', 'R', '_', 'I', 'D', '\r', '\n'};
static int AthenaErrorFlag = 0;
//int lookUpTable [3][5] = 
//{
//{100, 50, 0, -50, -500},
//{50, 30, 10, -10, -10},
//{0, 0, 0, 1, 1}
//};

//structure to hold 'ini file' data with defaults and lookup tables
struct
{
	float defaultSetTemp;
	char tableLength;
	int *table;
}athenaLUData;

//hold onto previous set values in case reset is needed

int oldNLSetTemp;
int n =0;

//all writes to Athena are placed into athenaWriteData union, then WriteAthena() is called
//Bytes was added for code clarity
union
{
	char array[kMaxWrite];
	struct
	{
		char ps;
		char ID1;
		char ID2;
		char command;
		char param1;
		char param2;
		char data1; 
		char data2;
		char data3;
		char data4;
		char data5;
		char data6;
		char data7;
		char data8;	
	}Bytes;
}athenaWriteData;

//WriteAthena() reads Athena echo into athenaReadData union
//Bytes was added for code clarity
union
{
	char array[kMaxRead];
	struct
	{
		char lf;
		char ps;
		char ID1;
		char ID2;
		char command;
		char param1;
		char param2;
		char data1; 
		char data2;
		char data3;
		char data4;
		char data5;
		char data6;
		char data7;
		char data8;
		char data9;	
		char data10;	
		char data11;		
	}Bytes;
}athenaReadData;

char WriteAthena(void);
float AthenaExtractTemp(void);
void PlaceTemp(float);




/*******************************************************************************
>>> char AthenaInit(void) <<<
Performs necessary initialization functions - all modules must have one
Initializes Athena serial port
Loads NesLabs lookup array
Places 'constant' characters into athenaWriteData
Checks basic status
Sets default temperature

Returns 0 if all is well
*******************************************************************************/
char AthenaInit(void)
{
	if (Debug1 == TRUE)
	{
	OpenUART1(UART_EN|UART_NO_PAR_8BIT|UART_1STOPBIT, UART_RX_ENABLE|UART_TX_ENABLE,520);
	}
	char error;
	int oldTime;
        int temp = 0;

//Init Athena serial port here
//Load Athena-Neslabs temp table, default temp, etc. 
	
	athenaLUData.defaultSetTemp = kDefaultAthenaTemp;
	athenaLUData.tableLength = kLUTableLen;
	athenaLUData.table = &lookUpTable[0][0];
//	mPORTCSetPinsDigitalOut(kAthenaDIO);
//	mPORTCSetPinsDigitalOut(kPowerDIO);
//	mPORTCSetBits(kAthenaDIO); // Turn on Athena

	AthenaOn();
       // AthenaOff();

	//mPORTCSetBits(kPowerDIO); /// TEST !!!!!
	OpenTimer23(T2_ON|T2_SOURCE_INT|T2_PS_1_256|T2_32BIT_MODE_ON, 0xFFFFFFFF);
	oldTime = ReadTimer23();
	while((temp) < (oldTime + kAthenaOnDelay * ksec))
        {
        temp = ReadTimer23();//wait for Athena to turn on
        }
	CloseTimer23();
	//mPORTCClearBits(kPowerDIO);
	OpenUART2(UART_EN|UART_NO_PAR_8BIT|UART_1STOPBIT, UART_RX_ENABLE|UART_TX_ENABLE,520);
// make 518 more general
	athenaWriteData.Bytes.ps = kLead; // do not change programatically 
	athenaWriteData.Bytes.ID1 = kAID1;
	athenaWriteData.Bytes.ID2 = kAID2;
	if(AthenaGetStatus())
	{return 1;}
	Wait(200); // can't write too fast - should be able to remove this with Wait in Write NL
	if(AthenaSetSetTemp(athenaLUData.defaultSetTemp))
	{return 1;}
	oldAthenaSetTemp = athenaLUData.defaultSetTemp;

	if(SetNLPower(athenaLUData.defaultSetTemp))
	{return 1;}
	return 0;
}


/*******************************************************************************
>>> void AthenaProcessExternal(char data[]) <<<
Accepts string in appropriate Athena call format
data[] must be at least 16 chars in order to accept Athena Echo
If instruction is not a set 'Set Temperature' just passes through instruction 
and echos back response
Exception is if timeout occurs - send back "TO ERROR"
If instruction is a set 'Set Temperature' 
-- AthenaSetSetTemp is called
-- If call is good, appropriate NesLabs is set
-- If NesLabs fails, SetTemp is reset to original
-- If reset fails - report major system error
*******************************************************************************/
void AthenaProcessExternal(char data[])
{
	char error;
	char i;
	float temp;
	float stageTemp;
	
	if(data[1] != kAID1 || data[2] != kAID2)
	{
		for(i=0; i<kMaxWrite; i++)
		{data[i] = badIDArray[i];}
		return;
	}

	for (i=0; i<kMaxWrite; i++)
	{
		athenaWriteData.array[i] = data[i];
		//do not care if data is less than kMaxWrite as WriteAthena will catch \r
		//takes longer to process if() and junk at end is not important
	}
	error = WriteAthena();

	if (error == TIME_OUT)	//fill data with time out error and return
	{
		for(i=0; i<kMaxWrite; i++)
		{data[i] = timeOutArray[i];}
		return;
	}
	for(i=0; i<kMaxRead; i++)
	{
		data[i] = athenaReadData.array[i];
		if( i>0 && data[i] == '\n')
		{
			data[i+1] = '\0'; // make a string
			break;
		}
	}

	if ((toupper(athenaReadData.Bytes.command) == 'M' || toupper(athenaReadData.Bytes.command) == 'E')
		&& athenaReadData.Bytes.param1 == '0' && athenaReadData.Bytes.param2 == '1')
	//at this point Athena had a successful temperature setting
	{
		newTemp = AthenaExtractTemp();
		newTempSet++;
	//	if(SetNLPower(temp))
	//		{
	//		ShutDown1();
	//		}


	 
//	//	Wait(100);//wait 100ms

	//	oldAthenaSetTemp = newTemp+1;
		 // set powerbit and neslab very soon if ask for set temp every time we change will overload athena
		
//		stageTemp = AthenaGetTemp();
//		
//	
//	
//	
//		if(stageTemp >= stageThreshold)
//		{
//			if	(SetPowerBit(newTemp))
//			{
//				ShutDown1();
//			}
			
//		}
//		else
//		{

//		HighTempOff();
//		}
//
//

	
		//send back error and reset Athena temp?
		//Perhaps shut down Athena and NesLabs - at higher level?
	}
}

/*******************************************************************************
>>> char AthenaSetSetTemp(float value) <<<
Sets the Athena Set temperature according to 'value'
Puts correct values into athenaWriteData
Calls WriteAthena() to send out command and receive response into athenaReadData

Returns 0 if all is well
*******************************************************************************/
char AthenaSetSetTemp(float value)
{
	char error;

	athenaWriteData.Bytes.command = 'M';
	athenaWriteData.Bytes.param1 = '0';
	athenaWriteData.Bytes.param2 = '1';
	//athenaWriteData.Bytes.data1 = '\r';
	PlaceTemp(value);
	error = WriteAthena();
	if(error)
	{
		errorFlag.bits.setAthenaSetTemp = 1;
		return 1;
	}
	oldAthenaSetTemp = value;
	return 0;
}

/*******************************************************************************
>>> float AthenaGetSetTemp(void) <<<
Gets the Athena Set temperature according to 'value'
Puts correct values into athenaWriteData
Calls WriteAthena() to send out command and receive response into athenaReadData
Parses response to extract a temperature

Returns temperature or kErrorTemp if a problem occured
*******************************************************************************/
float AthenaGetSetTemp (void)
{
	char error;
	float value = kErrorTemp;

	athenaWriteData.Bytes.command = 'R';
	athenaWriteData.Bytes.param1 = '0';
	athenaWriteData.Bytes.param2 = '1';
	athenaWriteData.Bytes.data1 = '\r';
	error = WriteAthena();
	if(error)
	{
		errorFlag.bits.getAthenaSetTemp = 1;
		return value;
	}
	value = AthenaExtractTemp();
	return value;
}

/*******************************************************************************
>>> float AthenaSetSetTemp(void) <<<
Gets the Athena Set temperature according to 'value'
Puts correct values into athenaWriteData
Calls WriteAthena() to send out command and receive response into athenaReadData
Parses response to extract a temperature

Returns temperature or kErrorTemp if a problem occured
*******************************************************************************/
float AthenaGetTemp (void)
{
	char error;
	float value = kErrorTemp;

	athenaWriteData.Bytes.command = 'R';
	athenaWriteData.Bytes.param1 = '0';
	athenaWriteData.Bytes.param2 = '0';
	athenaWriteData.Bytes.data1 = '\r';
	error = WriteAthena();
	if(error)
	{
		
		errorFlag.bits.getAthenaSetTemp = 1;
		return value;
	}
	value = AthenaExtractTemp();
	return value;
}


/*******************************************************************************
>>> char AthenaGetStatus(void) <<<
Checks athena status - basically and echo test

Returns 0 if all is well
*******************************************************************************/
char AthenaGetStatus (void)
{
	char error;

	athenaWriteData.Bytes.command = 'R';
	athenaWriteData.Bytes.param1 = '9';
	athenaWriteData.Bytes.param2 = '\r';
	error = WriteAthena(); //catch timeout error
	if(error || athenaWriteData.Bytes.command != athenaReadData.Bytes.command) //test echo
	{
		//errorFlag.bits.getAthenaStatus = 1;
		if (AthenaErrorFlag == 0)
			{
			AthenaErrorFlag = 1;
			return 0;
			}
		else
			{
			errorFlag.bits.getAthenaStatus = 1;
			return 1;
			}
	}
	AthenaErrorFlag = 1;
	return 0;
}

/*******************************************************************************
>>> float AthenaExtractTemp(void) <<<
Extracts temperature from latest athenaReadData

Returns temperature or kErrorTemp if error
*******************************************************************************/
//look for '=' and then 'C', number is inbetween
float AthenaExtractTemp(void)
{
	char number[10];
	char i;
	char start = -1;
	char end = -1;
	float temperature = kErrorTemp;
	int erase;
	char erase1[16];

	for(i=0; i<kMaxRead; i++) //can end this sooner, but fast enough
	{
		//Depending on Athena Stage, delimiter might be space or =
		if((athenaReadData.array[i] == '-') || (athenaReadData.array[i] == ' '))
		{start = i;}
		if(athenaReadData.array[i] == 'C')
		{end = i;}
	}
	if(start == -1 || end == -1 || end < start)	//get out if something wrong
	{return temperature;}
	for(i=start; i<end; i++)
	{number[i-start] = athenaReadData.array[i];}
	number[end-start] = '\0'; // make a string

	temperature = atof(number);
	



	return temperature;
}

/*******************************************************************************
>>> void PlaceTemp(float data) <<<
Places 'data' as temperature into athenaWriteData
*******************************************************************************/
void PlaceTemp(float data)
{
	char number[10];
	char count;
	char i;

	if(data < 0.0)
	{count = sprintf(number, "%3.1f\r", data);}
	else //need a leading space for positive values
	{count = sprintf(number, " %3.1f\r", data);}
	for(i=0; i<count; i++)
	{athenaWriteData.array[i+kDataOffset] = number[i];}


}

/*******************************************************************************
>>> char WriteAthena(void) <<<
Writes data in athenaWriteData out serial port to Athena controller
Waits a suitable timeout for response
If response, writes same into athenaReadData

Returns 0 if all is well
*******************************************************************************/
//writes then gets return - fixed write/read format
char WriteAthena(void)
{
	char debugtest[10];
	char i;
	int test = 1;
	int count;
	
	if (U2STAbits.OERR == 1)
		{
		putcUART1('a');
		U2STAbits.OERR = 0;
		}


	//clear read input???
	for(i=0; i<kMaxWrite; i++)
	{
		putcUART2(athenaWriteData.array[i]);
		if (Debug1 == TRUE)
			{
			putcUART1(athenaWriteData.array[i]);
			}
		if(athenaWriteData.array[i] == '\r')
		{break;}
	}
	


	OpenTimer45(T4_ON|T4_SOURCE_INT|T4_PS_1_256|T4_32BIT_MODE_ON, 0xFFFFFFFF);//used for time out error	
	for(i=0; i<kMaxRead; i++)
	{
		while((test = !DataRdyUART2()) && ((count = ReadTimer45()) < 50000)); //wait for data
		if(test) 
			{
			if (Debug1 == TRUE)
				{
				putcUART1('T');
				putcUART1('I');
				putcUART1('M');
				putcUART1('E');
				putcUART1(' ');
				putcUART1('O');
				putcUART1('U');
				putcUART1('T');
				}
			CloseTimer45();
			//write timeout to EEPROM
			return 1;
			}// a time out occured
		athenaReadData.array[i] = getcUART2();
		if((i != 0) && (athenaReadData.array[i] == '\n'))
		{break;}
	}
	CloseTimer45();//turn off timer - needed other places
	if (Debug1 == TRUE) //WRITE COM BETWEEN ATHENA AND MICRO TO SERIAL PORT 2
		{
		
			for(i=0; i<20; i++)
			{
			putcUART1(athenaReadData.array[i]);
			if(athenaReadData.array[i] == '\r')
			{break;}
			}

			if (HighTempBit == 1)
			{		
			
				putcUART1('H');
				putcUART1('I');
				putcUART1('G');
				putcUART1('H');
				putcUART1(' ');
				putcUART1('T');
				putcUART1('E');
				putcUART1('M');
				putcUART1('P');
				putcUART1('\r');

				}
			else
				{
			
				putcUART1('L');
				putcUART1('O');
				putcUART1('W');
				putcUART1(' ');
				putcUART1('T');
				putcUART1('E');
				putcUART1('M');
				putcUART1('P');
				putcUART1('\r');

				}
		//	n++;
			
		}



//	test = getsUART2(kMaxRead , athenaReadData.array, 32000);
//	Wait(75); //wait ~ 100 msec so Athena does not get instruction overload
	Wait(1);
	return 0;
	//need a return 1 for TO error

}

char SetNLPower(float athenaTemp)
{
	int i;
	char error = 0;
	int test;

	if(!kNLPresent)
	{return error;}

	for(i=0; i<athenaLUData.tableLength; i++)
	{
		if(athenaTemp >= *(athenaLUData.table + i))
		{
			error = NLSetSetTemp(*(athenaLUData.table + athenaLUData.tableLength + i));
			return error;
		}
	}
	return error;
}

char SetJulaboPower(float athenaTemp)
{
	int i;
	char error = 0;
	int test;
	char test1[16];

	if(!kJulaboPresent)
	{return error;}
	
//	test = sprintf(test1, "\r%f\r", athenaTemp);
//	WriteToJulabo(test1, test);	

	for(i=0; i<athenaLUData.tableLength; i++)
	{
		if(athenaTemp >= *(athenaLUData.table + i))
		{
			error = JulaboSetSetTemp(*(athenaLUData.table + athenaLUData.tableLength + i));
			error = 0;
			return error;
		}
	}
	return error;
}







char SetPowerBit(float athenaTemp)
{
	int i;
	char error = 0;
//	int test;
//	float anthonyTemp;

	
	//anthonyTemp = AthenaGetSetTemp();
	
	for(i=0; i<athenaLUData.tableLength; i++)
	{
		if(athenaTemp >= *(athenaLUData.table + i))
		{
			//error = NLSetSetTemp(*(athenaLUData.table + athenaLUData.tableLength + i));
		
			if(!(*(athenaLUData.table + 2*athenaLUData.tableLength + i)))
				{
			
				HighTempOff();
				
				
			//PORTCClearBits(kPowerDIO);
				}
			else
				{
			//PORTCSetBits(kPowerDIO);
				
				HighTempOn();
				
				}
			//Set range bit *(athenaLUData.table + 2*athenaLUData.tableLength + i
			return error;
				
		}
//	return error;
	}
	return error;
}
