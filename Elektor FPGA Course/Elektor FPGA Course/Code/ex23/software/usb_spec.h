/* $Workfile:   usb_spec.h $							 											*/
/* $Revision: 1.2 $                                            	*/
/* $Author: Andreas Voggeneder $                 								*/
/* $Date: 2003/08/14 08:02:29 $																	*/
/* Description:	USB HID Demo, usb specific definitions 					*/
/*																											        */
/* Remarks:     No remarks.                                     */


#ifndef USB_SPEC_H
#define USB_SPEC_H

/* Standard Request Values */

#define GET_STATUS                  0x00
#define CLEAR_FEATURE               0x01
#define SET_FEATURE                 0x03
#define SET_ADDRESS                 0x05
#define GET_DESCRIPTOR              0x06
#define SET_DESCRIPTOR              0x07
#define GET_CONFIGURATION           0x08
#define SET_CONFIGURATION           0x09
#define GET_INTERFACE               0x0A
#define SET_INTERFACE               0x0B
#define SYNCH_FRAME                 0x0C


/* HID-Class Request Values */

#define GET_REPORT                  0x01
#define GET_IDLE                    0x02
#define GET_PROTOCOL                0x03
#define SET_REPORT                  0x09
#define SET_IDLE                    0x0A
#define SET_PROTOCOL                0x0B


/* Descriptor Types */

#define DEVICE                      0x01
#define CONFIGURATION               0x02
#define XSTRING                     0x03
#define INTERFACE                   0x04
#define ENDPOINT                    0x05
#define HID                         0x21
#define HIDREPORT                   0x22    
#define HIDPHYSICAL                 0x23  


/* Lengths of various descriptor segments */  

#define DEV_LENGTH                  18      /*length of device desc.  */  
#define CFG_LENGTH                  9       /*length of cfg. desc. seg*/
#define INT_LENGTH                  9       /*length of int. desc. seg*/  
#define HID_LENGTH                  9       /*length of HID  desc. seg*/  
#define END_LENGTH                  7       /*length of end. desc. seg*/


/* Class codes */

#define HIDCLASS                    0x03
#define NOSUBCLASS                  0x00   
#define BOOTSUBCLASS                0x01
#define VENDORSPEC                  0xFF


/* Feature Selectors */

#define DEVICE_REMOTE_WAKEUP        0x01
#define ENDPOINT_STALL              0x00

#endif                                  

