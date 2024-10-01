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
#include "delay.h"
#include "kb.h"
 
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
  CFG_7SEG();
  //puts("PS/2 to USB-HID Keyboard Adapter\r\n");
}

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


/**********************************************************************/
/**********************************************************************/
/* This is the main program loop:                                    **/
/**********************************************************************/
/**********************************************************************/
int main()
{
//    unsigned char str_sent = 0;
    //mem_test();
	  init_mc();                          /* init microcontroller       */

    while(!init_kb()) {
      P1^=0xff;
      _wait_ms(1000);
    }
    EA=1;  // Enable all IRQ
	  init_scan();
    init_usb();                         /* initialize bridge          */

    while (1)                           /* loop forever               */
    {
      poll_usb();

  		/* polling the usb-bridge     */
  		if (usb_ready())
      {
        if (scan_matrix())              /* search for pressed keys,   */ 
  			{
          unsigned char data* pRep=kbd_get_report();
          usb_set_keys(pRep, kbd_get_modifier());
  			}
      }                         
    }               
}
