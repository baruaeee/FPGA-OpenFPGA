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
set_disable_timing grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/mux_frac_logic_out_*/out*


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
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_7_in_4/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_7_in_3/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_7_in_2/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_7_in_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_7_in_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_6_in_5/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_6_in_4/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_6_in_3/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_6_in_2/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_6_in_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_6_in_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_5_in_5/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_5_in_4/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_5_in_3/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_5_in_2/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_5_in_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_5_in_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_4_in_5/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_4_in_4/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_4_in_3/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_4_in_2/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_4_in_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_4_in_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_3_in_5/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_3_in_4/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_3_in_3/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_3_in_2/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_3_in_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_3_in_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_2_in_5/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_2_in_4/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_2_in_3/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_2_in_2/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_2_in_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_2_in_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_1_in_5/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_1_in_4/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_1_in_3/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_1_in_2/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_1_in_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_1_in_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_0_in_5/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_0_in_4/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_0_in_3/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_0_in_2/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_0_in_1/out[0]}]

##set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_0_in_0/out[0]}]
set_disable_timing [get_cells {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_0_in_0}]


set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/out[0]}]
set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/out[0]}]


#set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/out[0]}]
##set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/out[0]}]








#set_disable_timing [get_cells {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1}]
#set_disable_timing [get_cells {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0}]



#set_disable_timing [get_cells {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/g3}]

#set_disable_timing [get_cells {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/g1}]


#set_disable_timing -from [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/in[0]}] -to [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/out[0]}]


#grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/g3/Y
#grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/g3/A
#grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/g3/B
#grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/g3/S0




set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/g1/Y}]

set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/g1/Y}]




