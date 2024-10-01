/* $Workfile:   4gewinnt.c $									  								*/
/* $Revision: 1.1 $                                            	*/
/* $Author: hse00045 $                           								*/
/* $Date: 2006/06/05 18:12:12 $																	*/
/* Description:	4-in-aline game                                 */
/*																											        */
/* Remarks:     No remarks.                                     */
#include <8052.h>

// Standard Input/Output functions
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "fpga_reg.h" 
#include "fpga_lib.h"
#include "kb.h"
#include "delay.h"

// Declare your global variables here
`

// PS2-keyb
// 0=0x45 / 0xF0,0x45
// 1=0x16 / 0xF0,0x16
// 2=0x1E / 0xF0,0x1E
// 3=0x26 / 0xF0,0x26
// 4=0x25 / 0xF0,0x25
// 5=0x2E / 0xF0,0x2E
// 6=0x36 / 0xF0,0x36
// 7=0x3D / 0xF0,0x3D
// 8=0x3E / 0xF0,0x3E
// 9=0x46 / 0xF0,0x46
// F1=0x05 / 0xF0,0x05
// F2=0x06 / 0xF0,0x06
// F3=0x04 / 0xF0,0x04
// F4=0x0C / 0xF0,0x0C


/*
	Global Variables
*/
int key;



void _wait_ms(unsigned int dly) {
  _asm
  .globl _wait_ms
_wait_ms:  
        mdly = 25000
        
        mov R7,dpl    ; Argument passed in DPTR
        mov R6,dph
        mov A,R7 			; Low
       	jz wt1  
       	inc R6
wt1: 	  mov DPTR,#(65536-(mdly/8))		;mov DPTR,#(-1000000/CPU_NSEC/6)
wt2: 	  inc DPTR ;  1
       	mov A,DPH ; 2
       	orl A,DPL ; 2
       	jnz wt2 ;  3 = 8 cycles @ 25 MHz
       	djnz R7,wt1 
       	djnz R6,wt1 
       	ret
  _endasm;
}


void main(void)
{
//  TMOD = 1;
#ifndef MON51
  SCON = 0x52;    /* SCON */ 
  T2CON=0;
  RCAP2L=0xAE;			   // 9600 Baud @ 25 MHz
//  RCAP2L=0xcc;			// 9600 Baud @ 16 MHz
  RCAP2H=0xff;
  T2CON=0x30;
  TR2=1;
#endif
  TR0=1;

  sevseg_ctrl=01;
  sevseg_data0=0x00;
  sevseg_data1=0x00;
  sevseg_en=0xff;
  InitScreen();
//_wait_ms(1000);
  init_kb();
  EA=1;  // Enable all IRQ
//VIDEO_BGCOL = 0x02;	// dark blue
   SetCurrentColor(YELLOW);
//   textbackground(RED); 
  SetCurrentBkColor(RED);
  Gotoxy(28,1);
  WriteScreen("   Example 20   ");
  Gotoxy(28,2);
  WriteScreen("  VGA and PS/2  ");
  Gotoxy(28,3);
  WriteScreen("(c) Elektor 2006");
  SetCurrentBkColor(BLACK);
  SetCurrentColor(LIGHTGRAY);
  Gotoxy(0, 5);
  WriteScreen("This example shows the use of our VGA interface. This interface is");
  Gotoxy(0, 6);
  WriteScreen("connected to a T51 controller. Also included is a PS/2 controller");
  Gotoxy(0, 7);
  WriteScreen("to connect to a keyboard.");
  Gotoxy(0, 7);
  WriteScreen("Type any message on the keyboard. Using F1 through F4 will change");
  Gotoxy(0, 8);
  WriteScreen("the colour of the text.");
 
  Gotoxy(0,10);
 
  while (1) 
  {
    key=getkbdchar();
    if(key>=0x81)
    {
  	//* Extened Key Press 
      switch(key)
      {
        case 0x81:	// F1 
          SetCurrentColor(LIGHTGRAY);
        break;
        case 0x82: // F2 
          SetCurrentColor(LIGHTBLUE);
        break;
        case 0x83: // F3 
          SetCurrentColor(YELLOW);
        break;
        case 0x84: // F4 
          SetCurrentColor(LIGHTGREEN);
        break;
        default:
      }
      sevseg_data0=0x11;
    }
    else
    {
	  if (key=='\r')	// TRANSLATE '\r' (ENTER) into '\r' and '\n'
	  {
	    putchar2('\r');
	    putchar2('\n');
	  } 
	  else
	    putchar2(key);
    }
  }
}

#define gotoxy Gotoxy
#define textcolor SetCurrentColor
#define cprintf WriteScreenf  
#define delay _wait_ms
