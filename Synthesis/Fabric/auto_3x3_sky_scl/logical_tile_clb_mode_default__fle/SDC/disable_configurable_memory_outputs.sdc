#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Disable configurable memory outputs for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Tue Nov 19 16:11:14 2024
#############################################

set_disable_timing logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut*_*/frac_lut*_DFFRX*_mem/DFFRX*_*_/Q
set_disable_timing logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut*_*/frac_lut*_DFFRX*_mem/DFFRX*_*_/QN
set_disable_timing logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/mem_frac_logic_out_*/DFFRX*_*_/Q
set_disable_timing logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/mem_frac_logic_out_*/DFFRX*_*_/QN
set_disable_timing logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/mem_fabric_out_*/DFFRX*_*_/Q
set_disable_timing logical_tile_clb_mode_default__fle/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/mem_fabric_out_*/DFFRX*_*_/QN

