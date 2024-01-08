
#include <stdio.h>

//Julabo must be set 
#define kJulaboOnDelay	3 //in seconds
#define kJulaboPresent	FALSE //TRUE //True indicates a Julabo is present
//Julabo and NL cannot both be present
//check  Neslab.h 
static char status1[36];

char JulaboInit(void);
char JulaboSetSetTemp (float value);
float JulaboGetSetTemp (void);
//float NLGetTemp (void);
char JulaboGetStatus (char mode);
//char SetPowerBit(float athenaTemp);
