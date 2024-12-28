#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Disable routing multiplexer outputs for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Tue Nov 19 16:11:14 2024
#############################################


set_disable_timing logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/mux_frac_logic_out_*/out*
set_disable_timing logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/mux_fabric_out_*/out*
