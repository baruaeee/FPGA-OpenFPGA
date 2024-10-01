/* $Workfile:   fpgan_reg.h $									 								    */
/* $Revision: 1.12 $                                              */
/* $Author: hse00045 $                           	                */
/* $Date: 2003/09/11 13:01:39 $																    */
/* Description:	Definition of Spartan Registers                   */
/*																											          */
/* Remarks:     No remarks.                                       */

#ifndef _FPGA_REG_
#define _FPGA_REG_

#asm
	sevseg_ctrl  = $C0;
  sevseg_data0 = $C1;
  sevseg_data1 = $C2;
  sevseg_data2 = $C3;
  sevseg_data3 = $C4;
  sevseg_en    = $C5;
  _sevseg_ctrl  = sevseg_ctrl;
  _sevseg_data0 = sevseg_data0;
  _sevseg_data1 = sevseg_data1;
  _sevseg_data2 = sevseg_data2;
  _sevseg_data3 = sevseg_data3;
  _sevseg_en    = sevseg_en;

#endasm

extern near unsigned char sevseg_ctrl;
extern near unsigned char sevseg_data0;
extern near unsigned char sevseg_data1;
extern near unsigned char sevseg_data2;
extern near unsigned char sevseg_data3;
extern near unsigned char sevseg_en;

#define IO_MODE 0
#define HEX_MODE 1
#define RAW_MODE 2

// Definition of memory start adresses and memory sizes
#define VIDEO_BASE  ((xdata unsigned char*)0x8000)
#define VIDEO_SIZE	(80*30)
#define CG_SIZE		  0x1000
#define COLOR_SIZE	(80*30)

#define VIDEO_STATUS (*((volatile xdata unsigned char*)0xAA07))
#define HSYNC 1
#define VSYNC 2
#define ACTIVE_AREA 4

#define VIDEO_CTRL   (*((volatile xdata unsigned char*)0xAA00))
#define CURSOR_ON   1
#define VIDEO_ON    2
#define VIDEO_60HZ  4
#define CG_WREN     8
#define SEL_VMEM     0x0
#define SEL_COLMEM   0x10
#define SEL_CGMEM    0x20

#define CURS_ZEILE   (*((volatile xdata unsigned char*)0xAA01))
#define CURS_SPALTE  (*((volatile xdata unsigned char*)0xAA02))
#define VIDEO_STARTZEILE  (*((volatile xdata unsigned char*)0xAA03))
#define VIDEO_STARTSPALTE  (*((volatile xdata unsigned char*)0xAA04))
//Zeilen * Spalten <=2560 !!
#define VIDEO_ZEILEN  (*((volatile xdata unsigned char*)0xAA05))
#define VIDEO_SPALTEN (*((volatile xdata unsigned char*)0xAA06))




//#define KBD_OPTION	  (*((volatile unsigned char xdata*)0xC081))
//#define KBD_INIT		0x01    // 1= Reset
#asm
  ps2_ctrl    = $d8;
  ps2_rxf     = ps2_ctrl.0;
  ps2_ovf     = ps2_ctrl.1;
  ps2_rx_busy = ps2_ctrl.2;
  ps2_tx_busy = ps2_ctrl.3;
  ps2_ack     = ps2_ctrl.4;
  ps2_init    = ps2_ctrl.7;
  ps2_data    = $0xd9;
  _ps2_ctrl    = ps2_ctrl;
  _ps2_rxf     = ps2_rxf;
  _ps2_ovf     = ps2_ovf;
  _ps2_rx_busy = ps2_rx_busy;
  _ps2_tx_busy = ps2_tx_busy;
  _ps2_ack     = ps2_ack;
  _ps2_init    = ps2_init;
  _ps2_data    = ps2_data;
#endasm

extern near unsigned char ps2_ctrl;
extern bit unsigned char ps2_rxf;
extern bit unsigned char ps2_ovf;
extern bit unsigned char ps2_rx_busy;
extern bit unsigned char ps2_tx_busy; 
extern bit unsigned char ps2_ack;
extern bit unsigned char ps2_init;
extern near unsigned char ps2_data;

#asm
  bank_sel   = $f9;
  bank_en    = $f8;
  vgaen      = bank_en.4;
  sramb0     = bank_en.5;
  sramen     = bank_en.6;
  ethdis     = bank_en.7;

  _bank_sel   = bank_sel;
  _bank_en    = bank_en;
  _vgaen      = vgaen;
  _sramb0     = sramb0;
  _sramen     = sramen;
  _ethdis     = ethdis;
#endasm

extern near unsigned char bank_sel;
extern near unsigned char bank_en;
extern bit unsigned char vgaen;
extern bit unsigned char sramb0;
extern bit unsigned char sramen;
extern bit unsigned char ethdis;

#endif
