/* $Workfile:   scan_key.c $									 									*/
/* $Revision: 1.2 $                                            	*/
/* $Author: Andreas Voggeneder $                     						*/
/* $Date: 2003/08/14 08:02:29 $																	*/
/* Description:	USB HID Demo, keyboard handling                 */
/*																											        */
/* Remarks:     No remarks.                                     */

#include <8052.h>
#include <string.h>
#include <stdio.h>
#include "scan_key.h"
#include "usb.h"

/**********************************************************************/
// definitions
/**********************************************************************/
#define SCANPORT 		KEY_REG
#define LED_PORT		P1

#define NUM_LED 		0x01
#define CAPS_LED 		0x02
#define SCROLL_LED 	0x04

#define DIPSW_EN  P3_1
#define SHIFT_KEY P0_5

/**********************************************************************/
// variables
/**********************************************************************/
static unsigned char new_key_bm[2];  
static unsigned char old_key_bm[2];

static unsigned char new_report[6];
static unsigned char old_report[6];
static unsigned char modifier;
static unsigned char old_modifier;

static unsigned char code USAGE_TABLE[] = 
{
//  1    2    3    4    5    6    7    8    B    A    D    C   SHIFT
	0x1E,0x1F,0x20,0x21,0x22,0x23,0x24,0x25,0x05,0x04,0x07,0x06,0xE1
};

/**********************************************************************/
/* This subroutine handles the LED-settings                           */
/**********************************************************************/
void kbd_set_led(unsigned char led)
{                    
    if (led & NUM_LED)
		LED_PORT |= NUM_LED<<1;
    else
		LED_PORT &= ~(NUM_LED<<1);
        
    if (led & CAPS_LED)
		LED_PORT |= CAPS_LED<<1;
    else
		LED_PORT &= ~(CAPS_LED<<1);
        
    if (led & SCROLL_LED)
		LED_PORT |= (SCROLL_LED<<1);
    else
		LED_PORT &= ~(SCROLL_LED<<1);
}

/**********************************************************************/
/* Read back LED-settings from port to save this information          */
/* if you go into suspend and must switch alle LEDs off               */
/**********************************************************************/
/*unsigned char read_back_led(void)
{
	return ((LED_PORT & (NUM_LED | CAPS_LED | SCROLL_LED)));
}  */                 

/**********************************************************************/
/* This subroutine generates the pseudo-report, when more than        */
/* six keys are pressed at the same time.                             */  
/**********************************************************************/
void generate_pseudo_code(void) 
{
    new_report[0] = 0x01;       /* fill the whole key array with 0x01 */
    new_report[1] = 0x01;
    new_report[2] = 0x01;
    new_report[3] = 0x01;
    new_report[4] = 0x01;
    new_report[5] = 0x01;
}

/**********************************************************************/
// init the keypad
/**********************************************************************/
void init_scan(void)
{
	unsigned char i = 0;

    for (i = 0; i < 6; i++)
    {
        old_report[i] = 0;              /* clear the reports          */
    }

	modifier = 0;
}

/**********************************************************************/
// read the pressed keys as a 6 byte report
/**********************************************************************/
unsigned char kbd_get_report(unsigned char data* pRep)
{
	memcpy(pRep, new_report, 6);

	return modifier;
}

/**********************************************************************/
/* This subroutine scans the keyboard-matrix                          */
/* Return after every scan, if new keys detected, NEW_KEYS-flag is    */
/* set in the flags-register and a report was generated (new_report[])*/  
/**********************************************************************/
unsigned char scan_matrix(void) 
{
	unsigned char i, j;
 
    while (1)
    {                                           // scan the keys    
  		// read DIPSWITCHES pins
      DIPSW_EN=0;
      // read KEYS
  		new_key_bm[1] = (P0 >> 3) & 0x03;

  		new_key_bm[0] = P1;				
      DIPSW_EN=1;
  
  		modifier=(SHIFT_KEY)?0x02:0;
        
        // still debounce or generate new report 
        if ((old_key_bm[0] != new_key_bm[0]) || 
            (old_key_bm[1] != new_key_bm[1]) || 
            (old_modifier != modifier)) 
        {
        	old_key_bm[0] = new_key_bm[0];
          old_key_bm[1] = new_key_bm[1];
			    old_modifier = modifier;
          return 0;
        }
        else 
        {       
            // old=new -> debounced state reached                     
            // save the old report for detecting a change             
            
            for (i = 0; i < 6; i++)
            {
                old_report[i] = new_report[i];    // save old report    
                new_report[i] = 0;                // initialize report  
            }
        
            j = 0;

            // convert keys into report by looking-up the USAGE_TABLE 
            for (i = 0; i < 8; i++) 
            {
                // Scan first part of Keys
                if (new_key_bm[0] & 0x01)
                {                               // check if bit set   
                    if (j != 6) 
                        new_report[j++] = USAGE_TABLE[i];
                    else 
                    {   
						            generate_pseudo_code();
                        break;      
                    }    
                }
                // Scan second part of Keys
                if (new_key_bm[1] & 0x01) 
                {                               // check if bit set   
                    if (j != 6) 
                        new_report[j++] = USAGE_TABLE[i + 8];
                    else 
                    {
                        generate_pseudo_code();      
                        break;      
                    }    
                }                                           
            
                new_key_bm[0] >>= 1;
                new_key_bm[1] >>= 1;
            }          
        
            // compare new generated report with old report. 
            // - when real new, set flag                     
            if(old_modifier != modifier) 
              return 1;
            for (i = 0; i < 6; i++) 
            {
                if (new_report[i] != old_report[i]) 
                {           
					         return 1;
                }
            }
            return 0; 
        }
    }
	return 0;
}
