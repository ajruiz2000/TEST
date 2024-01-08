/*

*/

#include <plib.h>
#include "main.h"
#include "Athena.h"

#define kMDelay 100 //number milliseconds delay between steps


int UpDownInit(void)
{
	mPORTESetPinsDigitalIn(BIT_6|BIT_7); // Set E6 and E7 as inputs for up/down buttons
	mPORTESetPinsDigitalOut(BIT_1);
	return 0;
}


void ProcessUpDown(void)
{
	float temp;
	int delay = kMDelay * kmsec;
	int smallSteps = 0;
	int bigSteps = 0;
	float steps[] = {1.0, 5.0, 10.0, 50.0};
	
	if(!mPORTEReadBits(BIT_6))
	{
		temp = AthenaGetSetTemp();

		while(!mPORTEReadBits(BIT_6))//while the switch is pressed
		{
			temp -= steps[bigSteps] * kTempStep; //kTempStep defined in Athen.h
			AthenaSetSetTemp(temp);
			PORTToggleBits(IOPORT_E, BIT_1);;
			if((++smallSteps > 5) && bigSteps < 4) // do not let bigsteps get larger than array size
			{
				smallSteps = 0; //reset counter
				bigSteps++;
			}
		}
		return;
	}

	if(!mPORTEReadBits(BIT_7))
	{
		temp = AthenaGetSetTemp();

		while(!mPORTEReadBits(BIT_7))//while the switch is pressed
		{
			temp += steps[bigSteps] * kTempStep; //kTempStep defined in Athen.h
			AthenaSetSetTemp(temp);
			PORTToggleBits(IOPORT_E, BIT_1);;
			if((++smallSteps > 5) && bigSteps < 4) // do not let bigsteps get larger than array size
			{
				smallSteps = 0; //reset counter
				bigSteps++;
			}
		}
		return;
	}
}

