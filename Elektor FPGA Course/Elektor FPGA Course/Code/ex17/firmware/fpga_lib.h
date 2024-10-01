/* $Workfile:   fpga_lib.h $                                                                    */
/* $Revision: 1.7 $                                             */
/* $Author: hse00045 $                                            */
/* $Date: 2003/09/11 13:01:39 $                                                               */
/* Description: Library für VHDL Peripherals                    */
/*                                                                                                                  */
/* Remarks:     No remarks.                                     */


#ifndef _FPGA_LIB_
#define _FPGA_LIB_ 

#include "fpga_reg.h"

unsigned char InitKbd();
unsigned char GetKey();
void PutKbd(unsigned char dt);

#endif
