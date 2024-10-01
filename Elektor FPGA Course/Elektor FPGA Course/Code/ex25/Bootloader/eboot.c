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
 * $Log: eboot.c,v $
 * Revision 1.1  2002/08/01 17:34:30  harald
 * First check in
 *
 */

//#include <pgmspace.h>
//#include <avr/iom128.h>
#include <reg52.h>
#include <stdio.h>
#include "ether.h"
#include "dhcp.h"
#include "tftp.h"
#include "eboot.h"
#include "flash_functions.h"

//char code reserve [3] _at_ 0x23; /* for Monitor-51 serial interrupt */

BOOTFRAME xdata sframe;
BOOTFRAME xdata rframe;
u_long netmask;
u_long broadcast;
u_long gateway;
u_long dns;
u_long sid;
u_long local_ip;
u_long server_ip;
u_short bfs;
u_char xdata bootfile[128];

extern u_char RXERR;
bit ram_write;
bit boot_enable;

void putch(char ch);
void putstr(char *pText);
/*!
 * \addtogroup xgEBoot
 */
/*@{*/

/*!
 * \brief Boot loader entry.
 *
 * This boot loader is very special. It is completely self
 * contained, which means that it runs without any library.
 * This entry point must be linked first and will be located
 * at byte address 0x1F000 in the program flash ROM.
 *
 * \return Never, but jumps at absolute address 0 when done.
 */

char main(void)
{

    LED_PORT=ALL_OFF;  // Turn off all LEDs

    CFG_7SEG();



//    puts("Flash Programmer\r\n");
//    SevenSegCon=0x07; // Enable HEX-Mode
//    SevenSegRegL=SevenSegRegH=0;
    /*
     * Initialize the network interface controller hardware.
     */
    DIPSW_EN=0;
    ram_write=DIPSW_FLASH_EN;
    boot_enable=DIPSW_BOOT_EN;
    if(!boot_enable) {
      // Bootloader is deactivated. So exit
      return 0;
    }
    NicInit();
    ram_write=DIPSW_FLASH_EN;
    boot_enable=DIPSW_BOOT_EN;
    DIPSW_EN=1;
    RAMWR_LED = ram_write;
    if(!query_flash()) 
    {
          
      /*
       * DHCP query and TFTP download.
       */
      if(DhcpQuery() == 0 && bootfile[0]) { 
          PROG_LED=ON;
          if(!TftpRecv())
            PROG_LED=OFF;
          else
            ERROR_LED=ON;
          DONE_LED=ON;
          BANK_SEL=0;
          ETHDIS=0;SRAMEN=1;
          return 1;
      }
    }else{
      ERROR_LED=ON;
      DONE_LED=ON;
      return 0;
    }

    /*
     * Will jump to the application.
     */
 
//    for(;;);
    return 0;
}


