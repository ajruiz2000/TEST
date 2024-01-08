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

#ifndef _INI_H    /* Guard against multiple inclusion */
#define _INI_H


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

    
#define kLUTableLen 25
#define ThermalStage2_5 //Valid types 2.5 or 4


static int lookUpTable [3][kLUTableLen] =
{
{190, 180, 170, 160, 150, 140, 130, 120, 110, 100, 90, 80, 
70, 60, 50, 40, 30, 25, 10, 0, -10, -20, -30, -40, -500}, //Athena Temps
{20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20, 20,
20, 20, 20, 20, 20, 20, 15, 0, -5,  -10, -15, -20, -20 }, //NesLabs Temps
{1,   1,   1,   1,   1,   1,  1,  1,   1,   0,   0,  0,
0,  0,  0,  0,  0,  0,  0,  0, 0,   0,   0,   0,   0,  }  //Power DIO - 1 is ON
};


    /* ************************************************************************** */
    /* ************************************************************************** */
    /* Section: Constants                                                         */
    /* ************************************************************************** */
    /* ************************************************************************** */

    /*  A brief description of a section can be given directly below the section
        banner.
     */


    /* ************************************************************************** */

    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _INI_H */

/* *****************************************************************************
 End of File
 */
