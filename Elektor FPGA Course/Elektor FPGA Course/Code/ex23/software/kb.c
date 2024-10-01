/* $Workfile:   kb.c $									 									      */
/* $Revision: 1.2 $                                            	*/
/* $Author: Andreas Voggeneder $                 								*/
/* $Date: 2003/08/14 08:02:29 $																	*/
/* Description:	USB HID Demo, P/2 Keyboard related stuff        */
/*																											        */
/* Remarks:     No remarks.                                     */

#include <stdio.h>
#include <string.h>
#include "kb.h"
#include "delay.h"

#define BUFF_SIZE 16
unsigned char idata kb_buffer[BUFF_SIZE];
unsigned char idata *inpt;
unsigned char idata *outpt;
unsigned char buffcnt;


bit InitKbd() {
	unsigned char i,retries;
	for(retries=0;retries<3;retries++) {
  	 ps2_init=1;
  	 PutKbd(0xff);
  	 i=100;
  	 while(--i && ps2_tx_busy) {    // Wait until Transmitter idle	 
  	 	_wait_ms(1);
  	 }
  	 if(!i) continue;
  	 for(i=0;i<100;i++) {
  	 	if(ps2_rxf) {
  	 		break;
  	 	}
  	 	_wait_ms(1);
  	 }
  	 if (i!=100 && GetKey()==0xFA) {
  	 	for(i=0;i<100;i++) {
  	 		if(ps2_rxf) {
  	 		  break;
  	  	}
  	 		_wait_ms(10);
  	 	}
  	 }else continue;
     
  	 if (i==100) continue;
  	 //return ((GetKey()==0xaa)?1:0);
  	 if (GetKey()==0xaa) {
  	   PutKbd(0xf0);
       PutKbd(0x02);
       i=GetKey();
  	   return 1;
  	 }
  	 _wait_ms(100);
  }
  return 0;
}

bit init_kb(void)
{
    inpt =  kb_buffer;                        // Initialize buffer
    outpt = kb_buffer;
    buffcnt = 0;
    IT0=0;  // Level sensitiv
    IE0=0;
    IE=0x1; // EX0 enable
    ps2_ack=ps2_rxf=0;
		return InitKbd();
}


// Reads a Key Code from PS/2 Keyboard
unsigned char GetKey() {
  while(!ps2_rxf);    // Wait until Keyboard Data
  ps2_rxf=0;
  return ps2_data;
}

// Writes a data byte to PS/2 Keyboard
void PutKbd(unsigned char dt) {
  while(ps2_tx_busy);    // Wait until Transmitter idle
  ps2_data=dt;
}


// External Interrupt 2 service routine
void ext_int2_isr(void) interrupt 0 using 03
{
  if(ps2_rxf) {
    ps2_rxf=0;
		if (ps2_ovf==0)
    {
      put_kbbuff(ps2_data);
   	}else{
   	  ps2_ovf=0;
   	}
  }
  ps2_ack=0;  // clear also TX-IRQ
}

//#pragma NOREGPARMS
void put_kbbuff(unsigned char ch) using 03
{
    if (buffcnt<BUFF_SIZE)                        // If buffer not full
    {
        *inpt = ch;                                // Put character into buffer
        inpt++;                                    // Increment pointer
        buffcnt++;

        if (inpt >= (kb_buffer + BUFF_SIZE))        // Pointer wrapping
            inpt = kb_buffer;
    }
}
//#pragma REGPARMS

unsigned char getkbdchar(void)
{
    char byte;
    while(buffcnt == 0);                        // Wait for data

    byte = *outpt;                                // Get byte
    outpt++;                                    // Increment pointer

    if (outpt >= kb_buffer + BUFF_SIZE)            // Pointer wrapping
        outpt = kb_buffer;
    
    buffcnt--;                                    // Decrement buffer count

    return byte;
}

bit kbhit() {
	return (buffcnt!=0)?1:0;
}
