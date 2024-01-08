// 
// Version 1.2  03/03/09  BPS : Fixed problem with boot_software_key_sec so it will work reliably with bootloader (forgot leading .)
//Version 1.3
#include <stdlib.h>
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "USB/usb_device.h"
#include "USB/usb.h"
#include "USB/usb_function_cdc.h"
#include "HardwareProfile.h"
#include "D32.h"
#include "Athena.h"
#include "UpDown.h"
#include "Errors.h"
#include "Main.h"
#include "Julabo.h"

#define bitset(var,bitno) ((var) |= (1 << (bitno)))
#define bitclr(var,bitno) ((var) &= ~(1 << (bitno)))
#define bittst(var,bitno) (((var) & (1 << (bitno)))?1:0)
#define bitinvert(var,bitno) ((var) ^ (1 << (bitno)))

#define kTX_BUF_SIZE 			(64)			// In bytes
#define kRX_BUF_SIZE			(64)			// In bytes

#define kUSART_TX_BUF_SIZE		(64)			// In bytes
#define kUSART_RX_BUF_SIZE		(64)			// In bytes

#define kMAX_PORTS			(7)

// Enum for extract_num() function parameter
typedef enum {
	 kCHAR
	,kUCHAR
	,kINT
	,kUINT
	,kASCII_CHAR
	,kUCASE_ASCII_CHAR
} ExtractType;

typedef enum {
	 kEXTRACT_OK = 0
	,kEXTRACT_PARAMETER_OUTSIDE_LIMIT
	,kEXTRACT_COMMA_MISSING
	,kEXTRACT_MISSING_PARAMETER
	,kEXTRACT_INVALID_TYPE
} ExtractReturnType;

#define kREQUIRED	FALSE
#define kOPTIONAL	TRUE

#define advance_RX_buf_out()						\
{ 													\
	g_RX_buf_out++;									\
	if (kRX_BUF_SIZE == g_RX_buf_out)				\
	{												\
		g_RX_buf_out = 0;							\
	}												\
}

#define kISR_FIFO_A_DEPTH		3
#define kISR_FIFO_D_DEPTH		3
#define kCR						0x0D
#define kLF						0x0A
#define kBS						0x08

// defines for the error_byte byte - each bit has a meaning
#define kERROR_BYTE_TX_BUF_OVERRUN			2
#define kERROR_BYTE_RX_BUFFER_OVERRUN		3
#define kERROR_BYTE_MISSING_PARAMETER		4
#define kERROR_BYTE_PRINTED_ERROR			5			// We've already printed out an error
#define kERROR_BYTE_PARAMETER_OUTSIDE_LIMIT	6
#define kERROR_BYTE_EXTRA_CHARACTERS 		7
#define kERROR_BYTE_UNKNOWN_COMMAND			8			// Part of command parser, not error handler

// Let compile time pre-processor calculate the CORE_TICK_PERIOD
#define SYS_FREQ 				(80000000L)
#define TOGGLES_PER_SEC			1000
#define CORE_TICK_RATE	       (SYS_FREQ/2/TOGGLES_PER_SEC)

static char USB_In_Buffer[64];

// Local variables for this file (statics)
static WORD old_swUser;
static WORD old_swProgram;

// This byte has each of its bits used as a seperate error flag
static BYTE error_byte;

// ROM strings
const char st_OK[] = {"OK\r\n"};
const char st_LFCR[] = {"\r\n"};
const char st_version[] = {"\nThermal Stage Firmware V1.3   \r\n"};

const char ErrorStrings[8][40] = 
{
	"!0 \r\n",								// Unused as of yet
	"!1 \r\n",								// Unused as of yet
	"!2 Err: TX Buffer overrun\r\n",		// kERROR_BYTE_TX_BUF_OVERRUN
	"!3 Err: RX Buffer overrun\r\n",		// kERROR_BYTE_RX_BUFFER_OVERRUN
	"!4 Err: Missing parameter(s)\r\n",		// kERROR_BYTE_MISSING_PARAMETER
	"",										// kERROR_BYTE_PRINTED_ERROR (something already printed)
	"!6 Err: Invalid paramter value\r\n",	// kERROR_BYTE_PARAMETER_OUTSIDE_LIMIT
	"!7 Err: Extra parmater\r\n"			// kERROR_BYTE_EXTRA_CHARACTERS
};


char JulaboInCommands[3][20] = 
{
	"in_sp_00\r",								// Set Point
	"in_pv_00\r",								// Water Temp
	"in_mode_05\r"							    // On/Off
};

char JulaboOutCommands[3][20] = 
{
	"out_mode_05 0\r",								// Turn Off
	"out_mode_05 1\r",								// Turn On
	"out_sp_00 !\r"                                  //Set Set Point
};




char JulaboError[25] = "Invalid Julabo Command\r\n";


// USB Transmit buffer for packets (back to PC)
unsigned char g_TX_buf[kTX_BUF_SIZE];
// USB Receiving buffer for commands as they come from PC
unsigned char g_RX_buf[kRX_BUF_SIZE];

// USART Receiving buffer for data coming from the USART
unsigned char g_USART_RX_buf[kUSART_RX_BUF_SIZE];

// USART Transmit buffer for data going to the USART
unsigned char g_USART_TX_buf[kUSART_TX_BUF_SIZE];

// Pointers to USB transmit (back to PC) buffer
unsigned char g_TX_buf_in;
unsigned char g_TX_buf_out;
unsigned char g_TX_buf_length;

// Pointers to USB receive (from PC) buffer
unsigned char g_RX_buf_in;
unsigned char g_RX_buf_out;

// In and out pointers to our USART input buffer
unsigned char g_USART_RX_buf_in;
unsigned char g_USART_RX_buf_out;

// In and out pointers to our USART output buffer
unsigned char g_USART_TX_buf_in;
unsigned char g_USART_TX_buf_out;

// Normally set to TRUE. Able to set FALSE to not send "OK" message after packet recepetion
BOOL	g_ack_enable;

// Normally set to TRUE. Set to false to disable echoing of all data sent to UBW
BOOL	g_echo_enable = FALSE;

// Used in T1 command to time the LEDs. In ms.
volatile unsigned int T1_timer;

volatile unsigned int * const ROM LATPtr[kMAX_PORTS] = 
{
	&LATA, 
	&LATB, 
	&LATC, 
	&LATD, 
	&LATE, 
	&LATF, 
	&LATG
};
volatile unsigned int * const ROM TRISPtr[kMAX_PORTS] = 
{
	&TRISA, 
	&TRISB, 
	&TRISC, 
	&TRISD, 
	&TRISE,
	&TRISF, 
	&TRISG
};
volatile unsigned int * const ROM ODCPtr[kMAX_PORTS] = 
{
	&ODCA, 
	&ODCB, 
	&ODCC, 
	&ODCD, 
	&ODCE, 
	&ODCF, 
	&ODCG
};

unsigned int __attribute__((section(".boot_software_key_sec,\"aw\",@nobits#"))) SoftwareKey;

/** P R I V A T E  P R O T O T Y P E S ***************************************/
void parse_packet (void);		// Take a full packet and dispatch it to the right function
ExtractReturnType extract_number(
	ExtractType Type, 
	void * ReturnValue, 
	unsigned char Required
); 								// Pull a number paramter out of the packet
signed char extract_digit (signed long * acc, unsigned char digits); // Pull a character out of the packet
void PrintErrors (void);		// Prints out any errors in error_byte

void parse_General_packet (void);		// V for printing version
void parse_Athena_packet (void);		// A for Athena
void parse_Julabo_packet (void);

void parse_ST_packet (void); //Turn into echo???
void parse_BL_packet (void);

void check_and_send_TX_data (void); // See if there is any data to send to PC, and if so, do it
void PrintAck (void);			// Print "OK" after packet is parsed
void _mon_putc (char c);		// Our USB based stream character printer
unsigned char CheckLatchingInput (unsigned char PortIndex, unsigned char LatchingClearMask); // Handles the latching of inputs

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
	{'B','L',	&parse_BL_packet},
	{'S','T',	&parse_ST_packet}, // turn into echo??
	{0x00,0x00,	NULL}
};

//not sure how this is used???
void __ISR(_CORE_TIMER_VECTOR, ipl2) CoreTimerHandler(void)
{
    // clear the interrupt flag
    mCTClearIntFlag();
	if (T1_timer)
	{T1_timer--;}
    // update the period
    UpdateCoreTimer(CORE_TICK_RATE);
}




/** D E C L A R A T I O N S **************************************************/

/*************parse_XXX_packet functions************************/
/*************Please place in alphabetical order **************/






void parse_Julabo_packet(void)
	{
	char command;
	static char data[20];
	char *JulaboResponse;
	int i;
	int j;
	int p;
	char test[20];
	char *ptr5;
	BOOL ValidCommand = FALSE;
	
	advance_RX_buf_out();
	command = toupper(g_RX_buf[g_RX_buf_out]);
	
	switch (command)
		{	
		//Output Command No Response
		case 'O':
			for(i=0; i <20 ; i++)
				{
				data[i] = g_RX_buf[g_RX_buf_out];
				if(data[i] == '\r')
				{break;}
				advance_RX_buf_out();
				}
			for(j=0; j<=2; j++)
				{
				if(ValidCommand == TRUE)
					{
					break;
					}
				for(p=0; p<=20; p++) //JulaboInCoammds
					{
					if(JulaboOutCommands[j][p] == '!') //indicates we have valid set temp command
						{
						ValidCommand = TRUE;
						WriteToJulabo(data, i);
						break;
						}
					if(data[p] == JulaboOutCommands[j][p]) //contimue
						{
						if(data[p] == '\r')
							{
							p++;
							ValidCommand = TRUE;
							WriteToJulabo(data, p);
							break;
							}
					
						
						}
						else
							{
							break;
							}
						}
						
					}



			if(ValidCommand == FALSE)
				{
				JulaboResponse = JulaboError;
				if((USBDeviceState < CONFIGURED_STATE)||(USBSuspendControl==1)) return;
				while (!mUSBUSARTIsTxTrfReady())
					{
					USBDeviceTasks();
					CDCTxService();
					}

				putsUSBUSART(JulaboResponse);

				USBDeviceTasks();
				CDCTxService();
				}
				
			break;
		//Input Command Reponse
		case 'I':
			for(i=0; i <20 ; i++)
				{
				data[i] = g_RX_buf[g_RX_buf_out];
				if(data[i] == '\r')
				{break;}
				advance_RX_buf_out();
				}
			for(j=0; j<=2; j++)
				{
				if(ValidCommand == TRUE)
					{
					break;
					}
				for(p=0; p<=20; p++) //JulaboInCoammds
					{
					if(data[p] == JulaboInCommands[j][p]) //contimue
						{
						if(data[p] == '\r')
							{
							p++;
							ValidCommand = TRUE;
							WriteToJulabo(data, p);
							break;
							}
						}
						else
							{
							break;
							}
						}
						
					}

				
				if(ValidCommand == TRUE)
					{
					JulaboResponse = ReadFromJulabo();
					ValidCommand = FALSE;
					
					}
				else
					{
					JulaboResponse = JulaboError;
					}
		//	WriteToJulabo(data, i);
		//	JulaboResponse = ReadFromJulabo();
			if((USBDeviceState < CONFIGURED_STATE)||(USBSuspendControl==1)) return;
			while (!mUSBUSARTIsTxTrfReady())
				{
				USBDeviceTasks();
				CDCTxService();
				}

	
			putsUSBUSART(JulaboResponse);

			USBDeviceTasks();
			CDCTxService();


			break;
		//Version Command Response Needed
		case 'V':
			for(i=0; i <20 ; i++)
				{
				data[i] = g_RX_buf[g_RX_buf_out];
				if(data[i] == '\r')
				{break;}
				advance_RX_buf_out();
				}
			WriteToJulabo(data, i);
			JulaboResponse = ReadFromJulabo();

		if((USBDeviceState < CONFIGURED_STATE)||(USBSuspendControl==1)) return;
		while (!mUSBUSARTIsTxTrfReady())
			{
			USBDeviceTasks();
			CDCTxService();
			}

	
		putsUSBUSART(JulaboResponse);

		USBDeviceTasks();
		CDCTxService();


		//	printf((const char *)JulaboResponse);

			break;


		//Status Command Response Neede
		case 'S':
			for(i=0; i <20 ; i++)
				{
				data[i] = g_RX_buf[g_RX_buf_out];
				if(data[i] == '\r')
				{break;}
				advance_RX_buf_out();
				}
			WriteToJulabo(data, i);
			JulaboResponse = ReadFromJulabo();

			if((USBDeviceState < CONFIGURED_STATE)||(USBSuspendControl==1)) return;
			while (!mUSBUSARTIsTxTrfReady())
				{
				USBDeviceTasks();
				CDCTxService();
				}

	
			putsUSBUSART(JulaboResponse);

			USBDeviceTasks();
			CDCTxService();
	

			break;

		case 'E':
			if((USBDeviceState < CONFIGURED_STATE)||(USBSuspendControl==1)) return;
			while (!mUSBUSARTIsTxTrfReady())
				{
				USBDeviceTasks();
				CDCTxService();
				}

	
			putsUSBUSART(status1);

			USBDeviceTasks();
			CDCTxService();
		
		//Error
		default:
			printf("\nInvalid Julabo Command\r\n");

			break;



}

	}







void parse_Athena_packet(void)
{
	int i = 0;
	char data[kMaxRead+1]; // used for send and return

	if(glError)
	{
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
		printf("\nERROR_BC\r\n");
		return;
	}
	
	AthenaProcessExternal(data);
	//stick \0 on end
	printf ((const char *)data); 
	//printf("A_Packet\r\n");
}

void parse_ST_packet(void)
{
	// Print out the normal version string
	unsigned char Test; 

	if (kEXTRACT_OK == extract_number (kUCASE_ASCII_CHAR, (void*) &Test, kREQUIRED))
		{
		printf ((const char *)st_LFCR);
		printf ("You sent ");
		printf ("%c", Test);
		printf ((const char *)st_LFCR);
		//printf ((const char *)st_version);		
		}
}

// All we do here is just print out our version number
void parse_General_packet(void)
{
	int i;
	char command;

	advance_RX_buf_out();
	command = toupper(g_RX_buf[g_RX_buf_out]);

		switch (command)
	{	
		case 'V':
			printf ((const char *)st_version);
			break;

		case 'I':
			printf("\n");
			putchar(kAID1);
			putchar(kAID2);
			printf("\r\n");
			break;
		case 'R':
			printf("\nRESET\r\n");
			Wait(100);
			//Reset Firmware - just follow the yellow brick road :-)
			SYSKEY = 0xAA996655;
			SYSKEY = 0x556699AA;  //SYSTEMUnlock();
			RSWRSTSET = 1;
			volatile int* p = &RSWRST;
			*p;
			while(1); 
			break;
		case 'S':
			if(glError)
			{printf("\nERROR_GL\r\n");}
			else
			{printf("\nOK\r\n");}
			break;
		default:
			printf("\nERROR_UC\r\n");
	}
	//flush buffer
	for(i=0; i <kMaxWrite-1 ; i++)
	{
		if(g_RX_buf[g_RX_buf_out] == '\r')
		{break;}
		advance_RX_buf_out();
	}

	//printf("V_Packet\r\n");
}

/******************************************************************************
 * Function:        void UserInit(void)
 * PreCondition:    None
 * Input:           None
 * Output:          None
 * Side Effects:    None
 * Overview:        This routine should take care of all of the demo code
 *                  initialization that is required.
 * Note:            
 *****************************************************************************/
void UserInit(void)
{
	char i;
	char test;

	// Loop through each I/O register, setting them all to digital inputs
	// and making none of them open drain and turning off all pullups and 
	// setting all of the latches to zero. We have PORTA through PORTG on
	// this chip. That's 7 total.
	//desirable?????



	for (i = 0; i < 7; i++)  //was taken out anthony
	{
//		*LATPtr[i] = 0x0000;  //intitializes bits in funny state
//		*TRISPtr[i] = 0xFFFF;
//		*ODCPtr[i] = 0x0000;
	}




    //Initialize all of the LED pins
	mInitAllLEDs();




	


	//Initialize all of the Bits for Neslab, Athena, and high voltage found in hardware.h
	mInitBits();

	// Start off always using "OK" acknoledge.
	g_ack_enable = TRUE;

	// Start off always echoing all data sent to us
	g_echo_enable = FALSE;

    // Inialize USB TX and RX buffer management
    g_RX_buf_in = 0;
    g_RX_buf_out = 0;
	g_TX_buf_in = 0;
	g_TX_buf_out = 0;
	g_TX_buf_length = 0;

	// And the USART TX and RX buffer management
	g_USART_RX_buf_in = 0;
	g_USART_RX_buf_out = 0;
	g_USART_TX_buf_in = 0;
	g_USART_TX_buf_out = 0;

	// Open up the core timer at our 1ms rate
	OpenCoreTimer(CORE_TICK_RATE);

    // set up the core timer interrupt with a prioirty of 2 and zero sub-priority
	mConfigIntCoreTimer((CT_INT_ON | CT_INT_PRIOR_2 | CT_INT_SUB_PRIOR_0));

    // enable multi-vector interrupts
	INTEnableSystemMultiVectoredInt();
	//test = UpDownInit();
	if( NLInit())  //must init Chiller before Athena
	{
		ShutDown1();
		return;
	}
	if(JulaboInit())  
	{
		ShutDown1();
		return;
	}
	if(AthenaInit())
	{
		ShutDown1();
		return;
	}
}//end UserInit



/********************************************************************
 * Function:        void ProcessIO(void)
 * PreCondition:    None
 * Input:           None
 * Output:          None
 * Side Effects:    None
 * Overview:        This function is a place holder for other user
 *                  routines. It is a mixture of both USB and
 *                  non-USB tasks.
 * Note:            None
 *******************************************************************/
void ProcessIO(void)
{   
	static BOOL in_cr = FALSE;
	static char last_fifo_size;
    unsigned char tst_char;
	unsigned char RXBufInTemp;
	BOOL	got_full_packet = FALSE;
	cdc_rx_len = 0;
	BYTE numBytesRead;

    //Blink the LEDs according to the USB device status
    BlinkUSBStatus();

    // User Application USB tasks
    if((USBDeviceState < CONFIGURED_STATE)||(USBSuspendControl==1)) return;

	// Pull in some new data if there is new data to pull in
	numBytesRead = getsUSBUSART(USB_In_Buffer,64);

	if(numBytesRead != 0)
	{
		// Copy data from USB buffer to our buffer
		for(cdc_rx_len = 0; cdc_rx_len < numBytesRead; cdc_rx_len++)
		{
			// Check to see if we are in a CR/LF situation
			tst_char = USB_In_Buffer[cdc_rx_len];
			if (g_echo_enable)
			{
				_mon_putc(tst_char);
				if (kCR == tst_char)
				{
					_mon_putc(kLF);
				}
				if (kBS == tst_char)
				{
					_mon_putc(' ');
					_mon_putc(kBS);
				}
			}
			if (
				!in_cr 
				&& 
				(
					kCR == tst_char
					||
					kLF == tst_char
				)
			)
			{
				in_cr = TRUE;
				g_RX_buf[g_RX_buf_in] = kCR;
				g_RX_buf_in++;
			
				// At this point, we know we have a full packet
				// of information from the PC to parse
				got_full_packet = TRUE;
			}
			else if (
				tst_char != kCR
				&&
				tst_char != kLF
			)
			{
				in_cr = FALSE;
				if (kBS == tst_char)
				{
					// Check to see that we're not already at the beginning
					if (g_RX_buf_in != g_RX_buf_out)
					{
						// If we have backspace, then handle that here
						// Then decriment the input pointer
						if (g_RX_buf_in > 0)
						{
							g_RX_buf_in--;
						}
						else
						{
							g_RX_buf_in = kRX_BUF_SIZE - 1;
						}
					}
					continue;
				}
				else
				{
					// Only add a byte if it is not a CR or LF or BS
					g_RX_buf[g_RX_buf_in] = tst_char;
					g_RX_buf_in++;
				}
			}
			else
			{
				continue;
			}
			// Check for buffer wraparound
			if (kRX_BUF_SIZE == g_RX_buf_in)
			{
				g_RX_buf_in = 0;
			}
			// If we hit the out pointer, then this is bad.
			if (g_RX_buf_in == g_RX_buf_out)
			{
				bitset (error_byte, kERROR_BYTE_RX_BUFFER_OVERRUN);
				break;
			}
			// Now, if we've gotten a full command (user send <CR>) then
			// go call the code that deals with that command, and then
			// keep parsing. (This allows multiple small commands per packet)
			if (got_full_packet)
			{
				parse_packet ();
				got_full_packet = FALSE;
			}
			//PrintErrors ();
		}		
	}

	//PrintErrors();

	// Go send any data that needs sending to PC
	check_and_send_TX_data ();
}

// This routine checks to see if any of the bits in error_byte
// are set, and if so, prints out the corresponding error string.
void PrintErrors (void)
{
	unsigned char Bit;

	// Check for any errors logged in error_byte that need to be sent out
	if (error_byte)
	{
		for (Bit = 0; Bit < 8; Bit++)
		{
			if (bittst (error_byte, Bit))
			{
				printf (ErrorStrings[Bit]);
			}
		}
		error_byte = 0;
	}
}

// This is our replacement for the standard putc routine
// This enables printf() and all related functions to print to
// the USB output (i.e. to the PC) buffer
void _mon_putc (char c)
{
	// Only add chars to USB buffer if it's configured!
    if((USBDeviceState < CONFIGURED_STATE)||(USBSuspendControl==1))
	{
		return;
	}

	// We need to check to see if adding this character will
	// cause us to become overfull.
	// We want to sit and just process USB tasks if our buffer
	// is full.
	if (g_TX_buf_length >= (kTX_BUF_SIZE - 2))
	{
		while (g_TX_buf_length > 0)
		{
			// In this case, we want to puase for a moment, send out these
			// characers to the PC over USB, and then clear out out buffer.
			check_and_send_TX_data();
		}
	}

	// Copy the character into the output buffer
	g_TX_buf[g_TX_buf_in] = c;
	g_TX_buf_in++;
	g_TX_buf_length++;

	// Check for wrap around
	if (kTX_BUF_SIZE == g_TX_buf_in)
	{
		g_TX_buf_in = 0;
	}
	
	// Also check to see if we bumped up against our output pointer
	if (g_TX_buf_in == g_TX_buf_out)
	{
		bitset (error_byte, kERROR_BYTE_TX_BUF_OVERRUN);
		g_TX_buf_in = 0;
		g_TX_buf_out = 0;
		g_TX_buf_length = 0;
	}
	return;
}

// In this function, we check to see it is OK to transmit. If so
// we see if there is any data to transmit to PC. If so, we schedule
// it for sending.
void check_and_send_TX_data (void)
{
	char temp;
	unsigned char i;
	char TempBuf[64];

	// Only send if there's something there to send
	if (g_TX_buf_length != 0)
	{
		// We're going to sit and spin and wait until
		// can transmit
		while (!mUSBUSARTIsTxTrfReady ())
		{
			USBDeviceTasks();
			CDCTxService();
		}

		// Now copy over all of the FIFO bytes into our temp buffer
		for (i = 0; i < g_TX_buf_length; i++)
		{
			TempBuf[i] = g_TX_buf[g_TX_buf_out];
			g_TX_buf_out++;
			if (g_TX_buf_out == kTX_BUF_SIZE)
			{
				g_TX_buf_out = 0;
			}
		}

		putUSBUSART (TempBuf, g_TX_buf_length);
		g_TX_buf_length = 0;
		g_TX_buf_out = g_TX_buf_in;

		USBDeviceTasks();
		CDCTxService();
	}
}


// Look at the new packet, see what command it is, and 
// route it appropriately. We come in knowing that
// our packet is in g_RX_buf[], and that the beginning
// of the packet is at g_RX_buf_out, and the end (CR) is at
// g_RX_buf_in. Note that because of buffer wrapping,
// g_RX_buf_in may be less than g_RX_buf_out.
void parse_packet(void)
{
	unsigned char	CommandNumber = 0;
	unsigned char	CmdName1 = 0;
	unsigned char	CmdName2 = 0;

	// Always grab the first character (which is the first byte of the command)
	CmdName1 = toupper (g_RX_buf[g_RX_buf_out]);
	if (kCR == CmdName1)
	{
		goto parse_packet_end;
	}

	// Now loop through the array of commands, trying to find
	// a match based upon the two (or one) first characters of the command
	while (CommandList[CommandNumber].CommandPtr != NULL && CommandNumber < 250)
	{
		// If the two name characters match, then call the command to do the work
		if (CmdName1 == CommandList[CommandNumber].Name1)
		{
			CommandList[CommandNumber].CommandPtr();
			goto parse_packet_end;
		}
		else
		{
			CommandNumber++;
		}
	}
	
	// If we get here then we did not find a match for our command characters
	if (0 == CmdName2)
	{
		// Send back 'unknown command' error
		printf ("\nERROR_UC\r\n");
	}

	bitset (error_byte, kERROR_BYTE_PRINTED_ERROR);

parse_packet_end:
	// Double check that our output pointer is now at the ending <CR>
	// If it is not, this indicates that there were extra characters that
	// the command parsing routine didn't eat. This would be an error and needs
	// to be reported. (Ignore for Reset command because FIFO pointers get cleared.)
	if (
		(g_RX_buf[g_RX_buf_out] != kCR)
		&& 
		(0 == error_byte)
		&&
		(
			('R' != CmdName1)
			||
			(0 != CmdName2)
		)
	)
	{
		bitset (error_byte, kERROR_BYTE_EXTRA_CHARACTERS);
	}

	// Clean up by skipping over any bytes we haven't eaten
	// This is safe since we parse each packet as we get a <CR>
	// (i.e. g_RX_buf_in doesn't move while we are in this routine)
	g_RX_buf_out = g_RX_buf_in;

	// Always try to print out an OK packet here. If there was an 
	// error, nothing will print out.
//	PrintAck();
}

// Print out the positive acknoledgement that the packet was received
// if we have acks turned on.
void parse_BL_packet(void)
{
    unsigned int dma_status;
    unsigned int int_status;
 
	// Kill USB so that we always re-enumerate when we hit the bootloader
	USBModuleDisable();

	// Set the software key
	SoftwareKey = 0x12345678;

	// TEMP : For reset testing
	/* The following code illustrates a software Reset */
	/* perform a system unlock sequence */
    mSYSTEMUnlock(int_status, dma_status);
	
	/* set SWRST bit to arm reset */
    RSWRSTSET = 1;
   
    /* read RSWRST register to trigger reset */
    volatile int* p = &RSWRST;
    *p;
   
    /* prevent any unwanted code execution until reset occurs*/
    while(1);
}



void PrintAck(void)
{
	if (g_ack_enable && !error_byte)
	{
		printf ((const char *)st_OK);
	}
}


// Look at the string pointed to by ptr
// There should be a comma where ptr points to upon entry.
// If not, throw a comma error.
// If so, then look for up to three bytes after the
// comma for numbers, and put them all into one
// byte (0-255). If the number is greater than 255, then
// thow a range error.
// Advance the pointer to the byte after the last number
// and return.
ExtractReturnType extract_number(
	ExtractType Type, 
	void * ReturnValue, 
	unsigned char Required
)
{
	signed long Accumulator;
	unsigned char Negative = FALSE;

	// Check to see if we're already at the end
	if (kCR == g_RX_buf[g_RX_buf_out])
	{
		if (0 == Required)
		{
			bitset (error_byte, kERROR_BYTE_MISSING_PARAMETER);
		}
		return (kEXTRACT_MISSING_PARAMETER);
	}

	// Check for comma where ptr points
	if (g_RX_buf[g_RX_buf_out] != ',')
	{
		if (0 == Required)
		{
			printf ((const char *)"!5 Err: Need comma next, found: '%c'\r\n", g_RX_buf[g_RX_buf_out]);
			bitset (error_byte, kERROR_BYTE_PRINTED_ERROR);
		}
		return (kEXTRACT_COMMA_MISSING);
	}

	// Move to the next character
	advance_RX_buf_out ();

	// Check for end of command
	if (kCR == g_RX_buf[g_RX_buf_out])
	{
		if (0 == Required)
		{
			bitset (error_byte, kERROR_BYTE_MISSING_PARAMETER);
		}
		return (kEXTRACT_MISSING_PARAMETER);
	}
	
	// Now check for a sign character if we're not looking for ASCII chars
	if (
		('-' == g_RX_buf[g_RX_buf_out]) 
		&& 
		(
			(kASCII_CHAR != Type)
			&&
			(kUCASE_ASCII_CHAR != Type)
		)
	)
	{
		// It's an error if we see a negative sign on an unsigned value
		if (
			(kUCHAR == Type)
			||
			(kUINT == Type)
		)
		{
			bitset (error_byte, kERROR_BYTE_PARAMETER_OUTSIDE_LIMIT);
			return (kEXTRACT_PARAMETER_OUTSIDE_LIMIT);
		}
		else
		{
			Negative = TRUE;
			// Move to the next character
			advance_RX_buf_out ();
		}
	}

	// If we need to get a digit, go do that
	if (
		(kASCII_CHAR != Type)
		&&
		(kUCASE_ASCII_CHAR != Type)
	)
	{
		extract_digit(&Accumulator, 5);
	}
	else
	{
		// Otherwise just copy the byte
		Accumulator = g_RX_buf[g_RX_buf_out];
	
		// Force uppercase if that's what type we have
		if (kUCASE_ASCII_CHAR == Type)
		{
			Accumulator = toupper (Accumulator);
		}
		
		// Move to the next character
		advance_RX_buf_out ();
	}

	// Handle the negative sign
	if (Negative)
	{
		Accumulator = -Accumulator;
	}

	// Range check the new value
	if (
		(
			kCHAR == Type
			&&
			(
				(Accumulator > 127)
				||
				(Accumulator < -128)
			)
		)
		||
		(
			kUCHAR == Type
			&&
			(
				(Accumulator > 255)
				||
				(Accumulator < 0)
			)
		)
		||
		(
			kINT == Type
			&&
			(
				(Accumulator > 32767)
				||
				(Accumulator < -32768)
			)
		)
		||
		(
			kUINT == Type
			&&
			(
				(Accumulator > 65535)
				||
				(Accumulator < 0)
			)
		)
	)
	{
		bitset (error_byte, kERROR_BYTE_PARAMETER_OUTSIDE_LIMIT);
		return (kEXTRACT_PARAMETER_OUTSIDE_LIMIT);
	}

	// If all went well, then copy the result
	switch (Type)
	{	
		case kCHAR:
			*(signed char *)ReturnValue = (signed char)Accumulator;
			break;
		case kUCHAR:
		case kASCII_CHAR:
		case kUCASE_ASCII_CHAR:
			*(unsigned char *)ReturnValue = (unsigned char)Accumulator;
			break;
		case kINT:
			*(signed int *)ReturnValue = (signed int)Accumulator;
			break;
		case kUINT:
			*(unsigned int *)ReturnValue = (unsigned int)Accumulator;
			break;
		default:
			return (kEXTRACT_INVALID_TYPE);
	}	
	return(kEXTRACT_OK);	
}

// Loop 'digits' number of times, looking at the
// byte in input_buffer index *ptr, and if it is
// a digit, adding it to acc. Take care of 
// powers of ten as well. If you hit a non-numerical
// char, then return FALSE, otherwise return TRUE.
// Store result as you go in *acc.
signed char extract_digit(signed long * acc,	unsigned char digits)
{
	unsigned char val;
	unsigned char digit_cnt;
	
	*acc = 0;

	for (digit_cnt = 0; digit_cnt < digits; digit_cnt++)
	{
		val = g_RX_buf[g_RX_buf_out];
		if ((val >= 48) && (val <= 57))
		{
			*acc = (*acc * 10) + (val - 48);
			// Move to the next character
			advance_RX_buf_out ();
		}
		else
		{
			return (FALSE);
		}
	}
	return (TRUE);
}

// For debugging, this command will spit out a bunch of values.
//void print_status(void)
//{
////	printf( 
////		(const char *)"Status=%i\r\n"
////		,ISR_D_FIFO_length
////	);
//}

