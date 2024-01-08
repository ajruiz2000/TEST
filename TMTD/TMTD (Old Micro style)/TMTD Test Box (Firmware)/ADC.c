//ADC calculations
# include "LCD.h"
#include <stdlib.h>
#include "HardwareProfile.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include <string.h>
#include <STDIO.h>


int Output_Voltage1;
int Output_Voltage2;
int Output_Voltage;
int x;
int x1;
int aaa;
static char test1[16];
float Resolution;
float Output_Voltage_Float;
float Output_Voltage_Float1;
float Output_Voltage_Float2;
float Output_Voltage_Float3;

void ADC_BaseCurrent(void)
	{
		Delay1KTCYx(10);
		Resolution = 10.2/1024.0;//1024.00;
				//100ohm sense resistor gain of 4.7
				ADCON0bits.CHS0 = 1; //Select AN1 (0001) or AN3 (0011)
				ADCON0bits.CHS1 = 0;
				ADCON0bits.CHS2 = 0;
				ADCON0bits.CHS3 = 0;	
				ADCON0bits.ADON = 1; //Enable A/D
				ADCON0bits.GO_DONE = 1;  // start A/D
				while (ADCON0bits.GO_DONE == 1) //wait till a/d finished
					{
					}
				ADCON0bits.ADON = 0; //Disable A/D
				Output_Voltage1 = ADRESH;
				Output_Voltage1 = Output_Voltage1*4;
				Output_Voltage2 = ADRESL;
				Output_Voltage2 = Output_Voltage2/64;
				Output_Voltage = Output_Voltage1 + Output_Voltage2;
		
				Output_Voltage_Float = Output_Voltage*Resolution;
				x = ((int)Output_Voltage_Float); 
   				x1 = ((int) ((Output_Voltage_Float-x)*100)); 

				if (x1<=9)
				{
				aaa = sprintf(test1, "%i.0%imA  ", x,x1);
				}	
	
				else
				{
				aaa = sprintf(test1, "%i.%imA  ", x,x1);
				}
			RS = 0;
			WriteLCD(0x8A);
			LCDput_str(test1);

			}

void ADC_Voltage(void)
{		
		Delay1KTCYx(10); // let cap charge
		ADCON0bits.CHS0 = 0; //Select AN0 (0000)
		ADCON0bits.CHS1 = 0;
		ADCON0bits.CHS2 = 0;
		ADCON0bits.CHS3 = 0;
		ADCON0bits.ADON = 1; //Enable A/D
		Delay1KTCYx(10);
		ADCON0bits.GO_DONE = 1;  // start A/D
		while (ADCON0bits.GO_DONE == 1) //wait till a/d finished
			{
			}
		ADCON0bits.ADON = 0; //Disable A/D
		Output_Voltage1 = ADRESH;
		Output_Voltage1 = Output_Voltage1*4;
		Output_Voltage2 = ADRESL;
		Output_Voltage2 = Output_Voltage2/64;
		Output_Voltage = Output_Voltage1 + Output_Voltage2;
		Resolution = 5.00/1024.00;
		Output_Voltage_Float = Output_Voltage*Resolution;

		x = ((int)Output_Voltage_Float); 
   		x1 = ((int) ((Output_Voltage_Float-x)*100)); 
		
		if (x1<=9)
			{
			aaa = sprintf(test1, "%i.0%iV  ", x,x1);
			}	
		else
			{
			aaa = sprintf(test1, "%i.%iV  ", x, x1);
			}
	
		RS = 0;	
		WriteLCD(0x8A);
		LCDput_str(test1);
		
}
	

void ADC_Current(void)
	{
	int i;
	

		Delay1KTCYx(10); // let cap charge
		Resolution = 8.50/1024.0;//1024.00;
				//.50ohm sense resistor .25ohm wire resistance
				//(5/1024)/.75
				ADCON0bits.CHS0 = 0; //Select AN2(0010) or AN4(0100)
				ADCON0bits.CHS1 = 1;
				ADCON0bits.CHS2 = 0;
				ADCON0bits.CHS3 = 0;	
				ADCON0bits.ADON = 1; //Enable A/D
				ADCON0bits.GO_DONE = 1;  // start A/D
				while (ADCON0bits.GO_DONE == 1) //wait till a/d finished
					{
					}
				ADCON0bits.ADON = 0; //Disable A/D
				Output_Voltage1 = ADRESH;
				Output_Voltage1 = Output_Voltage1*4;
				Output_Voltage2 = ADRESL;
				Output_Voltage2 = Output_Voltage2/64;
				Output_Voltage = Output_Voltage1 + Output_Voltage2;
		
		
				Output_Voltage_Float = Output_Voltage*Resolution;
		
				
	
				x = ((int)Output_Voltage_Float); 
   				x1 = ((int) ((Output_Voltage_Float-x)*100)); 
			
				if (x1 <= 9)
				{
				aaa = sprintf(test1, "%i.0%iA  ", x,x1);
				}	
	
				else
				{
				aaa = sprintf(test1, "%i.%iA  ", x,x1);
				}
			RS = 0;
			WriteLCD(0x8A);
			LCDput_str(test1);
		//	WriteLCD(0xC0);
		//	aaa = sprintf(test1, "%i+%i = %i  ", Output_Voltage1,Output_Voltage2,(Output_Voltage1 + Output_Voltage2));
		//	LCDput_str(test1);
			}