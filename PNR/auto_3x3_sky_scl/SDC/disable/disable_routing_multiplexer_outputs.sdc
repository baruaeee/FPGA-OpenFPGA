#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Disable routing multiplexer outputs for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Thu Nov 21 16:42:28 2024




set_disable_timing grid_clb_*__*_/logical_tile_clb_mode_clb__*/mux_fle_*_in_*/out*

###### crash cause
## set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/mux_fle_0_in_0/out[0]}]
## set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_1/out[0]}]
##  set_disable_timing [get_pins {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_fabric_out_0/out[0]}]




set_disable_timing grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/mux_fabric_out_*/out*
