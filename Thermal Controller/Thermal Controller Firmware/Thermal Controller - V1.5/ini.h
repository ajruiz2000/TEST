/* ini.h */


#define kLUTableLen 25
#define ThermalStage2_5 //Valid types 2.5 or 4

static int lookUpTable [3][kLUTableLen] =
{
{190, 180, 170, 160, 150, 140, 130, 120, 110, 100, 90, 80, 
70, 60, 50, 40, 30, 25, 10, 0, -10, -20, -30, -40, -500}, //Athena Temps
{20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20, 20,
20, 20, 20, 20, 20, 20, 15, 0, -5,  -10, -15, -20, -20 }, //NesLabs Temps
{1,   1,   1,   1,   1,   1,  1,  1,   1,   0,   0,  0,
0,  0,  0,  0,  0,  0,  0,  0, 0,   0,   0,   0,   0,  }  //Power DIO - 1 is ON
};









