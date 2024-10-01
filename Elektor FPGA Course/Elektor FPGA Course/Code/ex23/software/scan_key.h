/* $Workfile:   scan_key.h $									 									*/
/* $Revision: 1.2 $                                            	*/
/* $Author: Andreas Voggeneder $                 								*/
/* $Date: 2003/08/14 08:02:29 $																	*/
/* Description:	USB HID Demo, keyboard handling                 */
/*																											        */
/* Remarks:     No remarks.                                     */

#ifndef SCAN_KEY_H
#define SCAN_KEY_H
  
/**********************************************************************/
/* These are the function prototypes                                  */
/**********************************************************************/
void init_scan(void);
unsigned char scan_matrix(void);    
unsigned char data* kbd_get_report();
unsigned char kbd_get_modifier();
void kbd_set_led(unsigned char led);
unsigned char read_back_led(void);

#endif
