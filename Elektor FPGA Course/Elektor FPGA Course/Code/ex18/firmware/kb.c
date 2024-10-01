#include <stdio.h>
#include "kb.h"


#include "scancodes.h"

#define BUFF_SIZE 16

unsigned char idata kb_buffer[BUFF_SIZE];
unsigned char idata *inpt;
unsigned char idata *outpt;
unsigned char buffcnt;
// This flag is set on Keyboard buffer overflow
//bit kbd_buffer_overflow1;

void init_kb(void)
{
    inpt =  kb_buffer;                        // Initialize buffer
    outpt = kb_buffer;
    buffcnt = 0;
    IT0=0;  // Level sensitiv
    IE0=0;
    IE=0x1; // EX0 enable
    ps2_ack=ps2_rxf=0;
        if (!InitKbd()) {
           // Do wahtever you want to indicate a fault in communication with PS/2 device
        } 
}

// External Interrupt 2 service routine
void ext_int2_isr(void) interrupt 0 using 03
{
  if(ps2_rxf) {
    ps2_rxf=0;
        if (ps2_ovf==0)
    {
      decode(ps2_data);
    }
  }
  ps2_ack=0;  // clear also TX-IRQ

}

//#pragma NOREGPARMS
void decode(unsigned char sc)  using 03
{
    static bit is_up=0, shift = 0;
    unsigned char mode = 0;
    unsigned char i;

    if (!is_up)                // Last data received was the up-key identifier
    {
        switch (sc)
        {
          case 0xF0 :        // The up-key identifier
            is_up = 1;
            break;

          case 0x12 :        // Left SHIFT
            shift = 1;
            break;

          case 0x59 :        // Right SHIFT
            shift = 1;
            break;

/*          case 0x05 :        // F1
            if(mode == 0)
                mode = 1;    // Enter scan code mode
            if(mode == 2)
                mode = 3;    // Leave scan code mode
            break;    */

          default:
            if(mode == 0 || mode == 3)        // If ASCII mode
            {
                if(!shift)                    // If shift not pressed,
                {                            // do a table look-up
                    for(i = 0; unshifted[i][0]!=sc && unshifted[i][0]; i++);
                        if (unshifted[i][0] == sc) {
                        put_kbbuff(unshifted[i][1]);
                        }
                } else {                    // If shift pressed
                    for(i = 0; shifted[i][0]!=sc && shifted[i][0]; i++);
                        if (shifted[i][0] == sc) {
                        put_kbbuff(shifted[i][1]);
                    }
                }
            } else{                            // Scan code mode
//                print_hexbyte(sc);            // Print scan code
                put_kbbuff(' ');
                put_kbbuff(' ');
            }
            break;
        }
    } else {
        is_up = 0;                            // Two 0xF0 in a row not allowed
        switch (sc)
        {
          case 0x12 :                        // Left SHIFT
            shift = 0;
            break;
            
          case 0x59 :                        // Right SHIFT
            shift = 0;
            break;

/*          case 0x05 :                        // F1
            if(mode == 1)
                mode = 2;
            if(mode == 3)
                mode = 0;
            break;
          case 0x06 :                        // F2
//            clr();
            break;    */
        } 
    }    
} 

void put_kbbuff(unsigned char ch)  using 03
{
    if (buffcnt<BUFF_SIZE)                        // If buffer not full
    {
        *inpt = ch;                                // Put character into buffer
        inpt++;                                    // Increment pointer

        buffcnt++;

        if (inpt >= kb_buffer + BUFF_SIZE)        // Pointer wrapping
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
