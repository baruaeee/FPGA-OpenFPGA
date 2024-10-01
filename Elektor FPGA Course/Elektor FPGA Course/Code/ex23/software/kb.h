/* $Workfile:   kb.c $									 									      */
/* $Revision: 1.2 $                                            	*/
/* $Author: Andreas Voggeneder $                 								*/
/* $Date: 2003/08/14 08:02:29 $																	*/
/* Description:	USB HID Demo, P/2 Keyboard related stuff        */
/*																											        */
/* Remarks:     No remarks.                                     */

// Keyboard communication routines

#ifndef __KB_INCLUDED
#define __KB_INCLUDED

#include <8052.h>
#include "fpga_reg.h"


bit InitKbd();
unsigned char GetKey();
void PutKbd(unsigned char dt);
bit init_kb(void);
void ext_int2_isr(void) interrupt 0 using 03;
void put_kbbuff(unsigned char c) using 03;
unsigned char getkbdchar(void);
bit kbhit();
//unsigned char decode(unsigned char sc);
#endif

