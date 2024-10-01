/* $Workfile:   ex13.c $									  								    */
/* $Revision: 1.0 $                                            	*/
/* $Author:  $                           								        */
/* $Date: 2006/31/07 18:12:12 $																	*/
/* Description:	                                                */
/*																											        */
/* Remarks:     No remarks.                                     */

#include <8052.h>
#include "stdio.h"

void main (void)
{
  __xdata unsigned long count;
  __xdata unsigned char * __data p;		//	 Pointer (in internal RAM) pointing to unsigned char stored in external RAM
  __xdata unsigned char * __data p2;		//	 Pointer (in internal RAM) pointing to unsigned char stored in external RAM
  xdata unsigned char buffer[128];
 // volatile xdata __at 0xf000 test;
  unsigned char LED;
  LED=0x01;
  p = (__xdata unsigned char*) (0x8000);
  p2 = (__xdata unsigned char*) (0x0500);
  for (count=0;count <sizeof (buffer);count++)
    buffer[count]=(unsigned char) (count);
  while (1) {
    for (count=0;count<200000;count++)
    {  
//       test = LED;
       *p = LED;
       *p2 = LED;
    }
    LED = LED <<1;
    if (LED==0) LED=1;
  };

}
