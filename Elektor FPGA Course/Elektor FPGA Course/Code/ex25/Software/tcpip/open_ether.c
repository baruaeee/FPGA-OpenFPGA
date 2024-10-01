/*********************************************************************************
* open_ether.c
*
* This is the network driver for a OpenCores Ethernet MAC
* -> The Physical Layer ('PHY.C') <-
*
* V1.02 (C) 2006 Andreas Voggeneder
*
*
**********************************************************************************/

#include <stdio.h>

#include <reg52.h>

#include "net.h"		// MAC

#include "phy.h"		      // Physical Layer
#include "open_ether.h"		// OpenCores Ethernet MAC Register Definitions 
#include "../fpga_reg.h"

#ifndef PHY_ETH
 #error Ethernet-Phy must be defined in net.h
#endif

xdata uchar* near pRxPtr;

void set_mac_add(xdata uchar *addr)
{ 
  *MAC_ADDR2 = 	addr[0] << 8 	|	addr[1];
  *MAC_ADDR1 = *((unsigned long*)	&addr[2]);
}

uchar Init_Mac(void) {
  unsigned char i;
  volatile xdata oeth_bd* rxtx_bd;
  
  ethdis=0;
  *MODER = OETH_MODER_RST;	/* Reset ON */
	*MODER &= ~OETH_MODER_RST;	/* Reset OFF */
  *TX_BD_NUM=OETH_TXBD_NUM;
  *PACKETLEN = 0x00400600;
  *IPGT = 0x00000012;
  *IPGR1 = 0x0000000c;
  *IPGR2 = 0x00000012;
  *COLLCONF = 0x000f003f;
  *CTRLMODER = 0;

/*
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
  *MII_TX_DATA = 0x3300;
  *MIICOMMAND = OETH_MIICOMMAND_WCTRLDATA; 
  while(*MII_STATUS & OETH_MIISTATUS_BUSY) {
    i++;
  }   */ 

  // Set up TX Descriptors
  // Mapped between A400 and A40f
  rxtx_bd = OETH_BD_BASE;
  for(i = 0; i < OETH_TXBD_NUM; i++) {
    rxtx_bd[i].u.len_status = OETH_TX_BD_PAD | OETH_TX_BD_CRC | OETH_RX_BD_IRQ;
    rxtx_bd[i].addr = TX_BD_BASE+(MAX_FRAME_SIZE*i);
  }
  rxtx_bd[OETH_TXBD_NUM - 1].u.len_status |= OETH_TX_BD_WRAP;

  // Set up RX Descriptors
  rxtx_bd = (xdata oeth_bd*)((uint)OETH_BD_BASE+OETH_TXBD_NUM*sizeof(oeth_bd));   //RX_BD_BASE|OETH_BD_BASE;

  
  for(i = 0; i < OETH_RXBD_NUM; i++) {
    rxtx_bd[i].u.len_status = (0 << 16) | OETH_RX_BD_EMPTY | OETH_RX_BD_IRQ;
    rxtx_bd[i].addr = RX_BD_BASE+(MAX_FRAME_SIZE*i);
  }
  rxtx_bd[OETH_RXBD_NUM - 1].u.len_status |= OETH_RX_BD_WRAP;

  set_mac_add(my_mac);

  *INT_SOURCE = 0xffffffff;
  *INT_MASK = OETH_INT_MASK_TXB 	| 
        			OETH_INT_MASK_TXE 	| 
        			OETH_INT_MASK_RXF 	| 
        			OETH_INT_MASK_RXE 	|
        			OETH_INT_MASK_BUSY 	|
        			OETH_INT_MASK_TXC	  |
        			OETH_INT_MASK_RXC;
  *MODER |=  OETH_MODER_PAD | OETH_MODER_IFG | OETH_MODER_CRCEN
         | OETH_MODER_RXEN | OETH_MODER_TXEN ;
  return 0;
}

extern xdata oeth_bd* near rx_bd;

void init_rx(void) {
//    pRxPtr=(xdata uchar*)((*((xdata uint*)(rx_bd->addr)+1))|((uint)ETH_BUFFER_BASE));
// stupid compiler :-(
    xdata uint* ptmp= (xdata uint*)*((xdata uint*)(&rx_bd->addr)+1);
    pRxPtr=(xdata uchar*)((uint)ptmp|ETH_BUFFER_BASE);
}

xdata oeth_bd* find_RX_Buffer() {
  volatile xdata oeth_bd *rx_bd=(xdata oeth_bd*)((uint)OETH_BD_BASE+OETH_TXBD_NUM*sizeof(oeth_bd));
  uchar i;
  for(i=0;i < OETH_RXBD_NUM; i++,rx_bd++) {
    if (!(rx_bd->u.ls.status & OETH_RX_BD_EMPTY)){
      break;
    }
    
  }
  if(i== OETH_RXBD_NUM) return 0;
  return rx_bd;

}


/*********************************************************************************
* void RequestSend(uint FrameSize);
*
* Note: Frame-Size in BYTES
* Requests space in on-chip memory for storing an outgoing frame
* This function must only be called ONCE.
**********************************************************************************/
//#define TX_BD         (volatile struct _oeth_bd xdata*)(OETH_BD_BASE)

xdata uchar* near pTxPtr=0;

void RequestSend_Phy(uint FrameSize){

  volatile xdata oeth_bd* tx_bd= OETH_BD_BASE;
  tx_bd->u.ls.len    = FrameSize;
  tx_bd->u.ls.status = OETH_TX_BD_PAD | OETH_TX_BD_CRC | OETH_RX_BD_IRQ | OETH_TX_BD_WRAP;
  tx_bd->addr = TX_BD_BASE;
  pTxPtr=(volatile xdata unsigned long*)(TX_BD_BASE|(ETH_BUFFER_BASE));
  
}

void CommitSend_Phy() {
  volatile oeth_bd xdata *tx_bd= OETH_BD_BASE;
  tx_bd->u.ls.status |= (OETH_TX_BD_READY | OETH_TX_BD_IRQ | OETH_TX_BD_CRC);
}

unsigned int Read_Frame_word_Phy(void) {
  unsigned int tmp= *((xdata unsigned int*)pRxPtr);
  pRxPtr+=2;
  return tmp;
}
    
unsigned long Read_Frame_long_Phy(void) {
  unsigned long tmp= *((xdata unsigned long*)pRxPtr);
  pRxPtr+=4;
  return tmp;
}   

void Read_Frame_xdata_Phy(xdata uchar*ps, uint len) {
  while(len--) {
    *ps++=*pRxPtr++;
  } 
}


void Write_Frame_word_Phy(uint Data) {
  (*((xdata unsigned int*)pTxPtr)=Data); 
  pTxPtr+=2;
}

void Write_Frame_long_Phy(unsigned long Data){
  (*((xdata unsigned long*)pTxPtr)=Data);
  pTxPtr+=4;
}

void Write_Frame_xdata_Phy(xdata uchar* ps, uint len) {
  while(len--) {
    *pTxPtr++=*ps++;
  } 
}

// END


