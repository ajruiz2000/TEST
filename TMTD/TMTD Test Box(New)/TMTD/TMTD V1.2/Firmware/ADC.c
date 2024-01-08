//ADC calculations
#include "LCD.h"
#include "main.h"
#include <stdlib.h>
#include "HardwareProfile.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include <string.h>
#include <STDIO.h>
#include "ini.h"
#include "math.h"
#include "LCD.h"
#include "ADC.h"


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
	
int SetFrequency(unsigned int *TimeDelay1, int *AD_Value1)
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
		if (i ==49)
			{
			i=999;
			}
	
	
	//Write Frequency to LCD
		if (DisplayVersion == 0)
			{
			x5 = sprintf(String, (const far rom char*)"%01iHz",(i+1));
			LCDput_str(String, DisplayVersion, 0xC0);
			
			}
		else
			{
			x5 = sprintf(String,(const far rom char*) "      %01iHz      ",(i+1));
			LCDput_str(String, DisplayVersion, 0xC0);
		
			}
		
	return (i+1); 
	}


int SampleAD1()
{		
int HighAD;
int LowAD;
long TotalAD = 0;
	

	//	ADCON0bits.CHS0 = 1  ; //Select AN1 (0001)
	//	ADCON0bits.CHS1 = 0;
	//	ADCON0bits.CHS2 = 0;
	//	ADCON0bits.CHS3 = 0;


		ADCON0bits.CHS0 = 0  ; //Select AN4 (0004)
		ADCON0bits.CHS1 = 0;
		ADCON0bits.CHS2 = 1;
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
		return TotalAD;
}


double CalculateCurrent(int x)
	{
	double Current;
	double Resolution;
	double AD;
	Resolution = (5.0/1024.0);
	AD = ((double)x);


	Current = Resolution*AD;
	Current = Current * 2.0; //Change this number to global paramter
	return Current;

	}

char *ConvertCurrentString(double x)
	{
	int x1, x2, x3;
	static char CurrentString[16];
	char *ptr;

	//Convert double into two ints
	//Compiler doesn't handle sprintf with floaters :/
	x1 = ((int)x);
	x2 = ((int)((x*100) - 100*x1 ));
	x3 = sprintf(CurrentString,(const far rom char*) "%01i.%02iA      ",x1, x2);
	ptr = &CurrentString[0];


	return ptr;
	}