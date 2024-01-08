//ADC calculations
#include "LCD.h"
//#include "main.h"
#include <stdlib.h>
#include "HardwareProfile.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include <string.h>
#include <STDIO.h>
#include "ini.h"
#include "math.h"


static char test1[16];



int SampleFrequencyAD()
{		
int HighAD;
int LowAD;
int TotalAD;	

		ADCON0bits.CHS0 = 0; //Select AN0 (0000)
		ADCON0bits.CHS1 = 0;
		ADCON0bits.CHS2 = 0;
		ADCON0bits.CHS3 = 0;
		ADCON0bits.ADON = 1; //Enable A/D

		ADCON0bits.GO_DONE = 1;  // start A/D
		while (ADCON0bits.GO_DONE == 1) //wait till a/d finished
			{
			}
		ADCON0bits.ADON = 0; //Disable A/D
		HighAD = ADRESH;
		HighAD = HighAD << 2;
		LowAD = ADRESL;
		LowAD = LowAD >> 6;

		TotalAD = HighAD + LowAD;

		// Limit 50 to 1000 for 20x frequency range
		if (TotalAD <= 50)
			{
			TotalAD = 49;
			}
		
		if (TotalAD >= 1000)
			{
			TotalAD = 999;
			}

		return TotalAD;
		
}
	
int SetFrequency(int *TimeDelay1, int *AD_Value1)
	{
	unsigned int x1, x2, x3, x4, x5, i;
	static char String[16];
	int *LookUpTablePointer;
	LookUpTablePointer = &FrequencyLookUpTable[0][0]; 


	//scroll through look up table to find were AD
	for(i=0; i<=49; i++)
		{
		if ((*(AD_Value1)) <= *(LookUpTablePointer+i))
			{
			*TimeDelay1 = *(LookUpTablePointer+i+50);
			x1 = *TimeDelay1;
			x2 = (*TimeDelay1) & (255);
			x3 = (((*TimeDelay1) >> 8) & (255));
			TMR0H = x3;
			TMR0L = x2;
			x4 = TMR0L;	
			break;
			}
		}
	
	
	//Write Frequency to LCD

	if (i < 9)
		{
		if (DisplayVersion == 0)
			{
			x5 = sprintf(String, "     %i.0Hz    ",(i+1));
			RS = 0;	
			WriteLCD(0x80);
			LCDput_str(String);
			WriteLCD(0xC0);
			x5 = sprintf(String, "Hz      ");
			LCDput_str(String);
			}
		else
			{
			WriteLCD(0x80);
			x5 = sprintf(String, "   Pulse Mode      ");
			LCDput_str(String);
			x5 = sprintf(String, "     %i.0Hz      ",(i+1));
			RS = 0;	
			WriteLCD(0xC0);
			LCDput_str(String);
			}
		}
	else
		{
		if (DisplayVersion == 0)
			{
			WriteLCD(0x80);
			LCDput_str(String);
			WriteLCD(0xC0);
			x5 = sprintf(String, "0Hz     ");
			LCDput_str(String);
			}
		else
			{
			WriteLCD(0x80);
			x5 = sprintf(String, "   Pulse Mode      ");
			LCDput_str(String);
			x5 = sprintf(String, "     %i.0Hz      ",(i+1));
			RS = 0;	
			WriteLCD(0xC0);
			LCDput_str(String);

			}
		}

	return 1.0;
	}


int SampleAD1()
{	
int x1,x2, x3, x4, x5;	
int HighAD;
int LowAD;
long TotalAD = 0;
long ADcount = 0;
float Resolution;
float Voltage;
float Voltage1 = 0.0;
char String[16];
Resolution = 5.0/1024.0;	

	//	ADCON0bits.CHS0 = 1  ; //Select AN1 (0001)
	//	ADCON0bits.CHS1 = 0;
	//	ADCON0bits.CHS2 = 0;
	//	ADCON0bits.CHS3 = 0;


		ADCON0bits.CHS0 = 0  ; //Select AN1 (0004)
		ADCON0bits.CHS1 = 0;
		ADCON0bits.CHS2 = 1;
		ADCON0bits.CHS3 = 0;


		
		ADCON0bits.ADON = 1; //Enable A/D
			 
		//Delay100TCYx(100);
		ADCON0bits.GO_DONE = 1;  // start A/D
		while (ADCON0bits.GO_DONE == 1) //wait till a/d finished
			{
			}
		ADCON0bits.ADON = 0; //Disable A/D
		HighAD = ADRESH;
		HighAD = HighAD << 2;
		LowAD = ADRESL;
		LowAD = LowAD >> 6;


		TotalAD = HighAD + LowAD;
		Voltage = TotalAD*Resolution*1.75;  //.6ohm   (2.02)

	
		
			
		
		
			x1 = ((int)Voltage);
			x2 = ((int)((Voltage*100) - 100*x1 ));
			if ( x2 < 10)
				{
				if (DisplayVersion == 0)
					{
					RS = 0;	
					WriteLCD(0x80);
					x3 = sprintf(String, "      %i.       ",x1, x2);
					LCDput_str(String);
					RS = 0;
					WriteLCD(0xC0);
					x5 = sprintf(String, "0%iA    ",x2);
					LCDput_str(String);
					}
				else
					{
					WriteLCD(0x80);
					x5 = sprintf(String, "    DC Mode      ");
					LCDput_str(String);
					WriteLCD(0xC0);
					x3 = sprintf(String, "      %i.0%i        ",x1, x2);
					LCDput_str(String);

					}
				}
			else
				{
				if (DisplayVersion == 0)
					{
					RS = 0;	
					WriteLCD(0x80);
					x3 = sprintf(String, "      %i.        ",x1, x2);
					LCDput_str(String);
					RS = 0;
					WriteLCD(0xC0);
					x5 = sprintf(String, "%iA    ",x2);
					LCDput_str(String);
					}
				else
					{
					WriteLCD(0x80);
					x5 = sprintf(String, "    DC Mode      ");
					LCDput_str(String);
					WriteLCD(0xC0);
					x3 = sprintf(String, "      %i.%i        ",x1, x2);
					LCDput_str(String);
					}
				}
		//	RS = 0;	
		//	WriteLCD(0x80);
		//	LCDput_str(String);
		
		//	x5 = sprintf(String, "    ");
		//	LCDput_str(String);
		
		return TotalAD;
}


void CalculateCurrent(int *AD_Value2)
	{
	int x1, x2, x3, x4;
	char String[16];
	float Voltage;
	float Current;

	float Resolution;
	Resolution = 5.0/1024.0;


	Voltage = Resolution* (*AD_Value2);
	Current = Voltage; //1ohm resistor
	x1 = ((int)Current);
	x2 = ((int)((Current*100) - 100*x1 ));
	x4 = ((int)((Current*10) - 10*x1 ));
	//Turn Frequency into String to write to LCD
	x3 = sprintf(String, "  %i.%i    ",x1, x2);
	RS = 0;	
	WriteLCD(0x80);
	LCDput_str(String);
	WriteLCD(0xC0);
	x3 = sprintf(String, "%iHz    ",x4);
	LCDput_str(String);


	}