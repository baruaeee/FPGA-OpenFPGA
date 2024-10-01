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
  CURS_SPALTE=0;
  CURS_ZEILE=0;
}

// Initialize Screen with default Values (80x38 Resolution)
void InitScreen() {
   VIDEO_STARTZEILE = 2;
   VIDEO_STARTSPALTE =  18;
   VIDEO_ZEILEN = 30;
   VIDEO_SPALTEN = 80;
   VIDEO_CTRL=VIDEO_ON;   // Turn on Video Hardware
   Clrscr();
}

// Scrolls Text + Colormem by one Line
void Scroll() {
  while(!(VIDEO_STATUS&VSYNC));   // Scrollen während des Strahlrücklaufs (Flackern vermeiden)
  pScreen=(unsigned char xdata*)(VIDEO_BASE+(int)VIDEO_SPALTEN*(VIDEO_ZEILEN-1));
 	select_vmem();
  memcpy(VIDEO_BASE,(char xdata*)VIDEO_BASE+VIDEO_SPALTEN,(int)VIDEO_SPALTEN*(VIDEO_ZEILEN-1));
  memset(pScreen,' ',VIDEO_SPALTEN);
  select_colmem();
  memcpy(VIDEO_BASE,(char xdata*)VIDEO_BASE+VIDEO_SPALTEN,((int)VIDEO_SPALTEN*(VIDEO_ZEILEN-1)));
  memset(pScreen,0x07,VIDEO_SPALTEN);
  select_vmem();
}

// Set Cursor to x,y
void Gotoxy(unsigned char x, unsigned char y) {
  unsigned short ofs;

  if (x<VIDEO_SPALTEN && y<VIDEO_ZEILEN) {
    ofs=(short)y*VIDEO_SPALTEN+x;
    CURS_SPALTE=x;
    CURS_ZEILE=y;
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
   	
	  if (++CURS_SPALTE==VIDEO_SPALTEN) {
	    CURS_SPALTE=0;
	    if (++CURS_ZEILE==VIDEO_ZEILEN) {
	      // Videomem must be scrolled
	      Scroll();
	      CURS_ZEILE--;    
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
  

	  if (++CURS_SPALTE==VIDEO_SPALTEN) {
	    CURS_SPALTE=0;
	    if (++CURS_ZEILE==VIDEO_ZEILEN) {
	      // Videomem must be scrolled
	      Scroll();
	      CURS_ZEILE--;    
	    }
	  }
	}else{
		switch(c) {
			case '\n': 
			  if (CURS_ZEILE<(VIDEO_ZEILEN-1)){
				  Gotoxy(CURS_SPALTE,CURS_ZEILE+1);
				}else{
				  Scroll();
			  }
			 	break;
     	case '\b': 
     		Gotoxy(CURS_SPALTE-1,CURS_ZEILE);  
     		break;
     	case '\r':
     		Gotoxy(0,CURS_ZEILE);
     		break; 
     }
	}
}


// Writes a Text (from Flash) to x,y
// No clipping support !
void WriteScreenxyf(unsigned char x, unsigned char y,char code * pText) {
  unsigned char * pScreen;
  if ((x<VIDEO_SPALTEN) && (y<VIDEO_ZEILEN)) {
    pScreen=(unsigned char xdata*)(VIDEO_BASE+(short)y*VIDEO_SPALTEN+x);
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
  ofs=(short)y*VIDEO_SPALTEN+x;
  pColor+=ofs;
  
/*  if (ofs%2) {
    *pColor=(*pColor&0x0f)|((Color & 0x0f)<<4);
  }else{
    *pColor=(*pColor&0xf0)|(Color & 0x0f);
  }  */ 
  select_colmem();
  *pColor= (bgColor<<4)|(fgColor&0x0f);
  select_vmem();
}

/*
// Writes Data to a Codec Register (see AIC23 Datasheet)
void WriteCodec(unsigned char Adr, unsigned short Data) 
{
	 Data &=0x1ff;
	 Data|=((unsigned short)Adr&0x7f)<<9;
 	 CODEC_DATA_HIGH=Data >>8;     
	 CODEC_DATA_LOW=Data &0xff;
}

// To see Status Bits of RX,TX FIFOs see spartan_reg.h
// Writes a Sample to TX FIFO
void PutSample(unsigned short Data) 
{
   while ((FIFO_STATUS) & TX_FULL);     // Wait until TX Fifo has available Storage
 	 FIFO_HIGH=Data >>8;     
	 FIFO_LOW=Data &0xff;
}

// Reads a Sample out of RX FIFO
unsigned short GetSample() {
    unsigned short Sample;
    
    while(!((FIFO_STATUS)&RX_DATA));        // Wait until RX Fifo has Data
		Sample=(unsigned short)(FIFO_HIGH)<<8;
		Sample|=FIFO_LOW;
		return Sample;
}

// Calculates CRC32 of a Data Packet
unsigned long CRC32(unsigned char *pData,unsigned short size) {
  CRC_CTRL=0x7d;			  // 32 bit SR, CRC Mode, MSB First Mode
 	CRC_SR=0xffffffff;
 	CRC_FB=0x04C11DB7;  	// CRC32 Polynom
  while(size--) {
      CRC_DATA=*pData++;
  }
  return ~CRC_SR;       // at last the result must be inverted
}
*/
// Initializes CRC/MLFSR Unit to 32 bit MLFSR Mode
/*void RndInit(unsigned long Startvalue) {
  CRC_FB=0xe0000020;	// 32 bit MLFSR  (0x80200003)
  CRC_SR=Startvalue;  // Startwert
  CRC_CTRL=0x7f;		  // 32 bit MLFSR Mode
  CRC_DATA=0;
}

// Returns a new 32 bit Random value every call
unsigned long Rnd() {
    CRC_DATA=0;     // Calculate a new Random Value
    return CRC_SR;
}

// Returns a new 16 bit Random value every call
unsigned short Rnd16() {
    CRC_DATA=0;     // Calculate a new Random Value
    return CRC_SR16;
}*/

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

