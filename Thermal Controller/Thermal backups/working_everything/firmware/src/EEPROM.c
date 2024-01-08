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
#include "app.h"
#include "EEPROM_MAP.h"
#include "Athena.h"
#include "app_main.h"

#define kAthenaOnDelayMAX 100
#define kAthenaOnDelaydef 3
#define chiller_TimerMAXdef 10
#define system_Poll_MAX 100
#define system_Poll_def 5
#define min_fan_on_time_MAX 1000
#define min_fan_on_time_def 120
#define thermal_mode_MAX 2
#define thermal_mode_def 0
#define fanbounce_Time_MAX 1000
#define fanbounce_Time_def 5
#define switch_Temp_MAX 2000 //multiply up by 10
#define switch_Temp_def 1000 
#define switch_Hyst_MAX 500
#define switch_Hyst_def 50
#define kDefaultAthenaTemp_MAX 2000
#define kDefaultAthenaTemp_def 350

#define READ_WRITE_SIZE         (NVM_FLASH_PAGESIZE)
#define BUFFER_SIZE             (READ_WRITE_SIZE / sizeof(uint32_t))
        

volatile uint32_t readData[BUFFER_SIZE];
uint32_t writeData[BUFFER_SIZE] CACHE_ALIGN;


static volatile bool xferDone = false;

static void eventHandler(uintptr_t context)
{
    xferDone = true;
}


uint8_t init_NVM(void) {
    NVM_CallbackRegister(eventHandler, (uintptr_t)NULL);
    while(NVM_IsBusy() == true);
    
    return 1;
}

uint8_t load_variables(void) {
    
    uint8_t *writePtr = (uint8_t *)writeData;
    uint32_t float_val = 0;
    uint32_t i = 0;
   //NVM_Read(readData, 9*4, APP_FLASH_ADDRESS);
   
    chiller_TimerMAX = readData[1];
    if (chiller_TimerMAX <= 0 || chiller_TimerMAX > kAthenaOnDelayMAX){
       chiller_TimerMAX = chiller_TimerMAXdef;
       //NVM_WordWrite(chiller_TimerMAX, chiller_TimerMAX_ADDR );
       //while(xferDone == false);
       //xferDone = false;
   } 
   kAthenaOnDelay = readData[0];
    if (kAthenaOnDelay <= 0 || kAthenaOnDelay > kAthenaOnDelayMAX){
        kAthenaOnDelay = kAthenaOnDelaydef;
       // NVM_WordWrite(kAthenaOnDelay, kAthenaOnDelay_ADDR );
        //while(xferDone == false);
        //xferDone = false;
    }

   
   system_Poll = readData[2]; 
    if (system_Poll <= 0 || system_Poll > system_Poll_MAX){
        system_Poll = system_Poll_def;
       // NVM_WordWrite(system_Poll, system_Poll_ADDR );
        //while(xferDone == false);
        //xferDone = false;
    } 
   min_fan_on_time = readData[3];
    if (min_fan_on_time <= 0 || min_fan_on_time > min_fan_on_time_MAX){
        min_fan_on_time = min_fan_on_time_def;
        //NVM_WordWrite(min_fan_on_time, min_fan_on_time_ADDR );
        //while(xferDone == false);
        //xferDone = false;
    }    
   thermal_mode = readData[4];
    if (thermal_mode < 0 || thermal_mode > thermal_mode_MAX){
        thermal_mode = thermal_mode_def;
        //NVM_WordWrite(thermal_mode, thermal_mode_ADDR );
        //while(xferDone == false);
        //xferDone = false;
    } 
   fanbounce_Time = readData[5];
    if (fanbounce_Time <= 0 || fanbounce_Time > fanbounce_Time_MAX){
        fanbounce_Time = fanbounce_Time_def;
        //NVM_WordWrite(fanbounce_Time, fanbounce_Time_ADDR );
        //while(xferDone == false);
        //xferDone = false;
    } 
   float_val = readData[6];
    if (float_val <= 0 || float_val > switch_Temp_MAX){
        float_val = switch_Temp_def;
        //NVM_WordWrite(float_val, switch_Temp_ADDR );
        //while(xferDone == false);
        //xferDone = false;
    }
   switch_Temp = float_val/10;
   float_val = readData[7];
    if (float_val <= 0 || float_val > switch_Hyst_MAX){
        float_val = switch_Hyst_def;
       // NVM_WordWrite(float_val, switch_Hyst_ADDR );
        //while(xferDone == false);
        //xferDone = false;
    }
   switch_Hyst  = float_val/10;
    float_val = readData[8];
    if (float_val <= 0 || float_val > kDefaultAthenaTemp_MAX){
        float_val = kDefaultAthenaTemp_def;
       // NVM_WordWrite(float_val, kDefaultAthenaTemp_ADDR );
        //while(xferDone == false);
        //xferDone = false;
    } 
   kDefaultAthenaTemp = float_val/10;
   
   /*
    writeData[0] = uint32_t(kAthenaOnDelay);
    writeData[1] = uint32_t(chiller_TimerMAX);
    writeData[2] = uint32_t(system_Poll);
    
    writeData[3] = uint32_t(thermal_mode);
    writeData[4] = uint32_t(fanbounce_Time);
    */
   
       /* Erase the Page */
    NVM_PageErase(APP_FLASH_ADDRESS);
    
    while(xferDone == false);
    
    xferDone = false;
   

    for (i = 0; i < BUFFER_SIZE; i++)
    {
        writeData[i] = i;
    }
    
    NVM_RowWrite((uint32_t *)writePtr, APP_FLASH_ADDRESS);
    while(xferDone == false);
    xferDone = false;
    
   NVM_Read(readData, 9*4, APP_FLASH_ADDRESS);
   
   return 1; 
}


uint8_t program_variable(uint32_t ADDR, uint32_t data){
    
    writeData[0] = 8;
    writeData[1] = 9;
    writeData[2] = 12;
    while(NVM_IsBusy() == true);
    NVM_RowWrite((uint32_t *)writeData, APP_FLASH_ADDRESS);
    while(xferDone == false);
    xferDone = false;
     //NVM_Read(readData, 9*4, APP_FLASH_ADDRESS);
    system_Poll = 8;
        //NVM_WordWrite(system_Poll, system_Poll_ADDR );
        //NVM_WordWrite(data, ADDR );
        //while(xferDone == false){};
        //xferDone = false;
        
        NVM_Read(readData, 9*4, APP_FLASH_ADDRESS);
        return 1;
}









int ExampleInterfaceFunction(int param1, int param2) {
    return 0;
}


/* *****************************************************************************
 End of File
 */
