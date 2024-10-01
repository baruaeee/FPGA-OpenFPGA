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


#FPGA Xchange file generated using Version 6.0 Build 178 04/27/2006 SJ Web Edition
DESIGN=ex13
DEVICE=EP1C12
PACKAGE=F256C
SPEEDGRADE=7



Pin Number, IO Bank, Signal Name, Direction, IO Standard, Drive (mA), Termination, Slew Rate, IOB Delay, Swap Group, Diff Type

G16,3,50MHz,INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
T13,4,SWITCH2,INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
N15,3,DIPSWITCH[7],INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
P13,4,DIPSWITCH[6],INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
N14,3,DIPSWITCH[5],INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
P15,3,DIPSWITCH[4],INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
R16,3,DIPSWITCH[3],INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
R14,4,DIPSWITCH[2],INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
R15,4,DIPSWITCH[1],INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
R13,4,DIPSWITCH[0],INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
B12,2,12_288MHz,INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
J15,3,altera_reserved_tms,INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
J14,3,altera_reserved_tck,INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
H14,3,altera_reserved_tdi,INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
T15,4,SWITCH1,INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
F13,3,DOUT,INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
E16,3,DIN,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
F16,3,BCKIN,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
F15,3,LRCIN,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
F14,3,RESETn,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
N13,3,LED[1],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
H15,3,altera_reserved_tdo,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
