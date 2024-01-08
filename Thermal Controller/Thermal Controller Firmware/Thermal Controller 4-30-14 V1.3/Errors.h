

//Global error flags
//overview can be used to determine if any error occurred >> 
//if (overview != 0)
//Specific error bits are set to 0 for false, 1 for true
//During initial development, each module can have its own Errors.h and bit flags
//Final merger only requires collecting all bit flags into single Errors.h
//Bit flags need to be reset at logical points, 
//e.g. at the start of a function that might set the flag
//Note - max of 64 flags in this scheme

#define kErrorTemp -500.0

union
{
	long long overview;
	struct
	{
		char setNLSetTemp		:1;
		char getNLSetTemp		:1;
		char getNLTemp			:1;
		char getNLStatus		:1;
		char initNL				:1;
		char setAthenaSetTemp	:1;
		char getAthenaSetTemp	:1;
		char getAthenaTemp		:1;
		char getAthenaStatus	:1;
		char initAthena			:1;
	} bits;
} errorFlag;

char glError;


