/* $Workfile:   fpga_reg.h $                                     */
/* $Revision: 1.12 $                                              */
/* $Author: hse00045 $                                            */
/* $Date: 2003/09/11 13:01:39 $                                   */
/* Description: Definition of Registers                           */
/*                                                                                                                    */
/* Remarks:     No remarks.                                       */

#ifndef _FPGA_REG_
#define _FPGA_REG_ 


__sfr __at (0xC0) sevseg_ctrl;
__sbit __at (0xc4) DP0;
__sbit __at (0xc5) DP1;
__sbit __at (0xc6) DP2;
__sbit __at (0xc7) DP3;

__sfr __at (0xd8) ps2_ctrl;
__sbit __at (0xd8) ps2_rxf;
__sbit __at (0xd9) ps2_ovf;
__sbit __at (0xda) ps2_rx_busy;
__sbit __at (0xdb) ps2_tx_busy;
__sbit __at (0xdc) ps2_ack;
__sbit __at (0xdf) ps2_init;
__sfr __at (0xd9) ps2_data;


#endif
