/* $Workfile:   fpgan_reg.h $									 								    */
/* $Revision: 1.12 $                                              */
/* $Author: hse00045 $                           	                */
/* $Date: 2003/09/11 13:01:39 $																    */
/* Description:	Definition of FPGA Registers                      */
/*																											          */
/* Remarks:     No remarks.                                       */

#ifndef _FPGA_REG_
#define _FPGA_REG_ 


__sfr __at (0xC0) sevseg_ctrl;
__sbit __at (0xc4) DP0;
__sbit __at (0xc5) DP1;
__sbit __at (0xc6) DP2;
__sbit __at (0xc7) DP3;
__sfr __at (0xC1) sevseg_data0;
__sfr __at (0xC2) sevseg_data1;
__sfr __at (0xC3) sevseg_data2;
__sfr __at (0xC4) sevseg_data3;
__sfr __at (0xC5) sevseg_en; 

#define IO_MODE 0
#define HEX_MODE 1
#define RAW_MODE 2

#define CFG_7SEG() sevseg_ctrl=0x01; \
                   sevseg_en=0xff;

// Definition of memory start adresses and memory sizes
#define VIDEO_BASE  ((unsigned char xdata*)0x8000)
#define VIDEO_SIZE	80*30
#define CG_SIZE		  0x1000
#define COLOR_SIZE	80*30

#define VIDEO_STATUS (*((volatile unsigned char xdata*)0xAA07))
#define HSYNC 1
#define VSYNC 2
#define ACTIVE_AREA 4

#define VIDEO_CTRL   (*((volatile unsigned char xdata*)0xAA00))
#define CURSOR_ON   1
#define VIDEO_ON    2
#define VIDEO_60HZ  4
#define CG_WREN     8
#define SEL_VMEM     0x0
#define SEL_COLMEM   0x10
#define SEL_CGMEM    0x20

#define CURS_ZEILE   (*((volatile unsigned char xdata*)0xAA01))
#define CURS_SPALTE  (*((volatile unsigned char xdata*)0xAA02))
#define VIDEO_STARTZEILE  (*((volatile unsigned char xdata*)0xAA03))
#define VIDEO_STARTSPALTE  (*((volatile unsigned char xdata*)0xAA04))
//Zeilen * Spalten <=2560 !!
#define VIDEO_ZEILEN  (*((volatile unsigned char xdata*)0xAA05))   
#define VIDEO_SPALTEN (*((volatile unsigned char xdata*)0xAA06))


// PS/2 Keyboard Controller

__sfr __at (0xd8) ps2_ctrl;
__sbit __at (0xd8) ps2_rxf;
__sbit __at (0xd9) ps2_ovf;
__sbit __at (0xda) ps2_rx_busy;
__sbit __at (0xdb) ps2_tx_busy;
__sbit __at (0xdc) ps2_ack;
__sbit __at (0xdf) ps2_init;
__sfr __at (0xd9) ps2_data;


#endif
