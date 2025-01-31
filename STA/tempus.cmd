#######################################################
#                                                     
#  Tempus Timing Solution Command Logging File                     
#  Created on Mon Jan 20 14:55:41 2025                
#                                                     
#######################################################

#@(#)CDS: Tempus Timing Solution v23.11-s111_1 (64bit) 05/16/2024 09:07 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 23.11-s111_1 NR240401-0735/23_11-UB (database version 18.20.622) {superthreading v2.20}
#@(#)CDS: AAE 23.11-s031 (64bit) 05/16/2024 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 23.11-s025_1 () May 16 2024 01:47:36 ( )
#@(#)CDS: SYNTECH 23.11-s010_1 () Apr  5 2024 04:21:08 ( )
#@(#)CDS: CPE v23.11-s059

::stop_gui -keepDgui
read_lib -max ../PNR/auto_3x3_sky_scl/lib/sky130_ss_1.62_125_nldm.lib
read_lib -min ../PNR/auto_3x3_sky_scl/lib/sky130_ff_1.98_0_nldm.lib
read_lib ../PNR/auto_3x3_sky_scl/lib/sky130_tt_1.8_25_nldm.lib
read_verilog SRC/fabric_netlists.v
set_top_module fpga_top -ignore_undefined_cell
report_timing
selectObject Net {cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_5_[0]}
exit
