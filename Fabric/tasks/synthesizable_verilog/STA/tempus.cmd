#######################################################
#                                                     
#  Tempus Timing Solution Command Logging File                     
#  Created on Thu Feb 13 03:51:17 2025                
#                                                     
#######################################################

#@(#)CDS: Tempus Timing Solution v23.11-s111_1 (64bit) 05/16/2024 09:07 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 23.11-s111_1 NR240401-0735/23_11-UB (database version 18.20.622) {superthreading v2.20}
#@(#)CDS: AAE 23.11-s031 (64bit) 05/16/2024 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 23.11-s025_1 () May 16 2024 01:47:36 ( )
#@(#)CDS: SYNTECH 23.11-s010_1 () Apr  5 2024 04:21:08 ( )
#@(#)CDS: CPE v23.11-s059

::stop_gui -keepDgui
read_lib -max ../../../../PNR/auto_3x3_sky_scl/lib/sky130_ss_1.62_125_nldm.lib
read_lib -min ../../../../PNR/auto_3x3_sky_scl/lib/sky130_ff_1.98_0_nldm.lib
read_lib ../../../../PNR/auto_3x3_sky_scl/lib/sky130_tt_1.8_25_nldm.lib
read_verilog SRC/fabric_netlists.v
set_top_module fpga_top
read_sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/cbx_1__0_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/cbx_1__1_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/cbx_1__2_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/cby_0__1_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/cby_1__1_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/cby_2__1_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/disable_configurable_memory_outputs.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/disable_configure_ports.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/disable_routing_multiplexer_outputs.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/disable_sb_outputs.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/global_ports.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/logical_tile_clb_mode_clb_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/logical_tile_clb_mode_default__fle.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/logical_tile_clb_mode_default__fle_mode_physical__fabric.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/logical_tile_io_mode_io_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/sb_0__0_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/sb_0__1_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/sb_0__2_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/sb_1__0_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/sb_1__1_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/sb_1__2_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/sb_2__0_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/sb_2__1_.sdc ../run001/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/sb_2__2_.sdc
report_timing
ctd_win -id ctdMain
selectObject Module grid_clb_2__2_
deselectObject Module grid_clb_2__2_
get_analysis_mode
report_slack_histogram
