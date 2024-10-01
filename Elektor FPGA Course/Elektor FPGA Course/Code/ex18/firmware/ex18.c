/* $Workfile:   4gewinnt.c $                                                                    */
/* $Revision: 1.1 $                                             */
/* $Author: hse00045 $                                                          */
/* $Date: 2006/06/05 18:12:12 $                                                                 */
/* Description: 4-in-aline game                                 */
/*                                                                                                                  */
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
#include "i2c.h"
#include "lcd.h"

// Declare your global variables here


char idata LineBuf [17],TempBuf[17];

void Set_LED (unsigned char);

void _wait_ms(unsigned int dly) {
  _asm
  .globl _wait_ms
_wait_ms:  
        mdly = 25000
        
        mov R7,dpl    ; Argument passed in DPTR
        mov R6,dph
        mov A,R7            ; Low
        jz wt1
        inc R6
wt1:      mov DPTR,#(65536-(mdly/8))        ;mov DPTR,#(-1000000/CPU_NSEC/6)
wt2:      inc DPTR ;  1
        mov A,DPH ; 2
        orl A,DPL ; 2
        jnz wt2 ;  3 = 8 cycles @ 25 MHz
        djnz R7,wt1
        djnz R6,wt1
        ret
  _endasm;
}

//#define MON51

void main(void)
{
   unsigned char count;

   I2C_init();
   LCD_init();
   LCD_write_line ("   example 17",0);
   LCD_write_line ("   PS/2 DEMO",1);

  TMOD = 1;
#ifndef MON51
  SCON = 0x52;    /* SCON */
  T2CON=0;
  RCAP2L=0xAE;             // 9600 Baud @ 25 MHz
//  RCAP2L=0xcc;           // 9600 Baud @ 16 MHz
  RCAP2H=0xff;
  T2CON=0x30;
  TR2=1;
#endif
  TR0=1;

init_kb();
EA=1;				// Turn on the interrupts


strcpy(LineBuf,"----------------");
Set_LED (0x03);
count=0;
while (1) {
    int index;
    unsigned char key;
    key=getkbdchar();
    Set_LED (count++);
    for (index=0;index<15;index++) TempBuf[index]=LineBuf[index+1];
    TempBuf[15]=0;
    sprintf (LineBuf,"%s%c:",TempBuf,key);
    LCD_write_line (LineBuf,1);
   };
}


void Set_LED (unsigned char c)
{
	bit prev_EA;
	int i;
	prev_EA=EA;
EA=0x0; 		// Disable interrupts
PutKbd(0xED);
i = 100;
while(--i && ps2_tx_busy) {_wait_ms(1);}  // Wait until data transmitted
for(i=0;i<100;i++) 
{					  // Wait max 100 ms for aCK to be returned
  if(ps2_rxf) {break;}
  _wait_ms(1);
}
if (GetKey()==0xFA) 
{					  // If acknowledged, then send LED - data
  i=100;
  PutKbd(c & 0x07); // Send LED data
  while(--i && ps2_tx_busy) {_wait_ms(1);}  // Wait until data transmitted
  for(i=0;i<100;i++) 
  {					  // Wait max 100 ms for aCK to be returned
    if(ps2_rxf) {break;}
    _wait_ms(1);
  }
}
GetKey();
EA=prev_EA;	
}

#define delay _wait_ms

