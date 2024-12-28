#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Timing constraints for Grid logical_tile_clb_mode_clb_ in PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Tue Nov 19 16:11:14 2024
#############################################

#############################################
#	Define time unit 
#############################################
set_units -time s

set_max_delay -from logical_tile_clb_mode_default__fle/fle_out[0] -to logical_tile_clb_mode_default__fle/fle_in[0] 7.499999927e-11
set_max_delay -from logical_tile_clb_mode_default__fle/fle_out[1] -to logical_tile_clb_mode_default__fle/fle_in[0] 7.499999927e-11


set_max_delay -from logical_tile_clb_mode_default__fle/fle_out[0] -to logical_tile_clb_mode_default__fle/fle_in[1] 7.499999927e-11
set_max_delay -from logical_tile_clb_mode_default__fle/fle_out[1] -to logical_tile_clb_mode_default__fle/fle_in[1] 7.499999927e-11

set_max_delay -from logical_tile_clb_mode_default__fle/fle_out[0] -to logical_tile_clb_mode_default__fle/fle_in[2] 7.499999927e-11
set_max_delay -from logical_tile_clb_mode_default__fle/fle_out[1] -to logical_tile_clb_mode_default__fle/fle_in[2] 7.499999927e-11




set_max_delay -from logical_tile_clb_mode_default__fle/fle_out[0] -to logical_tile_clb_mode_default__fle/fle_in[3] 7.499999927e-11
set_max_delay -from logical_tile_clb_mode_default__fle/fle_out[1] -to logical_tile_clb_mode_default__fle/fle_in[3] 7.499999927e-11

set_max_delay -from logical_tile_clb_mode_default__fle/fle_out[0] -to logical_tile_clb_mode_default__fle/fle_in[4] 7.499999927e-11
set_max_delay -from logical_tile_clb_mode_default__fle/fle_out[1] -to logical_tile_clb_mode_default__fle/fle_in[4] 7.499999927e-11



set_max_delay -from logical_tile_clb_mode_default__fle/fle_out[0] -to logical_tile_clb_mode_default__fle/fle_in[5] 7.499999927e-11
set_max_delay -from logical_tile_clb_mode_default__fle/fle_out[1] -to logical_tile_clb_mode_default__fle/fle_in[5] 7.499999927e-11
