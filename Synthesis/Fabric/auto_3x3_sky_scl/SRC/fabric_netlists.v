//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Fabric Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Nov 21 02:53:53 2024
//-------------------------------------------
// ------ Include defines: preproc flags -----
`include "./SRC/fpga_defines.v"

// ------ Include user-defined netlists -----
//`include "/home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/sky130_scl_9T.v"
`include "/home/cae1/Desktop/PDK/skywater-pdk/libraries/sky130_fd_io/latest/cells/top_ground_hvc_wpad/sky130_fd_io__top_ground_hvc_wpad.behavioral.pp.v"
`include "/home/cae1/Desktop/PDK/skywater-pdk/libraries/sky130_fd_io/latest/cells/top_power_hvc_wpadv2/sky130_fd_io__top_power_hvc_wpadv2.behavioral.pp.v"
`include "/home/cae1/Desktop/FPGA-OpenFPGA/Synthesis/GPIO/outputs/inpad_netlist.v"
`include "/home/cae1/Desktop/FPGA-OpenFPGA/Synthesis/GPIO/outputs/outpad_netlist.v"
`include "/home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/GPIO/gpio_netlist_sky130_scl.v"
// ------ Include primitive module netlists -----
`include "./SRC/sub_module/inv_buf_passgate.v"
`include "./SRC/sub_module/arch_encoder.v"
`include "./SRC/sub_module/local_encoder.v"
`include "./SRC/sub_module/mux_primitives.v"
`include "./SRC/sub_module/muxes.v"
`include "./SRC/sub_module/luts.v"
`include "./SRC/sub_module/wires.v"
`include "./SRC/sub_module/memories.v"
`include "./SRC/sub_module/shift_register_banks.v"

// ------ Include logic block netlists -----
`include "./SRC/lb/logical_tile_io_mode_physical__iopad.v"
`include "./SRC/lb/logical_tile_io_mode_io_.v"
`include "./SRC/lb/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6.v"
`include "./SRC/lb/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic.v"
`include "./SRC/lb/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff.v"
`include "./SRC/lb/logical_tile_clb_mode_default__fle_mode_physical__fabric.v"
`include "./SRC/lb/logical_tile_clb_mode_default__fle.v"
`include "./SRC/lb/logical_tile_clb_mode_clb_.v"
`include "./SRC/lb/grid_io_top.v"
`include "./SRC/lb/grid_io_right.v"
`include "./SRC/lb/grid_io_bottom.v"
`include "./SRC/lb/grid_io_left.v"
`include "./SRC/lb/grid_clb.v"

// ------ Include routing module netlists -----
`include "./SRC/routing/sb_0__0_.v"
`include "./SRC/routing/sb_0__1_.v"
`include "./SRC/routing/sb_1__0_.v"
`include "./SRC/routing/sb_1__1_.v"
`include "./SRC/routing/cbx_1__0_.v"
`include "./SRC/routing/cbx_1__1_.v"
`include "./SRC/routing/cby_0__1_.v"
`include "./SRC/routing/cby_1__1_.v"

// ------ Include tile module netlists -----

// ------ Include fabric top-level netlists -----
//`include "./SRC/fpga_top.v"
`include "./SRC/fpga_top_pads.v"
