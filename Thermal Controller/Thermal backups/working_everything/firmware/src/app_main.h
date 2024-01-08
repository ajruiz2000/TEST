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

#ifndef _APP_MAIN_H    /* Guard against multiple inclusion */
#define _APP_MAIN_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */



/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

  extern uint8_t glError;
  extern volatile uint32_t core_timer;
  extern volatile uint32_t system_timer;
  extern float newTemp;
  extern float switch_Temp;
  extern float switch_Hyst;
  extern uint16_t chiller_TimerMAX ;
  extern uint16_t thermal_mode;
  extern uint16_t FHT;
  extern uint16_t force_fan_on;
  extern uint16_t fanbounce_Time; //ms
  extern uint16_t min_fan_on_time; //seconds 
  extern uint16_t system_Poll;

  void init_thermal_controller(void);
  void AthenaOn(void);
  void process_thermal(void);
  void tick_core_timer(void);
  uint32_t get_core_timer(void);
  void clr_core_timer(void);
  void Wait(uint16_t wait_time);
  void ShutDown(void);
  void clr_system_timer(void); 


    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
