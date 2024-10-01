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
DESIGN=seven_segment_exercise
DEVICE=EP1C12
PACKAGE=F256C
SPEEDGRADE=7



Pin Number, IO Bank, Signal Name, Direction, IO Standard, Drive (mA), Termination, Slew Rate, IOB Delay, Swap Group, Diff Type

P15,3,DIPSWITCH[4],INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
R13,4,DIPSWITCH[0],INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
N14,3,DIPSWITCH[5],INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
R15,4,DIPSWITCH[1],INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
P13,4,DIPSWITCH[6],INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
R14,4,DIPSWITCH[2],INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
N15,3,DIPSWITCH[7],INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
R16,3,DIPSWITCH[3],INPUT,LVTTL,24,OFF,FAST,NONE,swap_0,
G16,3,50MHz,INPUT,LVTTL,24,OFF,FAST,NONE,swap_1,
E15,3,DIG_2,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
F12,3,DIG_1,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
D16,3,DIG_3,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
C15,3,DIG_A,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
B16,3,DIG_B,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
C13,2,DIG_C,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
B14,2,DIG_D,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
C14,3,DIG_E,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
A15,2,DIG_F,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
D14,3,DIG_G,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
D15,3,DIG_4,OUTPUT,LVTTL,24,OFF,FAST,NONE,swap_2,
