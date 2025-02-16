#######################################################
#                                                     
#  Tempus Timing Solution Command Logging File                     
#  Created on Wed Feb 12 15:25:19 2025                
#                                                     
#######################################################

#@(#)CDS: Tempus Timing Solution v23.11-s111_1 (64bit) 05/16/2024 09:07 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 23.11-s111_1 NR240401-0735/23_11-UB (database version 18.20.622) {superthreading v2.20}
#@(#)CDS: AAE 23.11-s031 (64bit) 05/16/2024 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 23.11-s025_1 () May 16 2024 01:47:36 ( )
#@(#)CDS: SYNTECH 23.11-s010_1 () Apr  5 2024 04:21:08 ( )
#@(#)CDS: CPE v23.11-s059

::stop_gui -keepDgui
read_lib -max ../../../../../../../PNR/auto_3x3_sky_scl/lib/sky130_ss_1.62_125_nldm.lib ../../../../../../../PNR/8x8_osu/lib/sky130_osu_sc_18T_hs_ss_1P60_100C.ccs.lib
read_lib -min ../../../../../../../PNR/auto_3x3_sky_scl/lib/sky130_ff_1.98_0_nldm.lib ../../../../../../../PNR/8x8_osu/lib/sky130_osu_sc_18T_hs_ff_1P95_100C.ccs.lib
read_lib ../../../../../../../PNR/auto_3x3_sky_scl/lib/sky130_tt_1.8_25_nldm.lib ../../../../../../../../PDK/sky130_cds/sky130_osu_sc_t18/18T_hs/lib/tt/sky130_osu_sc_18T_hs_TT_1P8_25C.ccs.lib
read_verilog SRC/fabric_netlists.v
set_top_module fpga_top
read_sdc SDC/cbx_1__0_.sdc SDC/cbx_1__1_.sdc SDC/cbx_1__6_.sdc SDC/cby_0__1_.sdc SDC/cby_1__1_.sdc SDC/cby_6__1_.sdc SDC/disable_configurable_memory_outputs.sdc SDC/disable_configure_ports.sdc SDC/disable_routing_multiplexer_outputs.sdc SDC/disable_sb_outputs.sdc SDC/global_ports.sdc SDC/logical_tile_clb_mode_clb_.sdc SDC/logical_tile_clb_mode_default__fle.sdc SDC/logical_tile_clb_mode_default__fle_mode_physical__fabric.sdc SDC/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff.sdc SDC/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic.sdc SDC/logical_tile_io_mode_io_.sdc SDC/sb_0__0_.sdc SDC/sb_0__1_.sdc SDC/sb_0__6_.sdc SDC/sb_1__0_.sdc SDC/sb_1__1_.sdc SDC/sb_1__6_.sdc SDC/sb_6__0_.sdc SDC/sb_6__1_.sdc SDC/sb_6__6_.sdc
report_timing
read_sdc /home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/8x8/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/global_ports.sdc
report_timing
read_sdc /home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/8x8/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/global_ports.sdc
report_timing
read_sdc /home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/8x8/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/global_ports.sdc
report_timing
read_sdc /home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/8x8/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/global_ports.sdc
report_timing
read_sdc /home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/8x8/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/global_ports.sdc
report_timing
read_sdc /home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/8x8/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/global_ports.sdc
report_timing
read_sdc /home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/8x8/k6_frac_N10_tileable_40nm/and2/MIN_ROUTE_CHAN_WIDTH/SDC/global_ports.sdc
report_timing
