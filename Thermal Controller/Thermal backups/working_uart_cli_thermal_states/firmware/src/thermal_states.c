/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#include "thermal_states.h"
#include "D32.h"
#include "Athena.h"
#include "ini.h"
#include "app_main.h"
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>


uint8_t thermal_state = BOOT_STATE;
uint8_t temp_switch_status = 0;
uint8_t fluid_switch_status = 1;
uint8_t rst_switch_status = 0;






uint8_t thermal_state_machine(int char)
{
    uint8_t i = 0;
	switch (thermal_state){
		case BOOT_STATE:
			init_thermal_inputs();
            init_power_supply();
			init_thermal_leds();
			thermal_state = RUNNING;
			break;
		case RUNNING:
			temp_switch_status = check_temp_switch();
			if (temp_switch_status){
				thermal_state = OVERHEAT;	
			}
			fluid_switch_status =  check_fluid_switch();
			if (!fluid_switch_status){
				thermal_state = LOW_FLUID;	
			}
			break;
		case OVERHEAT:
			set_overheat_led();
            mLED_3_On();
			ShutDownStage();
			thermal_state = SHUT_DOWN;
			break;
		case LOW_FLUID:
			set_low_fluid_led();
			mLED_3_On();
            ShutDownStage();
			ShutDownFlow();
			thermal_state = SHUT_DOWN;
			break;
		case SHUT_DOWN:
			rst_switch_status = check_rst_switch();
			if (rst_switch_status){
                set_high_fluid_led();
				clr_overheat_led();
                mLED_3_Off();
				Restart1();
				thermal_state = RUNNING;	
			}
			break;
        default:
            break;
	}
     
     set_high_fluid_led();

}


int ExampleInterfaceFunction(int param1, int param2) {
    return 0;
}
/*
void set_high_fluid_led(void){
    FF_LED_Set();
}

void clr_high_fluid_led(void){
    FF_LED_Clear();
}

void set_low_fluid_led(void){   
    FL_LED_Set();
}

void clr_low_fluid_led(void){
    FL_LED_Clear();
}

void set_overheat_fluid_led(void){
    OH_LED_Set();
}

void clr_overheat_fluid_led(void){
    OH_LED_Clear();
}


void init_thermal_inputs(void){
    

}
void init_power_supply(void){


}
void init_thermal_leds(void){
    set_high_fluid_led();
    FL_LED_Clear();
    OH_LED_Clear();
    
}
*/





/* *****************************************************************************
 End of File
 */
