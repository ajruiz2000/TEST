/******************************************************************************
 *
 *                Microchip Memory Disk Drive File System
 *
 ******************************************************************************
 * FileName:        FSIO.h
 * Dependencies:    GenericTypeDefs.h
 *					FSconfig.h
 *					FSDefs.h
 *					stddef.h
 * Processor:       PIC18/PIC24/dsPIC30/dsPIC33/PIC32
 * Compiler:        C18/C30/C32
 * Company:         Microchip Technology, Inc.
 * Version:         1.1.1
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

#ifndef  FS_DOT_H
#define  FS_DOT_H

#include "GenericTypeDefs.h"
#include "FSconfig.h"
#include "MDD File System\FSDefs.h" 
#include "stddef.h"

#ifdef USE_SD_INTERFACE_WITH_SPI
    #include    "MDD File System\SD-SPI.h"
#endif
#ifdef USE_CF_INTERFACE_WITH_PMP
    #include    "MDD File System\CF-PMP.h"
#endif
#ifdef USE_MANUAL_CF_INTERFACE
    #include    "MDD File System\CF- Bit transaction.h"
#endif
#ifdef USE_USB_INTERFACE               
    #include    "USB\usb_host_msd_scsi.h"
#endif


//#ifndef __C30__
    #ifdef USE_MANUAL_CF_INTERFACE
        #ifdef USE_SD_INTERFACE_WITH_SPI
            #error This library only supports one physical layer
        #endif
        #ifdef USE_CF_INTERFACE_WITH_PMP
            #error This library only supports one physical layer
        #endif
        #ifdef USE_USB_INTERFACE
            #error This library only supports one physical layer
        #endif
    #endif
    #ifdef USE_SD_INTERFACE_WITH_SPI
        #ifdef USE_CF_INTERFACE_WITH_PMP
            #error This library only supports one physical layer
        #endif
        #ifdef USE_USB_INTERFACE
            #error This library only supports one physical layer
        #endif
    #endif
    #ifdef USE_CF_INTERFACE_WITH_PMP
        #ifdef USE_USB_INTERFACE
            #error This library only supports one physical layer
        #endif
    #endif
//#endif


/*******************************************************************/
/*                     Strunctures and defines                     */
/*******************************************************************/


//#ifdef USE_PIC18
//	#define NULL 0
//#endif

#define FALSE	0
#define TRUE	!FALSE

#ifndef SEEK_SET
	#define SEEK_SET 0
#endif
#ifndef SEEK_CUR
	#define SEEK_CUR 1
#endif
#ifndef SEEK_END
	#define SEEK_END 2
#endif

#define APPEND "a"
#define WRITE "w"
#define READ "r"

#ifndef intmax_t
	#ifdef __PIC24F__
		#define intmax_t long long
	#elif defined __PIC24H__
		#define intmax_t long long
	#elif defined __dsPIC30F__
		#define intmax_t long long
	#elif defined __dsPIC33F__
		#define intmax_t long long
	#endif
#endif

typedef struct
{
    unsigned    write :1;           // set if the file was opened in a write mode 
	unsigned    FileWriteEOF :1;    // set if we are writing and have reached the EOF
}FILEFLAGS;


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

enum{
	LOOK_FOR_EMPTY_ENTRY,
	LOOK_FOR_MATCHING_ENTRY
};


#define SHORT_FILE_NAME_LENGTH	8
#define SHORT_FILE_EXT_LENGTH		3
#define TOTAL_FILE_SIZE			SHORT_FILE_NAME_LENGTH+SHORT_FILE_EXT_LENGTH+1  // +1 for DOT

/* // There are 16 entries per sector. SECTOR size is 512 bytes. Each entry in ROOT takes 32 bytes. 
    So, 512/32 = 16. 16 file entries can be made in each sector. */
#define MASK_MAX_FILE_ENTRY_LIMIT_BITS      0x0f    // 4-bits MASK

// 2^4 = 16 entries per sector.
#define VALUE_BASED_ON_ENTRIES_PER_CLUSTER 	4

// For all FAT types, Dot Dot entry value is "0" (Even for FAT32)
#define VALUE_DOTDOT_CLUSTER_VALUE_FOR_ROOT	0
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define FILE_NAME_SIZE	    11


typedef struct 
{
    DISK *      	dsk;            // disk structure
    DWORD         	cluster;        // first cluster
    DWORD         	ccls;           // current cluster in file
    WORD         	sec;            // sector in current cluster
    WORD         	pos;            // position in current sector
    DWORD         	seek;           // position in the file
    DWORD         	size;           // file size
    FILEFLAGS   	flags;			// Write and EOF flags
    WORD     		time;           // last update time
    WORD     		date;           // last update date
    char     		name[FILE_NAME_SIZE];       // Needed to make it WORD wide for external mem
    WORD     		entry;          // entry position in cur directory
    WORD     		chk;            // FILE structure checksum = ~( entry + name[0])
    WORD     		attributes;     // the bare bones attributes
    DWORD     		dirclus;        // base cluster of directory
    DWORD     		dirccls;        // current cluster
} FSFILE;

typedef struct
{
	// User accessed values
	char			filename[FILE_NAME_SIZE + 2];	// File name
	unsigned char	attributes;		// The file's attributes
	unsigned long	filesize;		// Size of the file
	unsigned long 	timestamp;		// File's create time
	// For internal use only
	unsigned int 	entry;			// The file entry
	char			searchname[FILE_NAME_SIZE + 2];	// Search string
	unsigned char	searchattr;		// The search attributes
	unsigned int	cwdclus;		// The cwd for this search
	unsigned char	initialized;	// Check for if FindFirst was called
} SearchRec;


/***************************************************************************
* Prototypes                                                               *
***************************************************************************/

int FSInit(void);

FSFILE * FSfopen(const char * fileName, const char *mode);

#ifdef ALLOW_PGMFUNCTIONS
	FSFILE * FSfopenpgm(const rom char * fileName, const rom char *mode);
	int FindFirstpgm (const rom char * fileName, unsigned int attr, SearchRec * rec);
	int FSchdirpgm (const rom char * path);
    #ifdef ALLOW_WRITES
    	int FSremovepgm (const rom char * fileName);
    	int FSmkdirpgm (const rom char * path);
    	int FSrmdirpgm (const rom char * path, unsigned char rmsubdirs);
    	int FSrenamepgm (const rom char * fileName, FSFILE * fo);
    #endif
#endif


int FSfclose(FSFILE *fo);
//returns 0 on success. It returns EOF if any errors were detected.


void FSrewind (FSFILE *fo);

size_t FSfread(void *ptr, size_t size, size_t n, FSFILE *stream);
//On success fread returns the number of items (not bytes) actually read.
//On end-of-file or error it returns a short count or 0


int FSfseek(FSFILE *stream, long offset, int whence);
// return 0 if success. returns -1 on error

long FSftell(FSFILE *fo);
// returns the current file pointer position on success.
// It returns -1L on error.

int FSfeof( FSFILE * stream );
// Returns non-zero if EOF reached, else returns 0

#ifdef ALLOW_FORMATS
int FSformat (char mode, long int serialNumber, char * volumeID);
// Mode: 1- write new boot sec and erase FAT and root, 0 - just erase FAT and root
// returns 0 on success, otherwise returns EOF
#endif

#ifdef ALLOW_WRITES
int FSrename (const char * fileName, FSFILE * fo);
// Rename a file to fileName
// Returns 0 on success, -1 otherwise
// If dirs are enabled, passing in a NULL pointer for the second argument will 
//    rename the current working directory

int FSremove (const char * fileName);
//returns 0 on success, otherwise returns -1

size_t FSfwrite(const void *ptr, size_t size, size_t n, FSFILE *stream);
//On successful completion fwrite returns the number of items (not bytes) actually written.
//On error it returns a short count or 0.
#endif

#ifdef ALLOW_DIRS

int FSchdir (char * path);
// Returns 0 if successful, otherwise returns EOF

char * FSgetcwd (char * path, int numbchars);
// Returns NULL if unsuccessful, otherwise returns pointer to
// string containing cwd path name

#ifdef ALLOW_WRITES
int FSmkdir (char * path);
// Returns 0 if successful, otherwise returns EOF

int FSrmdir (char * path, unsigned char rmsubdirs);
// Returns 0 if successful, otherwise returns EOF
#endif

#endif

#ifdef USERDEFINEDCLOCK
int SetClockVars (unsigned int year, unsigned char month, unsigned char day, unsigned char hour, unsigned char minute, unsigned char second);
// Set the clock variables
// Returns 0 if values are valid, -1 otherwise
// Year 1980-2107, month 1-12, day 1-31, hour 0-23, minute 0-59, second 0-59
#endif

#ifdef ALLOW_FILESEARCH
int FindFirst (const char * fileName, unsigned int attr, SearchRec * rec); 
// Returns 0 if successful, -1 otherwise
// Your SearchRec structure must be initialized with FindFirst before
// calling FindNext or FindPrev
// fileName can be in the format *.*, *.EXT, FILENAME.*, or FILENAME.EXT
// If you are searching for a dir, filename can be of the format
//		FILENAME or *

int FindNext (SearchRec * rec); 
#endif

#ifdef ALLOW_FSFPRINTF
	#ifdef USE_PIC18
		int FSfprintf (FSFILE *fptr, const rom char *fmt, ...);
	#else
		int FSfprintf (FSFILE *fptr, const char * fmt, ...);
	#endif
#endif



#endif
