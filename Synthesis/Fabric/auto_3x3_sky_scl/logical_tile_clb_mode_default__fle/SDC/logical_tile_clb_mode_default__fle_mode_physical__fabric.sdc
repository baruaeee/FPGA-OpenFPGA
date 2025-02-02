#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Timing constraints for Grid logical_tile_clb_mode_default__fle_mode_physical__fabric in PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Tue Nov 19 16:11:14 2024
#############################################

#############################################
#	Define time unit 
#############################################
set_units -time s

set_max_delay -from logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_0/ff_Q[0] -to logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/fabric_out[0] 4.500000025e-11
set_max_delay -from logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/frac_logic_out[0] -to logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/fabric_out[0] 2.500000033e-11
set_max_delay -from logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1/ff_Q[0] -to logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/fabric_out[1] 4.500000025e-11
set_max_delay -from logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/frac_logic_out[1] -to logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/fabric_out[1] 2.500000033e-11
