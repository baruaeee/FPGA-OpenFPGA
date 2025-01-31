read_lib -max ../PNR/auto_3x3_sky_scl/lib/sky130_ss_1.62_125_nldm.lib
read_lib -min ../PNR/auto_3x3_sky_scl/lib/sky130_ff_1.98_0_nldm.lib
read_lib ../PNR/auto_3x3_sky_scl/lib/sky130_tt_1.8_25_nldm.lib
read_verilog SRC/fabric_netlists.v
set_top_module fpga_top -ignore_undefined_cell
