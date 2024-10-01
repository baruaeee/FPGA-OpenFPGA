/* $Workfile:   fpga_lib.h $									 						  		*/
/* $Revision: 1.7 $                                             */
/* $Author: hse00045 $                           	              */
/* $Date: 2003/09/11 13:01:39 $																  */
/* Description:	Library für VHDL Peripherals                    */
/*																											        */
/* Remarks:     No remarks.                                     */


#ifndef _FPGA_LIB_
#define _FPGA_LIB_ 

#include "fpga_reg.h"

// Colors of VGA Unit
#define BLACK       0
#define BLUE        1
#define GREEN       2
#define CYAN        3
#define RED         4
#define MAGENTA     5
#define BROWN       6
#define LIGHTGRAY   7 
#define DARKGRAY    8
#define LIGHTBLUE   9
#define LIGHTGREEN  10
#define LIGHTCYAN   11
#define LIGHTRED    12
#define LIGHTMAGENTA  13
#define YELLOW      14
#define WHITE       15

//#define INVERS_CHAR 0x80    // or this to ASCII- Code to draw it inverted
void select_vmem();
void select_colmem();
void select_cgmem();
void Clrscr();
void Gotoxy(unsigned char x, unsigned char y);
void InitScreen();
void writechar2(char c);
void putchar2(char c);
void WriteScreenxyf(unsigned char x, unsigned char y,char code * pText);
void WriteScreen(char *pText);
void SetCurrentColor(unsigned char Color);
void SetCurrentBkColor(unsigned char Color);
void SetColor(unsigned char x, unsigned char y,unsigned char fgColor,unsigned char bgColor);

unsigned char InitKbd();
unsigned char GetKey();
void PutKbd(unsigned char dt);

#endif
