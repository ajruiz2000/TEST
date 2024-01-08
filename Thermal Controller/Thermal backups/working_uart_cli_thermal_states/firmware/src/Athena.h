/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _ATHENA_H    /* Guard against multiple inclusion */
#define _ATHENA_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */


/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

//Athena must be set to 9600-1N8, ID = 01

#define stageThreshold 100.0
#define kDefaultAthenaTemp 35.0

//#define kDefaultAthenaTemp 	35.0
#define kAthenaOnDelay		5 //in seconds
#define kErrorTemp       -500
#define kAID1 '0'	//sets Athena ID bytes
#define kAID2 '1'	//assumes always fixed and same

#define kMaxWrite 14//max length of write array
#define kMaxRead 18 //max length of read array
#define kTempStep 0.1 // Athena resolution
//static int AthenaErrorFlag;
static float oldAthenaSetTemp;
int newTempSet;

char AthenaInit(void);
void AthenaProcessExternal(char data[]);
extern char AthenaSetSetTemp (float value);
extern float AthenaGetSetTemp (void);
float AthenaGetTemp (void);
char AthenaGetStatus (void);
extern void thermal_state_machine(void);

char SetNLPower(float);
char SetJulaboPower(float);
char SetPowerBit(float);




#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
