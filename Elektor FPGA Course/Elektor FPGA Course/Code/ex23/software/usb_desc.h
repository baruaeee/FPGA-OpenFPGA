/* $Workfile:   usb_desc.h $ 							 											*/
/* $Revision: 1.2 $                                            	*/
/* $Author: Andreas Voggeneder $                 								*/
/* $Date: 2003/08/14 08:02:29 $																	*/
/* Description:	USB HID Demo, usb descriptor definitions 				*/
/*																											        */
/* Remarks:     No remarks.                                     */

#ifndef USB_DESC_H
#define USB_DESC_H
                    
#include "usb_spec.h"
#include <8052.h>

/* This file includes all descriptors incl. the HID-specifiec HID and */
/* report descriptor                                                  */
                                     

/* defining index for several string descriptors */

#define LNG_IDX 		0x00
#define MFG_IDX 		0x01               
#define PRD_IDX 		0x02                 
#define CFG_IDX 		0x03
#define IFC_IDX 		0x04                    
                                  
#define DEV_DESC_SIZE 	sizeof(DEV_DESC)
#define CFG_DESC_SIZE 	sizeof(CFG_DESC) 

/* defining the string descriptors */  
#define UC(x) 			x,0

unsigned char code LNG_STR[] = {4,3,9,0};       /* language array - english   */

unsigned char code MFG_STR[] =                  /* manufacturer string        */
{
	28,XSTRING,UC('F'),UC('H'),UC('S'),UC('-'),
	UC('H'),UC('a'),UC('g'),UC('e'),UC('n'),UC('b'),UC('e'),UC('r'),UC('g')
};

unsigned char code PRD_STR[] =                  /* product description string */
{
	82,XSTRING,'E',0,'l',0,'e',0,'k',0,'t',0,'o',0
    ,'r',0,' ',0,'F',0,'P',0,'G',0,'A',0
    ,' ',0,'K',0,'e',0,'y',0,'b',0,'o',0,'a',0,'r',0
    ,'d',0,'\n',0,
    'A',0,'n',0,'d',0,'r',0,'e',0,'a',0,'s',0,' ',0
    ,'V',0,'o',0,'g',0,'g',0,'e',0,'n',0,'e',0,'d',0,'e',0,'r',0
};
          
unsigned char code CFG_STR[] =                  /* configuration descr.string */
{
	46,XSTRING,'S',0,'t',0,'a',0,'n',0,'d',0,'a',0
    ,'r',0,'d',0,' ',0,'C',0,'o',0,'n',0
    ,'f',0,'i',0,'g',0,'u',0,'r',0,'a',0
    ,'t',0,'i',0,'o',0,'n',0
};

unsigned char code IFC_STR[] =                  /* interface descr. string   */
{
	34,XSTRING,'K',0,'e',0,'y',0,'p',0,'a',0,'d',0
    ,'-',0,'I',0,'n',0,'t',0,'e',0,'r',0
    ,'f',0,'a',0,'c',0,'e',0
};

/* Defining the REPORT_DESCRIPTOR for standard HID-Keyboard           */  

unsigned char code REP_DESC[] = 
{
    0x05, 0x01,                    /* USAGE_PAGE (Generic Desktop)    */
    0x09, 0x06,                    /* USAGE (Keyboard)                */
    0xA1, 0x01,                    /* COLLECTION (Application)        */
    0x05, 0x07,                    /*   USAGE_PAGE(Key Codes)         */
    0x19, 0xE0,                    /*   USAGE_MINIMUM (224)           */
    0x29, 0xE7,                    /*   USAGE_MAXIMUM (231)           */
    0x15, 0x00,                    /*   LOGICAL_MINIMUM (0)           */
    0x25, 0x01,                    /*   LOGICAL_MAXIMUM (1)           */
    0x75, 0x01,                    /*   REPORT_SIZE (1)               */
    0x95, 0x08,                    /*   REPORT_COUNT (8)              */
    0x81, 0x02,                    /*   INPUT (Data,Var,Abs)          */
    0x75, 0x08,                    /*   REPORT_SIZE (8)               */
    0x95, 0x01,                    /*   REPORT_COUNT (1)              */
    0x81, 0x01,                    /*   INPUT (Data,Const,Abs)        */
    0x05, 0x08,                    /*   USAGE_PAGE (LED's)            */
    0x19, 0x01,                    /*   USAGE_MINIMUM (LED 1)         */
    0x29, 0x03,                    /*   USAGE_MAXIMUM (LED 3)         */
    0x75, 0x01,                    /*   REPORT_SIZE (1)               */
    0x95, 0x03,                    /*   REPORT_COUNT (3)              */
    0x91, 0x02,                    /*   OUTPUT                        */
    0x75, 0x05,                    /*   REPORT_SIZE (5)               */
    0x95, 0x01,                    /*   REPORT_COUNT (1)              */
    0x91, 0x01,                    /*   OUTPUT                        */
    0x05, 0x07,                    /*   USAGE_PAGE(Key Codes)         */
    0x19, 0x00,                    /*   USAGE_MINIMUM (0)             */
    0x29, 0x65,                    /*   USAGE_MAXIMUM (101)           */
    0x15, 0x00,                    /*   LOGICAL_MINIMUM (0)           */
    0x25, 0x65,                    /*   LOGICAL_MAXIMUM (101)         */
    0x75, 0x08,                    /*   REPORT_SIZE (8)               */
    0x95, 0x06,                    /*   REPORT_COUNT (6)              */
    0x81, 0x00,                    /*   INPUT (Data,Var,Array)        */
    0xC0                           /* END_COLLECTION                  */
};
 
#define RPT_DESC_SIZE sizeof(REP_DESC) 
      

/* Defining the DEVICE_DESCRIPTOR                                     */  
 
unsigned char code DEV_DESC[] = 
{
	DEV_LENGTH,        /*length of this desc.    */
    DEVICE,            /*DEVICE descriptor       */
    0x00,0x01,         /*spec rev level (BCD)    */
    0x00,              /*device class            */
    0x00,              /*device subclass         */
    0x00,              /*device protocol         */  
    0x08,              /*max packet size         */   
    0xE9,0x03,         /*vendor ID               */
    0x03,0x65,         /*product ID              */  
    0x01,0x01,         /*revision ID             */  
    MFG_IDX,           /*index of manuf. string  */   
    PRD_IDX,           /*index of prod.  string  */  
    0x00,              /*index of ser. # string  */   
    0x01               /*number of configs.      */ 
};                

/* Defining the CONFIGURATION_DESCRIPTOR                              */  
unsigned char code CFG_DESC[] = 
{
	CFG_LENGTH,        /*length of this desc.    */ 
    CONFIGURATION,     /*CONFIGURATION descriptor*/  
    0x22,0x00,         /*total length returned   */ 
    0x01,              /*number of interfaces    */ 
    0x01,              /*number of this config   */ 
    CFG_IDX,           /*index of config. string */  
    0xA0,              /*attr.: remote powered, remote-wakeup */   
    0x64,              /*max power (200 mA)       */  
                    
						/* interface descriptor */
                    
	INT_LENGTH,        /*length of this desc.    */  
    INTERFACE,         /*INTERFACE descriptor    */  
    0x00,              /*interface number        */
    0x00,              /*alternate setting       */  
    0x01,              /*# of (non 0) endpoints  */ 
    HIDCLASS,          /*interface class         */
    NOSUBCLASS,        /*& subclass (no boot)    */  
    0x01,              /*keyb.interface protocol */  
    IFC_IDX,           /*index of intf. string   */ 
                         
                        /* HID descriptor */    

    HID_LENGTH,        /*length of this desc.    */  
    HID,               /*HID descriptor          */  
    0x00,0x01,         /*HID spec rev level (BCD)*/   
    0x00,              /*target country          */  
    0x01,              /*# HID class desc follow.*/ 
    HIDREPORT,         /*report descr. type      */  
    RPT_DESC_SIZE,0x00,/*report descr. length    */  
                                                                        
                        /* endpoint-descriptor */

    END_LENGTH,        /*length of this desc.    */   
    ENDPOINT,          /*ENDPOINT descriptor     */ 
    0x81,              /*address (IN/EP1)        */  
    0x03,              /*attributes  (INTERRUPT) */    
    0x08,0x00,         /*max packet size (8)     */
    0x08               /*interval (8ms)          */
};

#endif
