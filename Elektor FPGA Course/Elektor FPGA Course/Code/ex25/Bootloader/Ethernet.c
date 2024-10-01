/* $Author: hse00045 $                                          */
/* $Date: 2003/14/02 19:31:38 $                                 */
/* Description: Open Cores Ethernet MAC low Level functions     */
/*                                                              */
/* Remarks:     No remarks.                                     */
/*                                                              */

//#pragma src
#include <stdio.h>
#include "delay.h"


#include <reg51.h>
#include "eth_regs.h"
#include "net.h"        // MAC


// *********************************************************************************
// Note: my_mac[] must be set before!
// Init the MAC. If OK, return 0, else: ERROR
// **********************************************************************************

extern unsigned char xdata* pRxPtr;

void set_mac_add(unsigned char xdata * addr)
{ 
  *MAC_ADDR2 =  addr[0] << 8    |   addr[1];
  *MAC_ADDR1 = *((unsigned long*)   &addr[2]);
}

void ETH_Init() {
  unsigned char i;
  volatile oeth_bd xdata *rxtx_bd;

  *MODER = OETH_MODER_RST;  /* Reset ON */
  *MODER &= ~OETH_MODER_RST;  /* Reset OFF */
  *TX_BD_NUM=OETH_TXBD_NUM;
  *PACKETLEN = 0x00400600;
  *IPGT = 0x00000012;
  *IPGR1 = 0x0000000c;
  *IPGR2 = 0x00000012;
  *COLLCONF = 0x000f003f;
  *CTRLMODER = 0;

/*  i=0;
  *MIIADDRESS = 4<<8;
  *MIICOMMAND  = OETH_MIICOMMAND_RSTAT;

  while(*MII_STATUS & OETH_MIISTATUS_BUSY) {
    i++;
  }
  if (!(*MII_STATUS & OETH_MIISTATUS_NVALID)) {
    printf("RXDATA = %x\r\n",*MII_RX_DATA);
  }  */

  // Soft Reset Phy
  i=0;
  *MIIADDRESS = 0<<8;
  *MII_TX_DATA = 0x8000;
  *MIICOMMAND = OETH_MIICOMMAND_WCTRLDATA; 
  while(*MII_STATUS & OETH_MIISTATUS_BUSY) {
    i++;
  }
  __wait_ms(5);
  // Activate Fullduplex Mode
  i=0;
  *MIIADDRESS = 4<<8;
  *MII_TX_DATA = 0x1e1;
  *MIICOMMAND = OETH_MIICOMMAND_WCTRLDATA; 
  while(*MII_STATUS & OETH_MIISTATUS_BUSY) {
    i++;
  }

  
  i=0;
  *MIIADDRESS = 0<<8;
  *MII_TX_DATA = 0xB300;
  *MIICOMMAND = OETH_MIICOMMAND_WCTRLDATA; 
  while(*MII_STATUS & OETH_MIISTATUS_BUSY) {
    i++;
  }

/*  *MIIADDRESS = 17<<8;
  *MIICOMMAND  = OETH_MIICOMMAND_RSTAT;

  while(*MII_STATUS & OETH_MIISTATUS_BUSY) {
    i++;
  }
  if (!(*MII_STATUS & OETH_MIISTATUS_NVALID)) {
    printf("MII_STAT = %x\r\n",*MII_RX_DATA);
  }   */

/*  *MIIADDRESS = 20<<8;
  *MII_TX_DATA = 0x1422;
  *MIICOMMAND = OETH_MIICOMMAND_WCTRLDATA; 
*/
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

  set_mac_add(my_mac);

  *INT_SOURCE = 0xffffffff;
  *INT_MASK = OETH_INT_MASK_TXB     | 
                    OETH_INT_MASK_TXE   | 
                    OETH_INT_MASK_RXF   | 
                    OETH_INT_MASK_RXE   |
                    OETH_INT_MASK_BUSY  |
                    OETH_INT_MASK_TXC   |
                    OETH_INT_MASK_RXC;
//  *MODER |= OETH_MODER_PAD | OETH_MODER_IFG | OETH_MODER_CRCEN
//         | OETH_MODER_RXEN | OETH_MODER_TXEN |OETH_MODER_RECSMALL;
  *MODER |=  OETH_MODER_PAD | OETH_MODER_IFG | OETH_MODER_CRCEN
         | OETH_MODER_RXEN | OETH_MODER_TXEN ;


}

oeth_bd xdata* find_RX_Buffer() {
  volatile oeth_bd xdata *rx_bd=OETH_BD_BASE+OETH_TXBD_NUM*sizeof(oeth_bd);
  uchar i;
  for(i=0;i < OETH_RXBD_NUM; i++,rx_bd++) {
    if (!(rx_bd->u.ls.status & OETH_RX_BD_EMPTY)){
      break;
    }
  }
  if(i== OETH_RXBD_NUM) return 0;
  return rx_bd;

}

  
void DumpRegs() {
  unsigned char i;
  for(i=0;i<=30;i++) {
    *MIIADDRESS = ((unsigned short)i)<<8;
    *MIICOMMAND  = OETH_MIICOMMAND_RSTAT;
  
    while(*MII_STATUS & OETH_MIISTATUS_BUSY);
    if (!(*MII_STATUS & OETH_MIISTATUS_NVALID)) {
      printf("%bu = %04x\r\n",i,*MII_RX_DATA);
    }   
  }  
}

/*void DumpRegs() {


  unsigned long xdata* pReg=ETH_BASE;

  while(pReg<=0xd050) {
    printf("%x = %l08x\n",(unsigned int)pReg,*pReg);
    pReg++;
  } 

}*/

/*********************************************************************************
* void RequestSend(uint FrameSize);
*
* Note: Frame-Size in BYTES
* Requests space in Ethernet-Controller's on-chip memory for storing an outgoing frame
* Refer to Fig. 5.12 data sheet for the bidding process
* This function must only be called ONCE, Will stall in an endless loop without
* net. So a maximum delay was added of 256 loops.
**********************************************************************************/
//#define TX_BD         (volatile struct _oeth_bd xdata*)(OETH_BD_BASE)

void RequestSend(uint FrameSize){

  volatile oeth_bd xdata *tx_bd= OETH_BD_BASE;
  tx_bd->u.ls.len    = FrameSize;
  tx_bd->u.ls.status = OETH_TX_BD_PAD | OETH_TX_BD_CRC | OETH_RX_BD_IRQ | OETH_TX_BD_WRAP;
  tx_bd->addr = TX_BD_BASE;

  
}

void Send_it() {
  volatile oeth_bd xdata *tx_bd= OETH_BD_BASE;
  tx_bd->u.ls.status |= (OETH_TX_BD_READY | OETH_TX_BD_IRQ | OETH_TX_BD_CRC);
}

unsigned int Read_Frame_word() {
  unsigned int tmp= *((unsigned int*)pRxPtr);
  pRxPtr+=2;
  return tmp;
}
    
unsigned long Read_Frame_long() {
  unsigned long tmp= *((unsigned long*)pRxPtr);
  pRxPtr+=4;
  return tmp;
}                           
/*
//#define Read_Frame_long() (*((unsigned long*)pRxPtr++))

void Write_Frame_long(unsigned long l) {
  *(unsigned long*)pRxPtr = l;
}

void Write_Frame_word(unsigned int w) {
  *(unsigned int*)pRxPtr++ = w;
}   */


//#define Write_Frame_word(w) (*((unsigned int*)pTxPtr++)=w)
//#define Write_Frame_long(w) (*((unsigned long*)pTxPtr++)=w)


// END





