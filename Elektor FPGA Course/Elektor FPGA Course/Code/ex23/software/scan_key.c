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
#include "kb.h"
#include "ps2_hid.h"

/**********************************************************************/
// definitions
/**********************************************************************/
#define SCANPORT 		KEY_REG
#define LED_PORT		P1

#define NUM_LED 		0x01
#define CAPS_LED 		0x02
#define SCROLL_LED 	0x04

//sbit DIPSW_EN  = P3^1;
//sbit SHIFT_KEY = P0^5;

/**********************************************************************/
// variables
/**********************************************************************/
static unsigned char new_report[6];
static unsigned char old_report[6];
static unsigned char modifier;
static unsigned char old_modifier;
static unsigned char report_cnt;


/**********************************************************************/
/* This subroutine handles the LED-settings                           */
/**********************************************************************/
void kbd_set_led(unsigned char led)
{                    
  unsigned char ps2_led;
    if (led & NUM_LED){
		 LED_PORT |= NUM_LED<<1;
     ps2_led = 2;
    }else{
		 LED_PORT &= ~(NUM_LED<<1);
     ps2_led = 0;
    }    
    if (led & CAPS_LED){
		  LED_PORT |= CAPS_LED<<1;
      ps2_led |= 4;
    }else{
		  LED_PORT &= ~(CAPS_LED<<1);
      ps2_led &= ~4;
    }
        
    if (led & SCROLL_LED){
		  LED_PORT |= (SCROLL_LED<<1);
      ps2_led |= 1;
    }else{
		  LED_PORT &= ~(SCROLL_LED<<1);
      ps2_led &= ~1;
    }

    PutKbd(0xED);
    PutKbd(ps2_led); // turn on Leds
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
        old_report[i]=new_report[i] = 0;              /* clear the reports          */
    }
    report_cnt=0;
	  modifier = 0;
}

/**********************************************************************/
// read the pressed keys as a 6 byte report
/**********************************************************************/
unsigned char data* kbd_get_report()
{
  return new_report;
}

unsigned char kbd_get_modifier() {
  return modifier;
}


/**********************************************************************/
/* This subroutine scans the keyboard-matrix                          */
/* Return after every scan, if new keys detected, NEW_KEYS-flag is    */
/* set in the flags-register and a report was generated (new_report[])*/  
/**********************************************************************/

unsigned char scan_matrix(void) 
{
  static bit is_up=0,is_pre=0; 
	unsigned char i;
 
    // Process all Keys present in FIFO
    while (1)
    {                                           // scan the keys          
        // still debounce or generate new report 
        if (!kbhit()) 
        {
          return 0;
        }
        else 
        {       
            // save the old report for detecting a change             
            old_modifier = modifier;
            for (i = 0; i < 6; i++)
            {
                old_report[i] = new_report[i];    // save old report    
                if(i>=report_cnt)
                  new_report[i] = 0;                // initialize report  
            }
        
//            j = 0;

            // convert keys into report by looking-up the USAGE_TABLE 
            {
              unsigned char sc;
              if (!kbhit()) 
                break;
              sc=getkbdchar();
//              printf("0x%X ",sc);
              if(sc==0xE0){
                is_pre = 1;
                continue;
              }else if(sc==0xF0) {
                  is_up = 1;
                  continue;
              }else{
                if(is_pre) {
                  sc+=0x70;
//                  printf("=>0x%bX ",sc);
                }    
                is_pre = 0;
                if(is_up) {
                  unsigned char tmp=ps2_hid[sc];
                  is_up  = 0;
                 if(tmp>=0xE0) {
                    // it's a modifier. clear flag
                    modifier&=~hid_modifiers[tmp-0xE0];
                  }else if(tmp!=0 && report_cnt>0) {
                    // remove key from report
                    for(i=0;i<6;i++) {
                      if(new_report[i]==tmp) {
                        while(i<report_cnt) {
                          new_report[i]=new_report[i+1];
                          i++;
                        }
                        new_report[--report_cnt]=0;
                        break;
                      }
                    }
                  }
//                }else if(sc<sizeof(ps2_hid) && !(ps2_keyflags[index]&bit_mask)) {
                }else if(sc<sizeof(ps2_hid)) {
                  unsigned char tmp=ps2_hid[sc];
                  if(tmp!=0) {
                    if (report_cnt != 6){
  //                    ps2_keyflags[index]|=bit_mask;
                      if(tmp<0xE0) {
                        bit found=0;
                        // only append key to report when not already present
                        for(i=0;i<report_cnt;i++) {
                          if(new_report[i] == tmp) { 
                            found=1;
                            break;
                          }
                        }
                        if(!found){
                          new_report[report_cnt++] = tmp;
                        }
                      }else if(sc<(0xE0+sizeof(hid_modifiers))){
                        modifier|=hid_modifiers[tmp-0xE0];
  //                      printf("Modifier 0x%bx\n",modifier);
                      }
                    }else 
                    {   
  				            generate_pseudo_code();
                      puts("Pseudo Report\n");
  //                    break;      
                    } 
                  }   
                }
              }
              
                // Scan first part of Keys
/*                if (new_key_bm[0] & 0x01)
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
                new_key_bm[1] >>= 1;     */
            }
//            is_up=0;
//            is_pre=0;
//            return 0;
            // compare new generated report with old report. 
            // - when real new, set flag                     
            if(old_modifier != modifier) {
              //report_cnt=0;
              //memset(new_report,0,sizeof(new_report));
              return 1;
            }
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



