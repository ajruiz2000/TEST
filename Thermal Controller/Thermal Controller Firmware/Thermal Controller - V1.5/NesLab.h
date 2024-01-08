


#include <stdio.h>

//NesLabs must be set to 19200-1N8,  ID = 01
#define kNLOnDelay	10 //in seconds
#define kNLPresent	FALSE //TRUE //True indicates a NesLabs unit is present
#define kNLID1 0x00	//sets NesLab ID bytes
#define kNLID2 0x01	//assumes always fixed and same

char NLInit(void);
char NLSetSetTemp (float value);
float NLGetSetTemp (void);
float NLGetTemp (void);
char NLGetStatus (void);
char SetPowerBit(float athenaTemp);
