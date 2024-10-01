/* $Workfile:   usb_regs.h $							 											*/
/* $Revision: 1.2 $                                            	*/
/* $Author: Andreas Voggeneder $                 								*/
/* $Date: 2003/08/14 08:02:29 $																	*/
/* Description:	USB HID Demo, usb-core register definitions 		*/
/*																											        */
/* Remarks:     No remarks.                                     */


#ifndef USB_REGS_H
#define USB_REGS_H

#define BASE_ADDRESS 0x7F00

#define USB_HOST_SLAVE_CTL_REG 	(*((volatile unsigned char xdata*)(BASE_ADDRESS+0xE0)))
#define USB_HOST_SLAVE_VERSION_REG (*((volatile unsigned char xdata*)(BASE_ADDRESS+0xE1)))
// USB SLAVE Registers
#define USB_CONTROL_REG          (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x50)))
#define SC_GLOBAL_ENABLE				0x01
#define SC_TX_LINE_STATE_0				0x02
#define SC_TX_LINE_STATE_1				0x04
#define SC_DIRECT_CONTROL				0x08
#define SC_FULL_SPD_LN_POLARITY			0x10
#define SC_FULL_SPD_LN_RATE				0x20

#define USB_LINE_STATUS_REG      (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x51)))
#define USB_LINE_RESET					0x00
#define LOW_SPEED_CONNECT				0x01
#define HIGH_SPEED_CONNECT				0x02

#define USB_INTERRUPT_STATUS_REG (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x52)))
#define USB_INTERRUPT_MASK_REG   (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x53)))
#define SC_TRANS_DONE					0x01
#define SC_RESUME_INT					0x02
#define SC_RESET_EVENT					0x04    // Line has entered reset state, or left reset state
#define SC_SOF_RECEIVED					0x08
#define SC_NAK_SENT_INT 				0x10

#define USB_ADDRESS              (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x54)))
#define USB_FRAME_NUM_MSP        (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x55)))
#define USB_FRAME_NUM_LSP        (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x56)))

// EPx_CONTROL_REG definitions
#define ENDPOINT_ENABLE					0x01
#define ENDPOINT_READY					0x02
#define ENDPOINT_OUTDATA_SEQ			0x04
#define ENDPOINT_SEND_STALL				0x08
#define ENDPOINT_ISO_ENABLE				0x10

// EPx_TRANSTYPE_STATUS_REG definitions
#define SC_SETUP_TRANS					0x00
#define SC_IN_TRANS						0x01
#define SC_OUTDATA_TRANS				0x02

//  USB Slave EP0 Register
#define EP0_CONTROL_REG               (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x40)))
#define EP0_STATUS_REG                (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x41)))
#define EP0_TRANSTYPE_STATUS_REG      (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x42)))
#define EP0_NAK_TRANSTYPE_STATUS_REG  (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x43)))

#define EP0_RX_FIFO_DATA              (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x60)))
#define EP0_RX_FIFO_DATA_COUNT_MSB    (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x62)))
#define EP0_RX_FIFO_DATA_COUNT_LSB    (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x63)))
#define EP0_RX_FIFO_CONTROL_REG       (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x64)))
#define EP0_TX_FIFO_DATA              (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x70)))
#define EP0_TX_FIFO_CONTROL_REG       (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x74)))

//  USB Slave EP1 Register
#define EP1_CONTROL_REG               (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x44)))
#define EP1_STATUS_REG                (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x45)))
#define EP1_TRANSTYPE_STATUS_REG      (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x46)))
#define EP1_NAK_TRANSTYPE_STATUS_REG  (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x47)))

#define EP1_RX_FIFO_DATA              (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x80)))
#define EP1_RX_FIFO_DATA_COUNT_MSB    (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x82)))
#define EP1_RX_FIFO_DATA_COUNT_LSB    (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x83)))
#define EP1_RX_FIFO_CONTROL_REG       (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x84)))
#define EP1_TX_FIFO_DATA              (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x90)))
#define EP1_TX_FIFO_CONTROL_REG       (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x94)))

//  USB Slave EP2 Register
#define EP2_CONTROL_REG               (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x48)))
#define EP2_STATUS_REG                (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x49)))
#define EP2_TRANSTYPE_STATUS_REG      (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x4A)))
#define EP2_NAK_TRANSTYPE_STATUS_REG  (*((volatile unsigned char xdata*)(BASE_ADDRESS+0x4B)))

#define EP2_RX_FIFO_DATA              (*((volatile unsigned char xdata*)(BASE_ADDRESS+0xA0)))
#define EP2_RX_FIFO_DATA_COUNT_MSB    (*((volatile unsigned char xdata*)(BASE_ADDRESS+0xA2)))
#define EP2_RX_FIFO_DATA_COUNT_LSB    (*((volatile unsigned char xdata*)(BASE_ADDRESS+0xA3)))
#define EP2_RX_FIFO_CONTROL_REG       (*((volatile unsigned char xdata*)(BASE_ADDRESS+0xA4)))
#define EP2_TX_FIFO_DATA              (*((volatile unsigned char xdata*)(BASE_ADDRESS+0xB0)))
#define EP2_TX_FIFO_CONTROL_REG       (*((volatile unsigned char xdata*)(BASE_ADDRESS+0xB4)))

__sbit __at (0xb7) USB_PHY_CONNECT;  // P3.7
#define CONNECT    0
#define DISCONNECT 1

#endif
