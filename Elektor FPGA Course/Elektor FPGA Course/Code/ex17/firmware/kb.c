#include <stdio.h>
#include "kb.h"
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
    
    put_kbbuff(sc);  
} 

void put_kbbuff(unsigned char ch)  using 03
{
    if (buffcnt<BUFF_SIZE)                       // If buffer not full
    {
        *inpt = ch;                              // Put character into buffer
        inpt++;                                  // Increment pointer

        buffcnt++;

        if (inpt >= kb_buffer + BUFF_SIZE)       // Pointer wrapping
            inpt = kb_buffer;
    }
}
//#pragma REGPARMS

unsigned char getkbdcode(void)
{
    char byte;
    while(buffcnt == 0);                        // Wait for data

    byte = *outpt;                              // Get byte
    outpt++;                                    // Increment pointer

    if (outpt >= kb_buffer + BUFF_SIZE)         // Pointer wrapping
        outpt = kb_buffer;
    
    buffcnt--;                                  // Decrement buffer count

    return byte;
}

bit kbhit() {
    return (buffcnt!=0)?1:0;
}
