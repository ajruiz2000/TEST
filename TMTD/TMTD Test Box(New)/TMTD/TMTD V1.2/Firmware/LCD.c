
#include "LCD.h"
#include "HardwareProfile.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "delays.h"

void EnablePulse(void)
	{
	
	Enable = 1;
	Delay100TCYx(50); //wait at least 450ns
	Enable = 0;
	}


void initLCD(void)
	{
	Delay10KTCYx(200);
	Delay10KTCYx(200);
	Delay10KTCYx(200);	
	Delay10KTCYx(200);
	Delay10KTCYx(200);
	Delay10KTCYx(200);
	Delay10KTCYx(200);
	Delay10KTCYx(200);
	Delay10KTCYx(200);
	Delay10KTCYx(200);
	Delay10KTCYx(200);
	Delay10KTCYx(200);
	Delay10KTCYx(24); //LCD SCREEN to power up wait 20ms 240,000 cycles @ 48MHz
	Enable = 0;
	RS =0;
//	RW = 0;

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
	EnablePulse();
	
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
    Delay100TCYx(50);
	if(c & 0x08) DB7=1; else DB7=0;
	if(c & 0x04) DB6=1; else DB6=0;
	if(c & 0x02) DB5=1; else DB5=0;
	if(c & 0x01) DB4=1; else DB4=0;	
	EnablePulse();	
	Delay100TCYx(50);//fix delay
}

void LCDput_ch(char ch)
	{
	RS = 1;	// write characters
	WriteLCD(ch);
	RS = 0;

	}

//LCD write string 
//void LCDput_str(string, LCD types, starting adress)
// 1 = 16x2 display
// 0 = 16x1 diaplay
void LCDput_str(char *str, int a, unsigned char b)
	{
	
	int i=0;
	RS = 0;
	T0CONbits.TMR0ON = 0; //Timer Off
	WriteLCD(b); //Set position on LCD screen to 
	
	if (a == 1)
		{
//		RS = 0;
//		WriteLCD(b); //Set position on LCD screen to
		RS = 1;	// write characters	
		while(*str)
			{
			if (++b == 0x90) //Increment line
				{
				RS = 0;
				WriteLCD(0xC0);
				RS = 1;
				}
			WriteLCD(*str++);
			}
		RS = 0;
		}
	else
		{
		RS = 1;	// write characters	
		while(*str)
			{
			if (++b == 0x88) //Increment line
				{
				RS = 0;
				WriteLCD(0xC0);
				RS = 1;
				}
			WriteLCD(*str++);
			}
		RS = 0;
			}
	T0CONbits.TMR0ON = 1; //Timer On
	}


void ClearDisplay(int a)
	{
	int i, x1, x2, j;
	j =a*16+16;
	x1 = 0x80;
	x2 = (0x80 + (8+(a*8)));
	T0CONbits.TMR0ON = 0; //Timer Off
	RS = 0;	
	WriteLCD(x1); //Set position on LCD screen to 
	RS = 1;
	if (a==1)
		{
		for (i==0; i<j; i++)
			{
			x1++;
			if(x1==x2)
				{
				RS = 0;
				WriteLCD(x1); //Set position on LCD screen to
				RS = 1;
				}
			WriteLCD(' ');

			}

		}

	
	
	T0CONbits.TMR0ON = 1; //Timer On
	}




void LCDput_ROMstr(rom char *str, int a, unsigned char b)
	{
	
	int i=0;
	T0CONbits.TMR0ON = 0; //Timer Off
	RS = 0;
	WriteLCD(b); //Set position on LCD screen to 
	
	if (a == 1)
		{
//		RS = 0;
//		WriteLCD(b); //Set position on LCD screen to
		RS = 1;	// write characters	
		while(*str)
			{
			if (++b == 0x90) //Increment line
				{
				RS = 0;
				WriteLCD(0xC0);
				RS = 1;
				}
			WriteLCD(*str++);
			}
		RS = 0;
		}
	else
		{
		RS = 1;	// write characters	
		while(*str)
			{
			if (++b == 0x88) //Increment line
				{
				RS = 0;
				WriteLCD(0xC0);
				RS = 1;
				}
			WriteLCD(*str++);
			}
		RS = 0;
			}
	T0CONbits.TMR0ON = 1; //Timer On
	}





void LCDscroll_str(char *str)
	{
	int i;
	int n = 0;
	RS = 0;	// write characters	
	while(n < 45)
		{
						
			for (i = 0; i<=n; i++)
				{
				


				if (i == 0)
					{
					RS = 0;
					WriteLCD(0xC7);
					LCDput_ch((*(str+n)));
					}
				if (i == 1)
					{
					RS = 0;
					WriteLCD(0xC6);
					LCDput_ch((*(str + n - 1)));
					}
				if (i == 2)
					{
					RS = 0;
					WriteLCD(0xC5);
					LCDput_ch((*(str + n - 2)));
					}
				if (i == 3)
					{
					RS = 0;
					WriteLCD(0xC4);
					LCDput_ch((*(str + n - 3)));
					}
				if (i == 4)
					{
					RS = 0;
					WriteLCD(0xC3);
					LCDput_ch((*(str + n - 4)));
					}
				if (i == 5)
					{
					RS = 0;
					WriteLCD(0xC2);
					LCDput_ch((*(str + n - 5)));
					}
				if (i == 6)
					{
					RS = 0;
					WriteLCD(0xC1);
					LCDput_ch((*(str + n - 6)));
					}
				if (i == 7)
					{
					RS = 0;
					WriteLCD(0xC0);
					LCDput_ch((*(str + n - 7)));
					}

					if (i == 8)
					{
					RS = 0;
					WriteLCD(0x87);
					LCDput_ch((*(str+n-8)));
					}
				if (i == 9)
					{
					RS = 0;
					WriteLCD(0x86);
					LCDput_ch((*(str + n - 9)));
					}
				if (i == 10)
					{
					RS = 0;
					WriteLCD(0x85);
					LCDput_ch((*(str + n - 10)));
					}
				if (i == 11)
					{
					RS = 0;
					WriteLCD(0x84);
					LCDput_ch((*(str + n - 11)));
					}
				if (i == 12)
					{
					RS = 0;
					WriteLCD(0x83);
					LCDput_ch((*(str + n - 12)));
					}
				if (i == 13)
					{
					RS = 0;
					WriteLCD(0x82);
					LCDput_ch((*(str + n - 13)));
					}
				if (i == 14)
					{
					RS = 0;
					WriteLCD(0x81);
					LCDput_ch((*(str + n - 14)));
					}
				if (i == 15)
					{
					RS = 0;
					WriteLCD(0x80);
					LCDput_ch((*(str + n - 15)));
					}

				if (i == 16)
					{
					break;
					}

			}
	Delay10KTCYx((255 - 12*i));
	n++;
	}
}
