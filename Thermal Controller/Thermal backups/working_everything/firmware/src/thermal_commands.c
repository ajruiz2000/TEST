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
///Standard Commands


#include "D32.h"
#include "app_main.h"
#include "thermal_commands.h"
#include <STDIO.h>
#include <string.h>
#include <stdlib.h>
#include <STDIO.h>
#include "Athena.h"
#include "EEPROM_MAP.h"




volatile int counter = 0;
char TX1_Buffer[128];
int *dummy;

char *get_entry (char *cp, char **pNext);   
void setread_int (char *par); //for testing
void setread_float (char *par);
char parse_Thermal (char *par);
void set_Temp (char *par);
void stage_Temp (char *par);
void help (char *par);





static const SCMD cmd[] = {
   "PIDWAIT", "On time for Athena",            setread_int,   &kAthenaOnDelay,   kAthenaOnDelay_ADDR,       0,
   "CWAIT",  "On time for the Chiller",        setread_int,   &chiller_TimerMAX, chiller_TimerMAX_ADDR,     1,
   "POLL",   "Time the system is polled",      setread_int,   &system_Poll,      system_Poll_ADDR,          2,
   "FANMIN", "min time for fan",               setread_int,   &min_fan_on_time,  min_fan_on_time_ADDR,      3, 
   "FANON",  "Force Fan On",                   setread_int,   &force_fan_on,     dummy_address,             4,
   "MODE",   "0=USB, 1=Neslab, 2=Julabo",      setread_int,   &thermal_mode,     thermal_mode_ADDR,         5,
   "FHT",     "Force High Temp",               setread_int,   &FHT,              dummy_address,             6,
   //"FBOUNCE", "Fan Bounce Time",             setread_int,   &fanbounce_Time,   fanbounce_Time_ADDR,       7,
   "STEMP",   "Switch temp",                   setread_float, &switch_Temp,      switch_Temp_ADDR,          0,
   "SHYST",   "Switch temp hyst",              setread_float, &switch_Hyst,      switch_Hyst_ADDR,          1,
   "START",   "Start Temp",                    setread_float, &kDefaultAthenaTemp,kDefaultAthenaTemp_ADDR,  2,
   //"SET",     "Set Temp",                    set_Temp,      &dummy,            dummy_address,             0,
   "STAGE",   "Stage Temp",                    stage_Temp,    &dummy,            dummy_address,             0,
   "HELP",    "Help",                          help,          &dummy,            dummy_address,             0,
};

#define CMD_COUNT   (sizeof (cmd) / sizeof (cmd[0]))


 char *get_entry (char *cp, char **pNext) {
     
   char *sp, lfn = 0, sep_ch = ' ';

   if (cp == '\0') {                          /* skip NULL pointers          */
      *pNext = cp;
      return (cp);
   }

   for ( ; *cp == ' ' || *cp == '\"'; cp++) { /* skip blanks and starting  " */
      if (*cp == '\"'){
       sep_ch = '\"'; 
       lfn = 1; 
      }
       break;
      *cp = '\0';
   }
 
   for (sp = cp; *sp !=  CR && *sp != LF; sp++) {
      if ( lfn && *sp == '\"') {
          break;
      }
      if (*sp == kSP ){
          break;
      }
   }

   for ( ; *sp == kSP || *sp == CR || *sp == LF; sp++) {
      if (*sp == kSP) {
          *sp = '\0';
          *pNext = ++sp;
          break;
      }
      else{
       *sp = '\0';
       *pNext = sp;
       break;
      }
   }
   return (cp);
}

char parse_Thermal(char *command)
{
    int i;
    char *sp, *cp, *next;
    
    sp = get_entry (&command[0], &next);
      if (*sp == 0) {
         return;
      }
      for (cp = sp; *cp && *cp != CR; cp++) {
         *cp = toupper (*cp);                 /* command to upper-case       */
      }
      *cp = '\0';
       
      for (counter = 0; counter < CMD_COUNT; counter++) {
         if (strcmp (sp, (const char *)&cmd[counter].value)) {
            continue;
         }
                                  
         cmd[counter].func(next);                  /* execute command function    */
         return 0;
      }
    return 1;
    
}
 
 help(char *ptr)
 {
    int i = 0;
    for (i=0; i<CMD_COUNT; i++){
        sprintf(TX1_Buffer, "\n%d:",(const char*)cmd[i].value);
        Add_TX_CLI_string(TX1_Buffer);
        Add_TX_CLI_string((const char*)cmd[i].description);
        Add_TX_CLI('\n');
        Add_TX_CLI('\r');

    }
 
 }
setread_float(char *ptr)
{
    float testy;
    testy = *((float*)cmd[counter].ptr);
    int temp = 0;
    if (*ptr == '\0'){
        sprintf (TX1_Buffer,"%4.1f",testy); //stage temp to switch into high voltage);
        Add_TX_CLI_string(TX1_Buffer);
        Add_TX_CLI('\n');
        Add_TX_CLI('\r');
    }
    else
    {
       *((float*)cmd[counter].ptr) = atof((const char *)(ptr));
       sprintf (TX1_Buffer, "SET%4.1f",*((float*)cmd[counter].ptr));
       Add_TX_CLI_string(TX1_Buffer);
       Add_TX_CLI('\n');
       Add_TX_CLI('\r');
    }
 }
 
 
 
 
 setread_int(char *ptr)
 {
 uint16_t testy;
 uint32_t value = 8;
 testy = *((uint16_t*)cmd[counter].ptr);
   if (*ptr == '\0'){
        sprintf (TX1_Buffer,"%4.1d",testy); //stage temp to switch into high voltage);
        Add_TX_CLI('\n');
        Add_TX_CLI_string(TX1_Buffer);
        Add_TX_CLI('\n');
        Add_TX_CLI('\r');
   }
   else{
       *((uint16_t*)cmd[counter].ptr) = atoi((const uint16_t *)(ptr));
       Add_TX_CLI('\n');
       sprintf (TX1_Buffer, "SET%4.1d",*((uint16_t*)cmd[counter].ptr));
       Add_TX_CLI_string(TX1_Buffer);
       Add_TX_CLI('\n');
       Add_TX_CLI('\r');
       
       
       //program the variable
       //program_variable(cmd[counter].EE_addr, *((uint16_t*)cmd[counter].ptr));
        program_variable(cmd[counter].EE_addr, value);
     
   }
 }
     


 
 
  
  



     
 stage_Temp(char *ptr)
 {
    float t;
    t = AthenaGetTemp();
    sprintf (TX1_Buffer, "Stage Temp = %4.1fC\n\r",t); 
    Add_TX_CLI_string(TX1_Buffer);
    Add_TX_CLI('\n');
    Add_TX_CLI('\r');
     
 }
int ExampleInterfaceFunction(int param1, int param2) {
    return 0;
}


/* *****************************************************************************
 End of File
 */
