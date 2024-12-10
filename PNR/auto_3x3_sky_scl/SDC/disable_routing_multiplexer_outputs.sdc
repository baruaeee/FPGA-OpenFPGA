#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Disable routing multiplexer outputs for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Thu Nov 21 16:42:28 2024

set_disable_timing cbx_*__*_/mux_bottom_ipin_*/out*
set_disable_timing cbx_*__*_/mux_top_ipin_*/out*
set_disable_timing cby_*__*_/mux_left_ipin_*/out*
set_disable_timing cby_*__*_/mux_right_ipin_*/out*
set_disable_timing sb_*__*_/mux_top_track_*/out*
set_disable_timing sb_*__*_/mux_right_track_*/out*
set_disable_timing sb_*__*_/mux_bottom_track_*/out*
set_disable_timing sb_*__*_/mux_left_track_*/out*

set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_9_in_5/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_9_in_4/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_9_in_3/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_9_in_2/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_9_in_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_9_in_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_8_in_5/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_8_in_4/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_8_in_3/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_8_in_2/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_8_in_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_8_in_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_7_in_5/out[0]}]
