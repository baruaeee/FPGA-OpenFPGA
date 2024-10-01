// Keyboard communication routines

#ifndef __KB_INCLUDED
#define __KB_INCLUDED


#include <8052.h>
#include "fpga_lib.h"
#include "fpga_reg.h"
//#include "pindefs.h"

#define ISC00 0
#define ISC01 1

void init_kb(void);
//interrupt [INT0_vect] void INT0_interrupt(void);
void ext_int2_isr(void) interrupt 0 using 03;
//#pragma NOREGPARMS
void decode(unsigned char sc) using 03;
void put_kbbuff(unsigned char c) using 03;
//#pragma REGPARMS
unsigned char getkbdchar(void);
bit kbhit();
#endif

