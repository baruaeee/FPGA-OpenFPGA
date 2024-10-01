/* $Workfile:   usb_main.c $									 									*/
/* $Revision: 1.2 $                                            	*/
/* $Author: Andreas Voggeneder $                 								*/
/* $Date: 2003/08/14 08:02:29 $																	*/
/* Description:	USB HID Demo, main file			                    */
/*																											        */
/* Remarks:     No remarks.                                     */


#include <8052.h>
#include <string.h>
#include <stdio.h>
#include "scan_key.h"
#include "usb.h"
#include "usb_regs.h"
 
/**********************************************************************/
/* This is the initialization code for the interface                  */
/**********************************************************************/         
void init_mc()
{
  SCON = 0x52;    // SCON 
  TMOD = 1;
  T2CON=0;
  RCAP2L=0xE6;        // 57600 Baud @ 48 MHz
	RCAP2H=0xff;
  T2CON=0x30;
  TR2=1;
  P1=0;

//  puts("USB-HID Keyboard\r\n");
}
#define KEY P0_5;


void _wait_ms(unsigned int dly) {
  _asm
  .globl _wait_ms
_wait_ms:  
        mdly = 48000
        
        mov R7,dpl    ; Argument passed in DPTR
        mov R6,dph
        mov A,R7 			; Low
       	jz wt1  
       	inc R6
wt1: 	  mov DPTR,#(65536-(mdly/8))
wt2: 	  inc DPTR ;  1
       	mov A,DPH ; 2
       	orl A,DPL ; 2
       	jnz wt2 ;  3 = 8 cycles @ 48 MHz
       	djnz R7,wt1 
       	djnz R6,wt1 
       	ret
  _endasm;
}

void _wait_us(unsigned int dly) {
  _asm
  .globl _wait_us
_wait_us:  
        mdly = 48000
        
        mov R7,dpl    ; Argument passed in DPTR
        mov R6,dph
 	      mov A,R7 			; Low
 	      jz wt3  
 	      inc R6
wt3: 	  mov DPTR,#(65536-(mdly/8000))
wt4: 	  inc DPTR ;  1
 	      mov A,DPH ; 2
 	      orl A,DPL ; 2
 	      jnz wt4 ;  3 = 8 cycles @ 48 MHz
 	      djnz R7,wt3 
 	      djnz R6,wt3 
 	      ret
  _endasm;
}

void putchar(char ch) {
    while(!TI);
    SBUF=ch;
    TI=0;
}

/**********************************************************************/
/**********************************************************************/
/* This is the main program loop:                                    **/
/**********************************************************************/
/**********************************************************************/
int main()
{
	  init_scan();
	  init_mc();                          /* init microcontroller       */
    init_usb();                         /* initialize bridge          */

    while (1)                           /* loop forever               */
    {                                
      poll_usb();

  		/* polling the usb-bridge     */
  		if (usb_ready())
      {
        if (scan_matrix())              /* search for pressed keys,   */ 
  			{
  				unsigned char data Rep[6];
  				unsigned char ModByte = 0;
  				
  				ModByte = kbd_get_report(Rep);
          usb_set_keys(Rep, ModByte);
  			}
      }                         
    }               
}
