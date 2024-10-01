/* $Workfile:   myusb.h $									 											*/
/* $Revision: 1.2 $                                            	*/
/* $Author: Andreas Voggeneder $                 								*/
/* $Date: 2003/08/14 08:02:29 $																	*/
/* Description:	USB HID Demo, usb definitions          					*/
/*																											        */
/* Remarks:     No remarks.                                     */

#ifndef USB_H
#define USB_H

/**********************************************************************/
/* definitions                                                        */
/**********************************************************************/
#define RX_FIFO_SIZE 	8

/**********************************************************************/
/* These are the function prototypes                                  */
/**********************************************************************/
void usb_set_keys(unsigned char data* pRep, unsigned char mod);
void init_usb(void);
void poll_usb(void);
unsigned char usb_ready(void);

#endif

