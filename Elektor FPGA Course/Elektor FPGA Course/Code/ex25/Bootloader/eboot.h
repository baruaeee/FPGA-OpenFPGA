#ifndef _EBOOT_H
#define _EBOOT_H

/*
 * Copyright (C) 2002 by egnite Software GmbH. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this
 *    software must display the following acknowledgement:
 *
 *    This product includes software developed by egnite Software GmbH
 *    and its contributors.
 *
 * THIS SOFTWARE IS PROVIDED BY EGNITE SOFTWARE GMBH AND CONTRIBUTORS
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL EGNITE
 * SOFTWARE GMBH OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
 * THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * For additional information see http://www.ethernut.de/
 *
 */

/*
 * $Log: eboot.h,v $
 * Revision 1.1  2002/08/01 17:34:30  harald
 * First check in
 *
 */

#include <reg52.h>
#include "ether.h"
#include "ip.h"
#include "udp.h"
#include "dhcp.h"
#include "tftp.h"
#include "flash_functions.h"

#define LED_PORT P1
// Elektor FPGA Board definitions
sfr  sevseg_ctrl  = 0xC0;
sbit M0           = sevseg_ctrl^0;
sbit M1           = sevseg_ctrl^1;
sbit DP0          = sevseg_ctrl^4; 
sbit DP1          = sevseg_ctrl^5; 
sbit DP2          = sevseg_ctrl^6; 
sbit DP3          = sevseg_ctrl^7; 
sfr  sevseg_data0 = 0xC1; 
sfr  sevseg_data1 = 0xC2; 
sfr  sevseg_data2 = 0xC3; 
sfr  sevseg_data3 = 0xC4; 
//#define SEVENSEG_DATA  (*((unsigned long data*)0xC1))
sfr  sevseg_en    = 0xC5; 

sbit ERROR_LED=P1^2;
sbit DONE_LED=P1^1;
sbit ERASE_LED=P1^7;
sbit PROG_LED=P1^6;
sbit KEY=P0^5;
sbit RAMWR_LED=P1^5;

sbit DIPSW_EN=P3^1;

#define ON  1
#define OFF 0
#define ALL_OFF 0

#define CFG_7SEG() sevseg_ctrl=0x01; \
                   sevseg_en=0xff;


sbit DIPSW_FLASH_EN=P1^7;
sbit DIPSW_BOOT_EN=P1^6;

#define IO_MODE 0
#define HEX_MODE 1
#define RAW_MODE 2
/*!
 * \addtogroup xgEBoot
 */
/*@{*/

/*
 * Internal compiler address values.
 */

typedef struct {
    ETHERHDR eth_hdr;
    IPHDR    ip_hdr;
    UDPHDR   udp_hdr;
    union {
        TFTPHDR  tftp;
        BOOTPHDR bootp;
    } u;
} BOOTFRAME;

/*@}*/

/*
 * Outgoing frame.
 */
extern BOOTFRAME xdata sframe;

/*
 * Incoming frame.
 */
extern BOOTFRAME xdata rframe;

extern u_long netmask;
extern u_long broadcast;
extern u_long gateway;
extern u_long dns;
extern u_long sid;
extern u_long local_ip;
extern u_long server_ip;
extern u_char xdata bootfile[128];
extern u_short bfs;
extern FlashInfo idata FI;
void _wait_ms(unsigned int dly);


#endif
