/* $Workfile:   fpga_lib.c $									  								*/
/* $Revision: 1.7 $                                            	*/
/* $Author: hse00045 $                           								*/
/* $Date: 2003/09/05 18:12:12 $																	*/
/* Description:	Library für VHDL Peripherals                    */
/*																											        */
/* Remarks:     No remarks.                                     */

#include <8052.h>
#include <string.h>
#include "delay.h"
#include "fpga_lib.h"

char xdata* pScreen=VIDEO_BASE;
unsigned char CurrentColor=LIGHTGRAY;  // Grau

void select_vmem() {
  VIDEO_CTRL=(VIDEO_CTRL & 0x0f)|SEL_VMEM;
}
void select_colmem() {
  VIDEO_CTRL=(VIDEO_CTRL & 0x0f)|SEL_COLMEM;
}
void select_cgmem() {
  VIDEO_CTRL=(VIDEO_CTRL & 0x0f)|SEL_CGMEM;
}

// Clears Screen and Color Memory
void Clrscr() {                     
	select_vmem();
  memset((unsigned char xdata *)VIDEO_BASE,' ',VIDEO_SIZE);
  select_colmem();
  memset((unsigned char xdata *)VIDEO_BASE,0x07,COLOR_SIZE);
  select_vmem();
  pScreen=VIDEO_BASE;
  CurrentColor=0x07;
  CURS_COL=0;
  CURS_LINE=0;
}

// Initialize Screen with default Values (80x38 Resolution)
void InitScreen() {
   VIDEO_STARTZEILE = 2;
   VIDEO_STARTLINE =  18;
   VIDEO_LINES = 30;
   VIDEO_COLS = 80;
   VIDEO_CTRL=VIDEO_ON;   // Turn on Video Hardware
   Clrscr();
}

// Scrolls Text + Colormem by one Line
void Scroll() {
  while(!(VIDEO_STATUS&VSYNC));   // Scrollen während des Strahlrücklaufs (Flackern vermeiden)
  pScreen=(unsigned char xdata*)(VIDEO_BASE+(int)VIDEO_COLS*(VIDEO_LINES-1));
 	select_vmem();
  memcpy(VIDEO_BASE,(char xdata*)VIDEO_BASE+VIDEO_COLS,(int)VIDEO_COLS*(VIDEO_LINES-1));
  memset(pScreen,' ',VIDEO_COLS);
  select_colmem();
  memcpy(VIDEO_BASE,(char xdata*)VIDEO_BASE+VIDEO_COLS,((int)VIDEO_COLS*(VIDEO_LINES-1)));
  memset(pScreen,0x07,VIDEO_COLS);
  select_vmem();
}

// Set Cursor to x,y
void Gotoxy(unsigned char x, unsigned char y) {
  unsigned short ofs;

  if (x<VIDEO_COLS && y<VIDEO_LINES) {
    ofs=(short)y*VIDEO_COLS+x;
    CURS_COL=x;
    CURS_LINE=y;
  //  VIDEO_CTRL|=CURSOR_ON;
    pScreen=(unsigned char xdata*)(VIDEO_BASE+ofs);
  }
}


void writechar2(char c) {
  
/*	  if (pScreen%2) {
	    *pColor=(*pColor&0x0f)|((CurrentColor & 0x0f)<<4);
	    pColor++;
	  }else{
	    *pColor=(*pColor&0xf0)|(CurrentColor & 0x0f);
	  }  */
	  select_vmem();
  	*pScreen= c;
    select_colmem();
   	*pScreen++= CurrentColor;
   	select_vmem();
   	
	  if (++CURS_COL==VIDEO_COLS) {
	    CURS_COL=0;
	    if (++CURS_LINE==VIDEO_LINES) {
	      // Videomem must be scrolled
	      Scroll();
	      CURS_LINE--;    
	    }
	  }
   
}

// output of a single character at current cursor position
void putchar2(char c) {
  
  if (c>=' ') {
/*	  if (pScreen%2) {
	    *pColor=(*pColor&0x0f)|((CurrentColor & 0x0f)<<4);
	    pColor++;
	  }else{
	    *pColor=(*pColor&0xf0)|(CurrentColor & 0x0f);
	  }*/
	  
    select_vmem();
  	*pScreen= c;
    select_colmem();
   	*pScreen++= CurrentColor;
   	select_vmem();
  

	  if (++CURS_COL==VIDEO_COLS) {
	    CURS_COL=0;
	    if (++CURS_LINE==VIDEO_LINES) {
	      // Videomem must be scrolled
	      Scroll();
	      CURS_LINE--;    
	    }
	  }
	}else{
		switch(c) {
			case '\n': 
			  if (CURS_LINE<(VIDEO_LINES-1)){
				  Gotoxy(CURS_COL,CURS_LINE+1);
				}else{
				  Scroll();
			  }
			 	break;
     	case '\b': 
     		Gotoxy(CURS_COL-1,CURS_LINE);  
     		break;
     	case '\r':
     		Gotoxy(0,CURS_LINE);
     		break; 
     }
	}
}


// Writes a Text (from Flash) to x,y
// No clipping support !
void WriteScreenxyf(unsigned char x, unsigned char y,char code * pText) {
  unsigned char * pScreen;
  if ((x<VIDEO_COLS) && (y<VIDEO_LINES)) {
    pScreen=(unsigned char xdata*)(VIDEO_BASE+(short)y*VIDEO_COLS+x);
    strcpy(pScreen,pText);
  }
}

void WriteScreen(char *pText) {
  while(*pText) {
    putchar2(*pText++);
  }  
}

// Sets current drawing color (for WriteScreen)
void SetCurrentColor(unsigned char Color) {
  CurrentColor=(CurrentColor&0xf0) | (Color&0x0f);
}

void SetCurrentBkColor(unsigned char Color) {
  CurrentColor=(CurrentColor&0x0f) | (Color<<4);
}

// Sets Character at X,Y to specified Color
void SetColor(unsigned char x, unsigned char y,unsigned char fgColor,unsigned char bgColor) {
  unsigned short ofs;
  unsigned char xdata* pColor=VIDEO_BASE;
  ofs=(short)y*VIDEO_COLS+x;
  pColor+=ofs;
  select_colmem();
  *pColor= (bgColor<<4)|(fgColor&0x0f);
  select_vmem();
}

unsigned char InitKbd() {
	unsigned char i,retries;
	for(retries=0;retries<3;retries++) {
  	 ps2_init=1;
  	 PutKbd(0xff);
  	 i=100;
  	 while(--i && ps2_tx_busy) {    // Wait until Transmitter idle	 
  	 	_wait_ms(1);
  	 }
  	 if(!i) continue;
  	 for(i=0;i<100;i++) {
  	 	if(ps2_rxf) {
  	 		break;
  	 	}
  	 	_wait_ms(1);
  	 }
  	 if (i!=100 && GetKey()==0xFA) {
  	 	for(i=0;i<100;i++) {
  	 		if(ps2_rxf) {
  	 		  break;
  	  	}
  	 		_wait_ms(10);
  	 	}
  	 }else continue;
     
  	 if (i==100) continue;
  	 //return ((GetKey()==0xaa)?1:0);
  	 if (GetKey()==0xaa) return 1;
  	 _wait_ms(100);
  }
  return 0;
}

// Reads a Key Code from PS/2 Keyboard
unsigned char GetKey() {
  while(!ps2_rxf);    // Wait until Keyboard Data
  ps2_rxf=0;
  return ps2_data;
}

// Writes a data byte to PS/2 Keyboard
void PutKbd(unsigned char dt) {
  while(ps2_tx_busy);    // Wait until Transmitter idle
  ps2_data=dt;
}

