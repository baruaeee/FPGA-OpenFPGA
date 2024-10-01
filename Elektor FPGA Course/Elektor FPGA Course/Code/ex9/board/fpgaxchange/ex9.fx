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


#FPGA Xchange file generated using Version 5.1 Build 176 10/26/2005 Service Pack 0.15 SJ Web Edition
DESIGN=ex9
DEVICE=EP1C12
PACKAGE=F256C
SPEEDGRADE=7



Pin Number, IO Bank, Signal Name, Direction, IO Standard, Drive (mA), Termination, Slew Rate, IOB Delay, Swap Group, Diff Type

T15,4,SWITCH1,INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
J15,3,altera_reserved_tms,INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
J14,3,altera_reserved_tck,INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
H14,3,altera_reserved_tdi,INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
G16,3,50MHz,INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
P14,3,SWITCH3,INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
T11,4,LED[7],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
R12,4,LED[6],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
M12,4,LED[5],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
P12,4,LED[4],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
N12,4,LED[3],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
M13,3,LED[2],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
N13,3,LED[1],OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
H15,3,altera_reserved_tdo,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
N16,3,SDA,BIDIR,LVTTL,24,OFF,FAST,NONE,swap_3,
M15,3,SCL,BIDIR,LVTTL,24,OFF,FAST,NONE,swap_3,
