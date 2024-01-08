/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "app_main.h"
#include "thermal_states.h"
#include "EEPROM_MAP.h"



// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

void timeout_handler(uint32_t status, uintptr_t context)
{
	 tick_core_timer();
}


uint8_t consoleMsg[] = "Hello World\n\r";
volatile uint32_t test_num = 97;
volatile uint32_t test_num_read = 23;

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    
    CORETIMER_CallbackSet(&timeout_handler, (uintptr_t) NULL);
    CORETIMER_Start();
    

    init_NVM();
    
    load_variables();
    //do_thermal_states();
    thermal_state_machine();
    init_thermal_controller();
    
    
    //UART1_Write(&consoleMsg[0], sizeof(consoleMsg));

    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        process_thermal();
        thermal_state_machine();
        thermal_fan();
        SYS_Tasks ( );
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

