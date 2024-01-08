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

#ifndef  THERMAL_COMMANDS_H    /* Guard against multiple inclusion */
#define THERMAL_COMMANDS_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */
#include <STDIO.h>
#include <string.h>
#include <stdlib.h>
#include <STDIO.h>
/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */


/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

typedef struct scmd{
    char value[8];
    char description[30];
    void (*func)(char *par);
    void *ptr;
    uint8_t option;
}SCMD;    
    

char parse_Thermal(char *command);
int ExampleFunction(int param1, int param2);


    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
