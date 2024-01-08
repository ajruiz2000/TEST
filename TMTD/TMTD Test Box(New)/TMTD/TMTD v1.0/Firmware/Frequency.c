#include "LCD.h"
#include <stdlib.h>
#include "HardwareProfile.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include <string.h>
#include <STDIO.h>


float CalculateFrequency(int a)
	{
	int range = 329; //set to make a/d range 336 - 684 from 7 to 355
					 //range of 50x for frequency 
	float frequency;
	float ProgramTime = .018;
	int range1;


	range1 = a - range;	
	frequency = range1 * ProgramTime;
	frequency = (1/frequency);
	

	return frequency;
	}
	
void WriteFrequency(float b)
	{
	int x;
	int x1;
	int x2;
	char frequency_string[];	

	x = ((int)b);
	x1 = ((int)(b*100));
	x2 = sprintf(frequency_string, "%i.%i Hz   ",x, x1);
	
	WriteLCD(0x84);
	RS = 0;	
	LCDput_str(frequency_string);
	}