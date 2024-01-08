/******************************************************************************
 *
 *               Microchip Memory Disk Drive File System
 *
 ******************************************************************************
 * FileName:        CF- Bit transaction.h
 * Dependencies:    GenericTypeDefs.h
 *					FSDefs.h
 *                  FSconfig.h
 * Processor:       PIC18/PIC24/dsPIC30/dsPIC33
 * Compiler:        C18/C30
 * Company:         Microchip Technology, Inc.
 * Version:         1.1.0
 *
 * Software License Agreement
 *
 * The software supplied herewith by Microchip Technology Incorporated
 * (the “Company”) for its PICmicro® Microcontroller is intended and
 * supplied to you, the Company’s customer, for use solely and
 * exclusively on Microchip PICmicro Microcontroller products. The
 * software is owned by the Company and/or its supplier, and is
 * protected under applicable copyright laws. All rights are reserved.
 * Any use in violation of the foregoing restrictions may subject the
 * user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this
 * license.
 *
 * THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 * TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 * IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 *****************************************************************************/

#define USE_COMPACTFLASH

#include "GenericTypeDefs.h"
#include "FSconfig.h"
#include "FSDefs.h"


/********************************************************************************/
/*                            Macros                                            */
/********************************************************************************/

#define MDD_CFBT_DATABoutput	MDD_CFBT_DATADIR = 0;		// make the data bus active output
#define MDD_CFBT_DATABinput	    MDD_CFBT_DATADIR = 0xff;	// make the data bus input hi-z






/**********************************************************************************/
/*                              Defines and structures                            */
/**********************************************************************************/

#define	cmdCHECK_POWER_MODE					0xE5
#define	cmdEXECUTE_DRIVE_DIAGNOSTIC			0x90
#define	cmdERASE_SECTORS					0xC0
#define	cmdFLUSH_CACHE						0xE7
#define	cmdFORMAT_TRACK						0x50
#define	cmdIDENTIFY_DEVICE					0xEC
#define	cmdIDLE								0xE3
#define	cmdIDLE_IMMEDIATELY					0xE1
#define	cmdINITIALIZE_DRIVE_PARAMETERS		0x91
#define	cmdKM_STRUCTURE_READ				0xB9
#define	cmdKM_READ_KEYING_MATERIAL			0xB9
#define	cmdKM_CHANGE_KM_VALUE				0xB9
#define	cmdNOP								0x00
#define	cmdREAD_BUFFER						0xE4
#define	cmdREAD_DMA							0xC8
#define	cmdREAD_LONG_SECTOR					0x22
#define	cmdREAD_MULTIPLE					0xC4
#define	cmdREAD_SECTORS						0x20
#define	cmdREAD_VERIFY_SECTORS				0x40
#define	cmdRECALIBRATE						0x10
#define	cmdREQUEST_SENSE					0x03
#define	cmdSEC_DISABLE_PASSWORD				0xF6
#define	cmdSEC_ERASE_PREPARE				0xF3
#define	cmdSEC_ERASE_UNIT					0xF4
#define	cmdSEC_FREEZE_LOCK					0xF5
#define	cmdSEC_SET_PASSWORD					0xF1
#define	cmdSEC_UNLOCK						0xF2
#define	cmdSEEK								0x70
#define	cmdSET_FEATURES						0xEF
#define	cmdSET_MULTIPLE_MODE				0xC6
#define	cmdSET_SLEEP_MODE					0xE6
#define	cmdSTANDBY							0xE2
#define	cmdSTANDBY_IMMEDIATE				0xE0
#define	cmdTRANSLATE_SECTOR					0x87
#define	cmdWEAR_LEVEL						0xF5
#define	cmdWRITE_BUFFER						0xE8
#define	cmdWRITE_DMA						0xCA
#define	cmdWRITE_LONG_SECTOR				0x32
#define	cmdWRITE_MULTIPLE					0xC6
#define	cmdWRITE_MULTIPLE_NOERASE			0xCD
#define	cmdWRITE_SECTOR						0x30
#define	cmdWRITE_SECTOR_NOERASE				0x38
#define	cmdWRITE_VERIFY						0x3C

//----------------------------------------------------------------------
// ATA-CF registers definition
#define R_DATA	0
#define R_ERROR 	1
#define R_COUNT	2
#define R_SECT	3
#define R_CYLO	4
#define R_CYHI	5
#define R_DRIVE	6
#define R_CMD		7
#define R_STATUS	7

//----------------------------------------------------------------------
// CF-ATA commands definition
#define C_SECTOR_READ     0x20
#define C_DRIVE_DIAG      0x90
#define C_DRIVE_IDENT     0xEC
#define C_SECTOR_WRITE    0x30

//----------------------------------------------------------------------
// CF_STATUS definitions
#define S_READY	0x58
#define S_ERROR	0x51

// return values

#define OUTPUT	0
#define INPUT	1

// booleans
#define FALSE   0
#define TRUE    !FALSE

#define MDD_CFBT_MediaInitialize()   TRUE

/***************************************************************************/
/*                            Prototypes                                   */
/***************************************************************************/

DWORD ReadCapacity(void);
WORD ReadSectorSize(void);
void MDD_CFBT_InitIO( void);
BYTE MDD_CFBT_MediaDetect( void);
BYTE MDD_CFBT_WriteProtectState (void);
BYTE MDD_CFBT_CFread( BYTE add);
void MDD_CFBT_CFwrite( BYTE add, BYTE d);
void MDD_CFBT_CFwait(void);

BYTE MDD_CFBT_SectorRead( DWORD lda, BYTE * buf);
BYTE MDD_CFBT_SectorWrite( DWORD lda, BYTE * buf, BYTE allowWriteToZero);

#ifdef USE_PIC24
	extern BYTE ReadByte( BYTE* pBuffer, WORD index );
	extern WORD ReadWord( BYTE* pBuffer, WORD index );
	extern DWORD ReadDWord( BYTE* pBuffer, WORD index );
#endif
