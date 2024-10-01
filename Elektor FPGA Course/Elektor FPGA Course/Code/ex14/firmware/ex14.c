/* $Workfile:   ex14.c $									  								    */
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
  __xdata unsigned char * __data q;		//	 Pointer (in internal RAM) pointing to unsigned char stored in external RAM
  __xdata unsigned char buffer[128];
  volatile __xdata __at 0x0500 test;
  unsigned char LED,seven;

  LED=0x01;
  seven=0x02;
  p  = (__xdata volatile unsigned char*) (0x8000);
  q = (__xdata volatile unsigned char*) (0x9000);
  for (count=0;count <sizeof (buffer);count++)
    buffer[count]=(unsigned char) (count);
  while (1) {
    for (count=0;count<100000;count++)
    {  
//       test = LED;
       *p = *p ^ LED;
       *q = *q ^ seven;
       test = LED;
    }
    LED = LED <<1;
    if (LED==0) LED=1;
    seven=seven<<1;
    if (seven==0x80) seven=0x02;
  };

}
