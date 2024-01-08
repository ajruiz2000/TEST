
#include "app_main.h"
#include "D32.h"
#include "Athena.h"
#include "thermal_states.h"
#include "app.h"


int global_data;
uint8_t glError = 0;
uint8_t system_Poll = 3; //seconds
uint8_t fan_stat = 0;
uint8_t force_fan_on = 0;
volatile uint32_t core_timer = 0;
volatile uint32_t system_timer = 0;
volatile uint32_t Fan_timer = 0;
float switch_Temp = 100.0;
float switch_Hyst = 10.0;
float stageTemp = 0.0;

float newTemp = 0.0;

uint8_t fanbounce_Time = 5; //ms
uint16_t min_fan_on_time = 120; //seconds      


void init_thermal_controller(void){
    init_CLI();
    
    if (AthenaInit()){
        AthenaOff();
        glError = 1; 
    }
  
}


void process_thermal(){
    
    //if (!glError){
    
    
    if(1){

        //Computer updated temp check very soon
		if (newTempSet != 0) {									
			system_timer = (system_Poll*1600); //80%
			newTempSet = 0;
			}  
		
        //Poll the Athena and see if we need to update the Chiller or High temp status
		if((system_timer > (system_Poll*2000))) 
        {
            system_timer = 0;
			newTempSet = 0; //reset newTemp
			GPIO_RD1_Toggle();
            G_LED_1_Toggle();
			if((newTemp = AthenaGetSetTemp()) == kErrorTemp)
            {
				ShutDown();
			}
		    if(newTemp != oldAthenaSetTemp) //check to see if set temp changed
			{
				if(newTemp >= (switch_Temp + switch_Hyst))
				{	 
					stageTemp = AthenaGetTemp();
					if(stageTemp >= switch_Temp)// check to see if we allowed to switch voltage if not dont update so we can come back when ready to switch
					{
						oldAthenaSetTemp = newTemp; // ok we switched dont come back			
						HighTempOn();
                        //WaterBathOn();
                        R_LED_1_Set();
					}
					else
					{
						HighTempOff();
                        //WaterBathOff();
                        R_LED_1_Clear();
					}
				}			
				else        
				{
					HighTempOff();
					oldAthenaSetTemp = newTemp;
			
                }
            }
		
            //Poll the Julabo/Neslab/etc
            /*
			if (JulaboGetStatus('3')) //check Julabo status before changing temp
				{
				ShutDown();
				}			

			if(SetJulaboPower(newTemp))  
				{
				ShutDown();
				}


			if(SetNLPower(newTemp)) //set NL temp regardless of stage temp
			{
				ShutDown();
				
				
			}
            */
    		
			else
			{
				 /*
				if (JulaboGetStatus('3'))
				{
					ShutDown();
				}	

				if(NLGetStatus())
				{
					ShutDown();
				}
                 */
			}
		} //System Poll
	}//GL error   


 
    //thermal_state_machine();


    
} //Process thermal
    

void thermal_fan(){
    
    //Force Fan on 
    if (force_fan_on){
        FAN_cont_Set();
        fan_stat = 2;
        return;
    }
    
    //Check FAN
    if (!Temp_switch_Get())
    {
         //first time in this function - switch just switched
        if (!fan_stat){ 
            Fan_timer = 0; //reset timer if fan has started and FTR is set
            fan_stat = 1; //indicate the fan is on
        }
         
        if (Fan_timer >= fanbounce_Time){
            FAN_cont_Set();
            
        }
 
    }
    else 
    {
        if (Fan_timer >= (min_fan_on_time*1000) && (fan_stat == 1) || fan_stat == 2){
            FAN_cont_Clear();
            fan_stat = 0;
        }
    }   
    
}
 
   
    
 void ShutDown(void){
     AthenaOff();
     HighTempOff();
     glError = 1;
     
 }   
    
void HighTempOn(void){
   HT_cont_Set();   
}

void HighTempOff(void){
  HT_cont_Clear();  
}


void AthenaOn(void){
    
   Athena_cont_Set();
}


void AthenaOff(void){
    
   Athena_cont_Clear(); 
}

void tick_core_timer() {
    core_timer++;
    system_timer++;
    Fan_timer++;
    
}

uint32_t get_core_timer(void){
    return core_timer;
}

void clr_core_timer() {
    core_timer = 0;
    
}

void clr_system_timer(void) {
    system_timer = 0;
}

volatile uint32_t dummy = 0;
uint16_t wait_delay = 0;
void Wait(uint16_t wait_time){
    
    wait_delay = wait_time*1000;
    clr_core_timer();
    while (core_timer <= wait_delay)
    {
        dummy++;
        if(get_core_timer() > wait_delay)
        {
            dummy++;
            break;
        }
    }
    
    dummy = dummy - 1;
}



/* *****************************************************************************
 End of File
 */
