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

#include "app.h"

#ifndef EEPROM_MAP_H    /* Guard against multiple inclusion */
#define EEPROM_MAP_H


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

    
 #define APP_FLASH_ADDRESS       (NVM_FLASH_START_ADDRESS + (NVM_FLASH_SIZE / 2))

 #define   kAthenaOnDelay_ADDR    APP_FLASH_ADDRESS
 #define   chiller_TimerMAX_ADDR  APP_FLASH_ADDRESS+4
 #define   system_Poll_ADDR       APP_FLASH_ADDRESS+8
 #define   min_fan_on_time_ADDR   APP_FLASH_ADDRESS+12
 #define   thermal_mode_ADDR      APP_FLASH_ADDRESS+16
 #define   fanbounce_Time_ADDR    APP_FLASH_ADDRESS+20
 #define   switch_Temp_ADDR       APP_FLASH_ADDRESS+24
 #define   switch_Hyst_ADDR       APP_FLASH_ADDRESS+28
 #define   kDefaultAthenaTemp_ADDR APP_FLASH_ADDRESS+32
 #define   dummy_address           APP_FLASH_ADDRESS+36

    typedef struct _example_struct_t {
        /* Describe structure member. */
        int some_number;

        /* Describe structure member. */
        bool some_flag;

    } example_struct_t;


    // *****************************************************************************
    // *****************************************************************************
    // Section: Interface Functions
    // *****************************************************************************
    // *****************************************************************************

    /*  A brief description of a section can be given directly below the section
        banner.
     */

    // *****************************************************************************
    /**
      @Function
        int ExampleFunctionName ( int param1, int param2 ) 

      @Summary
        Brief one-line description of the function.

      @Description
        Full description, explaining the purpose and usage of the function.
        <p>
        Additional description in consecutive paragraphs separated by HTML 
        paragraph breaks, as necessary.
        <p>
        Type "JavaDoc" in the "How Do I?" IDE toolbar for more information on tags.

      @Precondition
        List and describe any required preconditions. If there are no preconditions,
        enter "None."

      @Parameters
        @param param1 Describe the first parameter to the function.
    
        @param param2 Describe the second parameter to the function.

      @Returns
        List (if feasible) and describe the return values of the function.
        <ul>
          <li>1   Indicates an error occurred
          <li>0   Indicates an error did not occur
        </ul>

      @Remarks
        Describe any special behavior not described above.
        <p>
        Any additional remarks.

      @Example
        @code
        if(ExampleFunctionName(1, 2) == 0)
        {
            return 3;
        }
     */
    int ExampleFunction(int param1, int param2);


    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
