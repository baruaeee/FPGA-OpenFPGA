/* $Workfile:   fpga_lib.c $                                                                    */
/* $Revision: 1.7 $                                             */
/* $Author: hse00045 $                                                          */
/* $Date: 2003/09/05 18:12:12 $                                                                 */
/* Description: Library für VHDL Peripherals                    */
/*                                                                                                                  */
/* Remarks:     No remarks.                                     */

#include <8052.h>
#include <string.h>
#include "delay.h"
#include "fpga_lib.h"

unsigned char InitKbd() {
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
     if (GetKey()==0xaa) return 1;
     _wait_ms(100);
  }
  return 0;
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

