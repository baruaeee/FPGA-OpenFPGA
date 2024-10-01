/*
 * Copyright (C) 2001-2002 by egnite Software GmbH. All rights reserved.
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
 * -
 * Portions Copyright (c) 1993 by Digital Equipment Corporation.
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies, and that
 * the name of Digital Equipment Corporation not be used in advertising or
 * publicity pertaining to distribution of the document or software without
 * specific, written prior permission.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS" AND DIGITAL EQUIPMENT CORP. DISCLAIMS ALL
 * WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS.   IN NO EVENT SHALL DIGITAL EQUIPMENT
 * CORPORATION BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL
 * DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR
 * PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS
 * ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
 * SOFTWARE.
 */

/*
 * $Log: ether.c,v $
 * Revision 1.1  2002/08/01 17:34:30  harald
 * First check in
 *
 */

#include <string.h>
//#include <io.h>

//#include "rtlregs.h"
#include "eth_regs.h"
#include "util.h"
#include "eboot.h"
#include "arp.h"
#include "ether.h"
#include "flash_functions.h"

/*!
 * \addtogroup xgStack
 */
/*@{*/

u_char code mac[6] = { 0x00,0x06,0x98,0x00,0x00,0x00 };


void set_mac_add(unsigned char code * addr)
{ 
  *MAC_ADDR2 =  addr[0] << 8    |   addr[1];
  *MAC_ADDR1 = *((unsigned long*)   &addr[2]);
}

void NicInit(void)
{
  unsigned char i;
  volatile oeth_bd xdata *rxtx_bd;

  ETHDIS=0;
  *MODER = OETH_MODER_RST;  /* Reset ON */
  *MODER &= ~OETH_MODER_RST;  /* Reset OFF */
  *TX_BD_NUM=OETH_TXBD_NUM;
  *PACKETLEN = 0x00400600;
  *IPGT = 0x00000012;
  *IPGR1 = 0x0000000c;
  *IPGR2 = 0x00000012;
  *COLLCONF = 0x000f003f;
  *CTRLMODER = 0;

  // Set up TX Descriptors
  // Mapped between A400 and A40f
  rxtx_bd = OETH_BD_BASE;
  for(i = 0; i < OETH_TXBD_NUM; i++) {
    rxtx_bd[i].u.len_status = OETH_TX_BD_PAD | OETH_TX_BD_CRC | OETH_RX_BD_IRQ;
    rxtx_bd[i].addr = TX_BD_BASE+(MAX_FRAME_SIZE*i);
  }
  rxtx_bd[OETH_TXBD_NUM - 1].u.len_status |= OETH_TX_BD_WRAP;

  // Set up RX Descriptors
  rxtx_bd = OETH_BD_BASE+OETH_TXBD_NUM*sizeof(oeth_bd);   //RX_BD_BASE|OETH_BD_BASE;

  
  for(i = 0; i < OETH_RXBD_NUM; i++) {
    rxtx_bd[i].u.len_status = (0 << 16) | OETH_RX_BD_EMPTY | OETH_RX_BD_IRQ;
    rxtx_bd[i].addr = RX_BD_BASE+(MAX_FRAME_SIZE*i);
  }
  rxtx_bd[OETH_RXBD_NUM - 1].u.len_status |= OETH_RX_BD_WRAP;

  set_mac_add(mac);

  *INT_SOURCE = 0xffffffff;
  *INT_MASK = OETH_INT_MASK_TXB     | 
                    OETH_INT_MASK_TXE   | 
                    OETH_INT_MASK_RXF   | 
                    OETH_INT_MASK_RXE   |
                    OETH_INT_MASK_BUSY  |
                    OETH_INT_MASK_TXC   |
                    OETH_INT_MASK_RXC;

  *MODER |=  OETH_MODER_PAD | OETH_MODER_IFG | OETH_MODER_CRCEN
         | OETH_MODER_RXEN | OETH_MODER_TXEN ;
}

oeth_bd xdata* find_RX_Buffer() {
  volatile oeth_bd xdata *rx_bd=OETH_BD_BASE+OETH_TXBD_NUM*sizeof(oeth_bd);
  u_char i;
  for(i=0;i < OETH_RXBD_NUM; i++,rx_bd++) {
    if (!(rx_bd->u.ls.status & OETH_RX_BD_EMPTY)){
      break;
    }
  }
  if(i== OETH_RXBD_NUM) return 0;
  return rx_bd;

}

void RequestSend(u_int FrameSize){

  volatile oeth_bd xdata *tx_bd= OETH_BD_BASE;
  ETHDIS=0;
  tx_bd->u.ls.len    = FrameSize;
  tx_bd->u.ls.status = OETH_TX_BD_PAD | OETH_TX_BD_CRC | OETH_RX_BD_IRQ | OETH_TX_BD_WRAP;
  tx_bd->addr = TX_BD_BASE;

  
}

void Send_it() {
  volatile oeth_bd xdata *tx_bd= OETH_BD_BASE;
  tx_bd->u.ls.status |= (OETH_TX_BD_READY | OETH_TX_BD_IRQ | OETH_TX_BD_CRC);
}

int EtherOutput(u_char xdata *dmac, u_short type, u_short len) {
    u_short i;
    u_short sz;
    u_char xdata *cp;
    {
      ETHERHDR xdata *eh;

      if(type == ETHERTYPE_ARP) {
          eh = &arpframe.eth_hdr;
          cp = (u_char xdata *)&arpframe;
      }
      else {
          eh = &sframe.eth_hdr;
          cp = (u_char xdata *)&sframe;
      }
  
      for(i = 0; i < 6; i++)
          eh->ether_shost[i] = mac[i];
      if(dmac) {
          for(i = 0; i < 6; i++)
              eh->ether_dhost[i] = dmac[i];
      }
      else {
          for(i = 0; i < 6; i++)
              eh->ether_dhost[i] = 0xFF;
      }
      eh->ether_type = type;
    }
    if((len += sizeof(ETHERHDR)) < 60)
        sz = 60;
    else
        sz = len;

    RequestSend(sz); 
    //
//     * Transfer frame.
    {
      u_char xdata* pTxPtr=TX_BD_BASE|((u_short)ETH_BUFFER_BASE);
      memcpy(pTxPtr,cp,len);
      pTxPtr+=len;
//     
/*    for(i = 0; i < len; i++, cp++)
        nic_write(NIC_IOPORT, *cp);*/
    for(i = len; i < sz; i++)
      *pTxPtr++=0;   
    //
//     * Complete remote dma.
//     
    Send_it();

    return 0;
}  


}

/*!
 * \brief Receive an Ethernet frame.
 *
 * \param tms  Return with timeout after the specified
 *             number of waiting loops. On a 14 Mhz ATmega
 *             this value represents approximately the number
 *             of milliseconds to wait.
 *
 * \return The number of bytes received, 0 on timeout 
 *         or -1 in case of a failure.
 */

oeth_bd xdata* rx_bd=0;
u_char xdata* pRxPtr=0;
u_char RXERR =0;

int EtherInput(u_short type, u_short tms)
{
 int rc = 0;
 u_char wtc;
 bit found;
// u_short type;
  ETHDIS=0;  
  while(tms && rc == 0) {
    found=0;
    for(wtc = 1; tms; wtc++) {


       if(*INT_SOURCE & OETH_INT_BUSY) {
        // an error occured during rx-bd-handling
        // so re-init
          NicInit();
          rx_bd=0;
       }
    
       if(*INT_SOURCE & (OETH_INT_TXB|OETH_INT_TXE))  {
         volatile oeth_bd xdata *tx_bd= OETH_BD_BASE;
         tx_bd->u.ls.len    = 0;
         *INT_SOURCE=(OETH_INT_TXB|OETH_INT_TXE); // Clear Interrupt Flag      
       }
       if(*INT_SOURCE & (OETH_INT_RXF | OETH_INT_RXE)) 
       {
         if(*INT_SOURCE & (OETH_INT_RXE)) {
            RXERR++;
         }
         if(!rx_bd) {
            rx_bd=find_RX_Buffer();
            if(!rx_bd) {
              *INT_SOURCE=(OETH_INT_RXF | OETH_INT_RXE);
//              return 0;
              continue;
            }
          } else {
            unsigned char i=0;
            while(i++<OETH_RXBD_NUM && (rx_bd->u.ls.status & OETH_RX_BD_EMPTY)) {
              if(++rx_bd==(OETH_BD_BASE+OETH_TXBD_NUM*sizeof(oeth_bd)+OETH_RXBD_NUM*sizeof(oeth_bd)))
                rx_bd=OETH_BD_BASE+OETH_TXBD_NUM*sizeof(oeth_bd);
            }
            if(rx_bd->u.ls.status & OETH_RX_BD_EMPTY) {
              *INT_SOURCE=(OETH_INT_RXF | OETH_INT_RXE);
//              return 0;
              continue;
            }
          }
          pRxPtr=(*((u_short xdata*)(&rx_bd->addr)+1))|((u_short)ETH_BUFFER_BASE);
          found=1;
          break;
       }
       if(wtc == 0){
         tms--;
//         _wait_ms(1);
       }
    } // end for
  
    if(found) { 
      rc=rx_bd->u.ls.len;
      memcpy((u_char *)&rframe,pRxPtr,rc);
  
      if(rframe.eth_hdr.ether_type != type) {
          if(rframe.eth_hdr.ether_type == ETHERTYPE_ARP)
              ArpRespond();
          rc = 0;
      }
  
  
      rx_bd->u.ls.len =0;
      rx_bd->u.ls.status = (rx_bd->u.ls.status & OETH_RX_BD_WRAP) | OETH_RX_BD_EMPTY | OETH_RX_BD_IRQ;
      {
        u_short tmp=rx_bd;
        if(++rx_bd==(OETH_BD_BASE+OETH_TXBD_NUM*sizeof(oeth_bd)+OETH_RXBD_NUM*sizeof(oeth_bd))) {
          rx_bd=OETH_BD_BASE+OETH_TXBD_NUM*sizeof(oeth_bd);
        }
        // Search for next filled RX-Buffer
        if (tmp==(u_short)rx_bd || (rx_bd->u.ls.status & OETH_RX_BD_EMPTY)){
          *INT_SOURCE=(OETH_INT_RXF | OETH_INT_RXE); // Clear Interrupt Flag
        }
      }
    }

  }//end while
  return rc;
}

/*@}*/
