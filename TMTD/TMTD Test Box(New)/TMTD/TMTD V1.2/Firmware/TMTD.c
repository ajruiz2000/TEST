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
//#include "main.c"

static char rom MovieGate[33] = "   MOVIE GATE                   ";
static char rom MovieGateS[9] = "MG     ";
static char rom High[9] = "High    ";
static char rom Low[9] = "Low     ";
static char rom PulseMode[33] = "   Pulse Mode                 ";
static char rom PulseModeS[9] = "Pulse  ";
static char rom DCMode[33] = "    DC Mode                     ";
static char rom DCModeS[9] = "DC      ";

static rom char *(LCDCommands[9]);





void initTMTDCommands()
{
	LCDCommands[0] = &Low[0];
	LCDCommands[1] = &High[0];
	LCDCommands[2] = &MovieGateS[0];
	LCDCommands[3] = &MovieGate[0];
	LCDCommands[4] = &PulseModeS[0];
	LCDCommands[5] = &PulseMode[0];
	LCDCommands[6] = &DCModeS[0];
	LCDCommands[7] = &DCMode[0];



}

//returns MG State Low or High
int SetMGMode(unsigned int *a)
	{
	MG_Mode = 1;
	DC_Mode = 0;
	Pulse_Mode = 0;
	CSA = 0xC0 + DisplayVersion*8;
	*a = 60848;
	LCDput_ROMstr(LCDCommands[(2+DisplayVersion)], DisplayVersion, 0x80);
	if (DisplayVersion ==1)
		{
		LCDput_ROMstr(LCDCommands[MovieGateState], DisplayVersion, 0xC0);
		}
//	MovieGateStateOld = MovieGateState;		
	Control_BIT = MovieGateState;

 return MovieGateState;
	}


int SetDCMode(unsigned int *a)
{
	MG_Mode = 0;
	DC_Mode = 1;
	Pulse_Mode = 0;
	CSA = 0xC0 + DisplayVersion*5;
	mLED_3_On();
	Control_BIT_On();
	LCDput_ROMstr(LCDCommands[(6+DisplayVersion)], DisplayVersion, 0x80);
	*a = 60848;



}


int SetPulseMode()
{
	DC_Mode = 0;
	MG_Mode = 0;
	Pulse_Mode = 1;
	LCDput_ROMstr(LCDCommands[(4+DisplayVersion)], DisplayVersion, 0x80);
//	AD_Value = SampleFrequencyAD();
//	frequency = SetFrequency(TimeDelayPointer, AD_ValuePointer);
//	AD_Value_Old = AD_Value;
//	x1 = 0;
}

int CheckMGState(int a)
{
if (a != MovieGateState)
	{
	if (DisplayVersion ==1)
		{
		LCDput_ROMstr(LCDCommands[MovieGateState], DisplayVersion, 0xC0);
		}
	Control_BIT= MovieGateState;
	}
return MovieGateState;	
}