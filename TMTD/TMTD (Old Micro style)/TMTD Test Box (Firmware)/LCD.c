
#include "LCD.h"
#include "HardwareProfile.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "delays.h"

void EnablePulse(void)
	{
	
	Enable = 1;
	Delay10TCYx(50); //wait at least 450ns
	Enable = 0;
	}


void initLCD(void)
	{
	
	Delay10KTCYx(24); //LCD SCREEN to power up wait 20ms 240,000 cycles @ 48MHz
	Enable = 0;
	RS =0;
	RW = 0;

	DB4 = 1; DB5 = 1; DB6 = 0; DB7 = 0; // D7-D4 = 3hex
	EnablePulse(); // pulse enable to write
	Delay10KTCYx(6); //Wait 5ms for command write 60,000 cycles at 48MHz

	DB4 = 1; DB5 = 1; DB6 = 0; DB7 = 0; // D7-D4 = 3hex
	EnablePulse(); // pulse enable to write
	Delay1KTCYx(24); //Wait 200us  2400 cycles at 48MHz

	DB4 = 1; DB5 = 1; DB6 = 0; DB7 = 0; // D7-D4 = 3hex
	EnablePulse(); // pulse enable to write
	Delay1KTCYx(24); //Wait 200us  2400 cycles at 48MHz

	DB4 = 0; DB5 = 1; DB6 = 0; DB7 = 0; // D7-D4 = 3hex
	EnablePulse(); // pulse enable to write
	Delay10KTCYx(6); //Wait 5ms for command write 60,000 cycles at 48MHz

	WriteLCD(0x28);// 4 bit mode, 1/16 duty, 5x8 font, 1line
	WriteLCD(0x08);// display on
	WriteLCD(0x0C);// entry mode advance cursor
	WriteLCD(0x01);// clear display and reset cursor
    WriteLCD(0x06);
//	WriteLCD(0x80);
	
	
	}

void WriteLCD(unsigned char c)
{
	DB4 = 0;
	DB5 = 0;
	DB6 = 0;
	DB7 = 0;


	if(c & 0x80) DB7=1; else DB7=0;
	if(c & 0x40) DB6=1; else DB6=0;
	if(c & 0x20) DB5=1; else DB5=0;
	if(c & 0x10) DB4=1; else DB4=0;
	EnablePulse();
    Delay10KTCYx(6);
	if(c & 0x08) DB7=1; else DB7=0;
	if(c & 0x04) DB6=1; else DB6=0;
	if(c & 0x02) DB5=1; else DB5=0;
	if(c & 0x01) DB4=1; else DB4=0;	
	EnablePulse();	
	Delay10KTCYx(6);//fix delay
}

void LCDput_ch(char ch)
	{
	RS = 1;	// write characters
	WriteLCD(ch);
	RS = 0;

	}

void LCDput_str(char *str)
	{
	RS = 1;	// write characters	
	while(*str)
		{
		WriteLCD(*str++);
		}
	RS = 0;
	}