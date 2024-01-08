/*

*/
//Athena must be set to 9600-1N8, ID = 01

#define stageThreshold 100.0

#define kDefaultAthenaTemp 	35.0
#define kAthenaOnDelay		5 //in seconds
#define kAID1 '0'	//sets Athena ID bytes
#define kAID2 '1'	//assumes always fixed and same
#define Debug1 FALSE  //tracks internal athena communication and displays them on chiller serial port

#define kMaxWrite 14//max length of write array
#define kMaxRead 18 //max length of read array
#define kTempStep 0.1 // Athena resolution
static int AthenaErrorFlag;
static float oldAthenaSetTemp;
int newTempSet;

char AthenaInit(void);
void AthenaProcessExternal(char data[]);
char AthenaSetSetTemp (float value);
float AthenaGetSetTemp (void);
float AthenaGetTemp (void);
char AthenaGetStatus (void);


char SetNLPower(float);
char SetJulaboPower(float);
char SetPowerBit(float);

