#ifndef _ETH_REGS_
#define _ETH_REGS_

#define OETH_RX_BUFF_SIZE	2048
#define OETH_TX_BUFF_SIZE	2048

#define OETH_RXBD_NUM		4
#define OETH_TXBD_NUM		1
#define OETH_RXBD_NUM_MASK	(OETH_RXBD_NUM-1)
#define OETH_TXBD_NUM_MASK	(OETH_TXBD_NUM-1)

/* How many buffers per page 
 */
#define OETH_RX_BUFF_PPGAE	(PAGE_SIZE/OETH_RX_BUFF_SIZE)
#define OETH_TX_BUFF_PPGAE	(PAGE_SIZE/OETH_TX_BUFF_SIZE)

/* How many pages is needed for buffers 
 */
#define OETH_RX_BUFF_PAGE_NUM	(OETH_RXBD_NUM/OETH_RX_BUFF_PPGAE)
#define OETH_TX_BUFF_PAGE_NUM	(OETH_TXBD_NUM/OETH_TX_BUFF_PPGAE)

#define MAX_FRAME_SIZE		1536 //1518
#define RX_BD_BASE 0
#define TX_BD_BASE (RX_BD_BASE + MAX_FRAME_SIZE*OETH_RXBD_NUM) //0x1000

#define ETH_BUFFER_BASE 0xE000
#define ETH_BASE 0xD000

#define MODER         (volatile xdata unsigned long*)(ETH_BASE)
#define INT_SOURCE    (volatile xdata unsigned char*)(ETH_BASE+4+3)
#define INT_MASK      (volatile xdata unsigned char*)(ETH_BASE+8+3)
#define IPGT          (volatile xdata unsigned char*)(ETH_BASE+12+3)
#define IPGR1         (volatile xdata unsigned char*)(ETH_BASE+16+3)
#define IPGR2         (volatile xdata unsigned char*)(ETH_BASE+20+3)
#define PACKETLEN     (volatile xdata unsigned long*)(ETH_BASE+24)
#define COLLCONF      (volatile xdata unsigned long*)(ETH_BASE+28)
#define TX_BD_NUM     (volatile xdata unsigned char*)(ETH_BASE+32+3)
#define CTRLMODER     (volatile xdata unsigned char*)(ETH_BASE+36+3)
#define MIIMODER      (volatile xdata unsigned short*)(ETH_BASE+40+2)
#define MIICOMMAND    (volatile xdata unsigned char*)(ETH_BASE+44+3)
#define MIIADDRESS    (volatile xdata unsigned short*)(ETH_BASE+48+2)
#define MII_TX_DATA   (volatile xdata unsigned short*)(ETH_BASE+52+2)
#define MII_RX_DATA   (volatile xdata unsigned short*)(ETH_BASE+56+2)
#define MII_STATUS    (volatile xdata unsigned char*)(ETH_BASE+60+3)
#define MAC_ADDR1     (volatile xdata unsigned long*)(ETH_BASE+64)
#define MAC_ADDR2     (volatile xdata unsigned long*)(ETH_BASE+68)
#define ETH_HASH0_ADR (volatile xdata unsigned long*)(ETH_BASE+72)
#define ETH_HASH1_ADR (volatile xdata unsigned long*)(ETH_BASE+76)
#define ETH_TXCTRL    (volatile xdata unsigned long*)(ETH_BASE+80)

typedef struct {
  unsigned short  len;            /* Buffer length */
  unsigned short  status;         /* Buffer status */
}tLS;

typedef union {
    unsigned long len_status;
    tLS ls;
} tU;

typedef struct _oeth_bd {
        tU              u;
        unsigned long   addr;           /* Buffer address */
} oeth_bd;

#define OETH_REG_BASE           ETH_BASE
#define OETH_BD_BASE            (volatile xdata unsigned long*)(ETH_BASE + 0x400)
#define OETH_TOTAL_BD           128
#define OETH_MAXBUF_LEN         0x600
                                
/* Tx BD */                     
#define OETH_TX_BD_READY        0x8000 /* Tx BD Ready */
#define OETH_TX_BD_IRQ          0x4000 /* Tx BD IRQ Enable */
#define OETH_TX_BD_WRAP         0x2000 /* Tx BD Wrap (last BD) */
#define OETH_TX_BD_PAD          0x1000 /* Tx BD Pad Enable */
#define OETH_TX_BD_CRC          0x0800 /* Tx BD CRC Enable */
                                
#define OETH_TX_BD_UNDERRUN     0x0100 /* Tx BD Underrun Status */
#define OETH_TX_BD_RETRY        0x00F0 /* Tx BD Retry Status */
#define OETH_TX_BD_RETLIM       0x0008 /* Tx BD Retransmission Limit Status */
#define OETH_TX_BD_LATECOL      0x0004 /* Tx BD Late Collision Status */
#define OETH_TX_BD_DEFER        0x0002 /* Tx BD Defer Status */
#define OETH_TX_BD_CARRIER      0x0001 /* Tx BD Carrier Sense Lost Status */
#define OETH_TX_BD_STATS        (OETH_TX_BD_UNDERRUN            | \
                                OETH_TX_BD_RETRY                | \
                                OETH_TX_BD_RETLIM               | \
                                OETH_TX_BD_LATECOL              | \
                                OETH_TX_BD_DEFER                | \
                                OETH_TX_BD_CARRIER)
                                
/* Rx BD */                     
#define OETH_RX_BD_EMPTY        0x8000 /* Rx BD Empty */
#define OETH_RX_BD_IRQ          0x4000 /* Rx BD IRQ Enable */
#define OETH_RX_BD_WRAP         0x2000 /* Rx BD Wrap (last BD) */
                                
#define OETH_RX_BD_MISS         0x0080 /* Rx BD Miss Status */
#define OETH_RX_BD_OVERRUN      0x0040 /* Rx BD Overrun Status */
#define OETH_RX_BD_INVSIMB      0x0020 /* Rx BD Invalid Symbol Status */
#define OETH_RX_BD_DRIBBLE      0x0010 /* Rx BD Dribble Nibble Status */
#define OETH_RX_BD_TOOLONG      0x0008 /* Rx BD Too Long Status */
#define OETH_RX_BD_SHORT        0x0004 /* Rx BD Too Short Frame Status */
#define OETH_RX_BD_CRCERR       0x0002 /* Rx BD CRC Error Status */
#define OETH_RX_BD_LATECOL      0x0001 /* Rx BD Late Collision Status */
#define OETH_RX_BD_STATS        (OETH_RX_BD_MISS                | \
                                OETH_RX_BD_OVERRUN              | \
                                OETH_RX_BD_INVSIMB              | \
                                OETH_RX_BD_DRIBBLE              | \
                                OETH_RX_BD_TOOLONG              | \
                                OETH_RX_BD_SHORT                | \
                                OETH_RX_BD_CRCERR               | \
                                OETH_RX_BD_LATECOL)

/* MODER Register */
#define OETH_MODER_RXEN         0x00000001 /* Receive Enable  */
#define OETH_MODER_TXEN         0x00000002 /* Transmit Enable */
#define OETH_MODER_NOPRE        0x00000004 /* No Preamble  */
#define OETH_MODER_BRO          0x00000008 /* Reject Broadcast */
#define OETH_MODER_IAM          0x00000010 /* Use Individual Hash */
#define OETH_MODER_PRO          0x00000020 /* Promiscuous (receive all) */
#define OETH_MODER_IFG          0x00000040 /* Min. IFG not required */
#define OETH_MODER_LOOPBCK      0x00000080 /* Loop Back */
#define OETH_MODER_NOBCKOF      0x00000100 /* No Backoff */
#define OETH_MODER_EXDFREN      0x00000200 /* Excess Defer */
#define OETH_MODER_FULLD        0x00000400 /* Full Duplex */
#define OETH_MODER_RST          0x00000800 /* Reset MAC */
#define OETH_MODER_DLYCRCEN     0x00001000 /* Delayed CRC Enable */
#define OETH_MODER_CRCEN        0x00002000 /* CRC Enable */
#define OETH_MODER_HUGEN        0x00004000 /* Huge Enable */
#define OETH_MODER_PAD          0x00008000 /* Pad Enable */
#define OETH_MODER_RECSMALL     0x00010000 /* Receive Small */
 
/* Interrupt Source Register */
#define OETH_INT_TXB            0x00000001 /* Transmit Buffer IRQ */
#define OETH_INT_TXE            0x00000002 /* Transmit Error IRQ */
#define OETH_INT_RXF            0x00000004 /* Receive Frame IRQ */
#define OETH_INT_RXE            0x00000008 /* Receive Error IRQ */
#define OETH_INT_BUSY           0x00000010 /* Busy IRQ */
#define OETH_INT_TXC            0x00000020 /* Transmit Control Frame IRQ */
#define OETH_INT_RXC            0x00000040 /* Received Control Frame IRQ */

/* Interrupt Mask Register */
#define OETH_INT_MASK_TXB       0x00000001 /* Transmit Buffer IRQ Mask */
#define OETH_INT_MASK_TXE       0x00000002 /* Transmit Error IRQ Mask */
#define OETH_INT_MASK_RXF       0x00000004 /* Receive Frame IRQ Mask */
#define OETH_INT_MASK_RXE       0x00000008 /* Receive Error IRQ Mask */
#define OETH_INT_MASK_BUSY      0x00000010 /* Busy IRQ Mask */
#define OETH_INT_MASK_TXC       0x00000020 /* Transmit Control Frame IRQ Mask */
#define OETH_INT_MASK_RXC       0x00000040 /* Received Control Frame IRQ Mask */
 
/* Control Module Mode Register */
#define OETH_CTRLMODER_PASSALL  0x00000001 /* Pass Control Frames */
#define OETH_CTRLMODER_RXFLOW   0x00000002 /* Receive Control Flow Enable */
#define OETH_CTRLMODER_TXFLOW   0x00000004 /* Transmit Control Flow Enable */
                               
/* MII Mode Register */        
#define OETH_MIIMODER_CLKDIV    0x000000FF /* Clock Divider */
#define OETH_MIIMODER_NOPRE     0x00000100 /* No Preamble */
#define OETH_MIIMODER_RST       0x00000200 /* MIIM Reset */
 
/* MII Command Register */
#define OETH_MIICOMMAND_SCANSTAT  0x00000001 /* Scan Status */
#define OETH_MIICOMMAND_RSTAT     0x00000002 /* Read Status */
#define OETH_MIICOMMAND_WCTRLDATA 0x00000004 /* Write Control Data */
 
/* MII Address Register */
#define OETH_MIIADDRESS_FIAD    0x0000001F /* PHY Address */
#define OETH_MIIADDRESS_RGAD    0x00001F00 /* RGAD Address */
 
/* MII Status Register */
#define OETH_MIISTATUS_LINKFAIL 0x00000001 /* Link Fail */
#define OETH_MIISTATUS_BUSY     0x00000002 /* MII Busy */
#define OETH_MIISTATUS_NVALID   0x00000004 /* Data in MII Status Register is invalid */

uchar Init_Mac(void);
xdata oeth_bd* find_RX_Buffer(void);
void init_rx(void);


#endif