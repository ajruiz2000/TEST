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
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "D32.h"

uint8_t st_version[] = {"\nThermal Controller Firmware V1.0.0   \r\n"};

int global_data;;
uint8_t command_to_process[128];
uint8_t cmd_put = 0;
uint8_t cmd_get = 0;

int nex_RX_data(void);
int nex_TX_data(void);
char get_RX_CLI(void);
char get_TX_CLI(void);
void Add_TX_CLI(char ch);
void Add_TX_CLI_string(uint8_t* str);
void proccess_command(void);
void parse_General_packet(void);
void parse_Athena_packet(void);
void parse_Julabo_packet(void);

uint8_t rxBuffer_put;
uint8_t rxBuffer_get;
uint8_t txBuffer_put;
uint8_t txBuffer_get;

uint8_t rxBuffer[128];
uint8_t txBuffer[128];


typedef struct
{
	unsigned char Name1;
	unsigned char Name2;
	void (*CommandPtr)(void);
} CommandListType;

const CommandListType CommandList[] = 
{
	{'$','0',	&parse_General_packet},
	{'*','0',   &parse_Julabo_packet},
	{'#','0',   &parse_Athena_packet},
	//{'B','L',	&parse_BL_packet}, //No Bootloader for now
	{0x00,0x00,	NULL}
};




//int the Command Line interface data
void init_CLI(void){
   //CLI_PORT[0].RxGetIndex = 0;
   //CLI_PORT[0].RxPutIndex = 0; 
   //CLI_PORT[0].TxGetIndex = 0;
   //CLI_PORT[0].TxPutIndex = 0;

    rxBuffer_put = 0;
    rxBuffer_get = 0;
    txBuffer_put = 0;
    txBuffer_get = 0;
}


//fill the ring buffer with data as it comes in
void Add_RX_CLI(char ch){

    rxBuffer[rxBuffer_put] = ch;
    
    rxBuffer_put++;
    if (rxBuffer_put > RXBUFFERSIZE){
       rxBuffer_put = 0; 
    }
    
}


void Add_TX_CLI(char ch){

    txBuffer[txBuffer_put] = ch;;
    
    txBuffer_put++;
    if (txBuffer_put > TXBUFFERSIZE){
       txBuffer_put = 0; 
    }
    
}

void Add_TX_CLI_string(uint8_t* str){
    uint8_t wd = 0;
    uint8_t i = 0;
    
    while(str[i] != NULL && wd < 50){
        txBuffer[txBuffer_put] = str[i];
        i++;
        wd++;
        txBuffer_put++;
        if (txBuffer_put > TXBUFFERSIZE){
           txBuffer_put = 0; 
        }
    }
    
}

char get_TX_CLI(void){
    char data;
    
    data = txBuffer[txBuffer_get];
    
    txBuffer_get++;
    if (txBuffer_get > TXBUFFERSIZE){
       txBuffer_get = 0; 
    }
    
    return data;
    
}

int nex_TX_data(void){
      
    if (txBuffer_put != txBuffer_get){
        return 1;
    }
   
    return 0;
    
}

uint8_t data_to_send(uint8_t* data){
    int i = 0;
    while (nex_TX_data()){
       data[i] = get_TX_CLI();
       i++;   
    }
    
    
    if (i==0){
      data[i] = NULL;  
    }
    return i;
    
}


//return one if we recieve a CR to process data
void process_RX_CLI(void){
    char data;
    if (nex_RX_data()){
       data = get_RX_CLI();
       switch (data){
           case CR:
              command_to_process[cmd_put] = data;
              cmd_put++;
              proccess_command();
              cmd_get = 0;
              cmd_put = 0;
              break;
           case LF:
              command_to_process[cmd_put] = data;
              cmd_put++;
              break;  
           default:
              command_to_process[cmd_put] = data;
              cmd_put++;
              break;

       }    
    }
}


//Local Prototypes



int nex_RX_data(void){
    
    
    if (rxBuffer_put != rxBuffer_get){
        return 1;
    }
   
    return 0;
    
}



//fill the ring buffer with data as it comes in
char get_RX_CLI(void){
    char data;
    
    data = rxBuffer[rxBuffer_get];
    
    rxBuffer_get++;
    if (rxBuffer_get > RXBUFFERSIZE){
       rxBuffer_get= 0; 
    }
    
    return data;
    
}

void proccess_command(void){
    
    unsigned char	CommandNumber = 0;
	unsigned char	CmdName1 = 0;
	//unsigned char	CmdName2 = 0;
    unsigned char	cmd_exectuted = 0;

	// Always grab the first character (which is the first byte of the command)
	CmdName1 = command_to_process[cmd_get];
    cmd_get++;
    
    while (CommandList[CommandNumber].CommandPtr != 0x00 && CommandNumber < 250)
	{
		
		if (CmdName1 == CommandList[CommandNumber].Name1)
		{
			CommandList[CommandNumber].CommandPtr();
            cmd_exectuted = 1;
            break;
		}
		else
		{
			CommandNumber++;
		}
	}
    
    if (!cmd_exectuted){
        //secondary command list in the future
    }
    
    
    
}

void parse_Julabo_packet(void){
   //TODO: ADD functionality for Julabo Neslab
    
}

void parse_Athena_packet(void)
{
    /* Build the Athena packet
	int i = 0;
	char data[kMaxRead+1]; // used for send and return

	if(glError)
	{
        stdout->_flag |= _IOBINARY;
		printf("\nERROR_GL\r\n");
		return;
	}
	// Print out the normal version string
	for(i=0; i <kMaxWrite ; i++)
	{
		data[i] = g_RX_buf[g_RX_buf_out];
		if(data[i] == '\r')
		{break;}
		advance_RX_buf_out();
	}
	
	if(i >= kMaxWrite)
	{
        stdout->_flag |= _IOBINARY;
		printf("\nERROR_BC\r\n");
		return;
	}
	
	AthenaProcessExternal(data);
	//stick \0 on end
    stdout->_flag |= _IOBINARY;
	printf ((const char *)data); 
	//printf("A_Packet\r\n");
    */
}


void parse_General_packet(void)
{

	char command;

	command = command_to_process[cmd_get];
    cmd_get++;

    switch (command)
	{	
		case 'V':
			//printf ((const char *)st_version);
            //Add_TX_CLI('a');
            Add_TX_CLI_string(&st_version[0]);
			break;
		case 'I':
			//printf("\n");
			//putchar(kAID1);
			//putchar(kAID2);
			//printf("\r\n");
			break;
		case 'R':
			//printf("\nRESET\r\n");
			//Wait(100);
			//Reset Firmware - just follow the yellow brick road :-)
			//SYSKEY = 0xAA996655;
			//SYSKEY = 0x556699AA;  //SYSTEMUnlock();
			//RSWRSTSET = 1;
			//volatile int* p = &RSWRST;
			//*p;
			//while(1); 
			break;
		case 'S':
			//if(glError){
            if(1){
                //printf("\nERROR_GL\r\n");
            }
			else{
                //printf("\nOK\r\n");
            }
			break;
		default:
			//printf("\nERROR_UC\r\n");
            break;
	}


}

/* ************************************************************************** */
/* ************************************************************************** */
// Section: Interface Functions                                               */
/* ************************************************************************** */
/* ************************************************************************** */



int ExampleInterfaceFunction(int param1, int param2) {
    return 0;
}


/* *****************************************************************************
 End of File
 */
