###############################################################################
# Copyright (C) 1991-2004 Altera Corporation
# Any  megafunction  design,  and related netlist (encrypted  or  decrypted),
# support information,  device programming or simulation file,  and any other
# associated  documentation or information  provided by  Altera  or a partner
# under  Altera's   Megafunction   Partnership   Program  may  be  used  only
# to program  PLD  devices (but not masked  PLD  devices) from  Altera.   Any
# other  use  of such  megafunction  design,  netlist,  support  information,
# device programming or simulation file,  or any other  related documentation
# or information  is prohibited  for  any  other purpose,  including, but not
# limited to  modification,  reverse engineering,  de-compiling, or use  with
# any other  silicon devices,  unless such use is  explicitly  licensed under
# a separate agreement with  Altera  or a megafunction partner.  Title to the
# intellectual property,  including patents,  copyrights,  trademarks,  trade
# secrets,  or maskworks,  embodied in any such megafunction design, netlist,
# support  information,  device programming or simulation file,  or any other
# related documentation or information provided by  Altera  or a megafunction
# partner, remains with Altera, the megafunction partner, or their respective
# licensors. No other licenses, including any licenses needed under any third
# party's intellectual property, are provided herein.
#
###############################################################################


#FPGA Xchange file generated using Version 6.0 Build 202 06/20/2006 Service Pack 1 SJ Web Edition
DESIGN=ex20
DEVICE=EP1C12
PACKAGE=F256C
SPEEDGRADE=7



Pin Number, IO Bank, Signal Name, Direction, IO Standard, Drive (mA), Termination, Slew Rate, IOB Delay, Swap Group, Diff Type

T15,4,SWITCH1,INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
J15,3,altera_reserved_tms,INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
J14,3,altera_reserved_tck,INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
H14,3,altera_reserved_tdi,INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
G16,3,clk_50MHz,INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
G12,3,RxD232,INPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
P14,3,SWITCH3,INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
N13,3,LED[1],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
M13,3,LED[2],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
N12,4,LED[3],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
P12,4,LED[4],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
M12,4,LED[5],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
R12,4,LED[6],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
T11,4,LED[7],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
G13,3,Txd232,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
D14,3,SevenSeg_D_o[0],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
A15,2,SevenSeg_D_o[1],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
C14,3,SevenSeg_D_o[2],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
B14,2,SevenSeg_D_o[3],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
C13,2,SevenSeg_D_o[4],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
B16,3,SevenSeg_D_o[5],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
C15,3,SevenSeg_D_o[6],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
B15,2,SevenSeg_D_o[7],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
F12,3,SevenSegEn_o[0],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
E15,3,SevenSegEn_o[1],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
D16,3,SevenSegEn_o[2],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
D15,3,SevenSegEn_o[3],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
E14,3,SevenSegEn_o[4],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
D9,2,VgaRd0,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
D10,2,VgaRd1,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
C10,2,VgaGr0,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
B10,2,VgaGr1,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
E11,2,VgaBl0,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
D11,2,VgaBl1,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
C9,2,VgaHsync,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
C11,2,VgaVsync,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
H15,3,altera_reserved_tdo,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_3,
M15,3,SCL,OPEN_DRAIN_BIDIR,LVTTL,24,OFF,FAST,NONE,swap_4,
N16,3,SDA,OPEN_DRAIN_BIDIR,LVTTL,24,OFF,FAST,NONE,swap_4,
H13,3,Ps2Clk_io,OPEN_DRAIN_BIDIR,LVTTL,24,OFF,FAST,NONE,swap_5,
G15,3,Ps2Dat_io,OPEN_DRAIN_BIDIR,LVTTL,24,OFF,FAST,NONE,swap_5,
