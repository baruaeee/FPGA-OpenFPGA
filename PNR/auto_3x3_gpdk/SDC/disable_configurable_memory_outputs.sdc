#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Disable configurable memory outputs for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Wed Nov 27 01:00:48 2024

set_disable_timing sb_*__*_/mem_top_track_*/DFFRX*LVT_*_/Q
set_disable_timing sb_*__*_/mem_top_track_*/DFFRX*LVT_*_/QN
set_disable_timing sb_*__*_/mem_right_track_*/DFFRX*LVT_*_/Q
set_disable_timing sb_*__*_/mem_right_track_*/DFFRX*LVT_*_/QN
set_disable_timing sb_*__*_/mem_left_track_*/DFFRX*LVT_*_/Q
set_disable_timing sb_*__*_/mem_left_track_*/DFFRX*LVT_*_/QN
set_disable_timing cbx_*__*_/mem_bottom_ipin_*/DFFRX*LVT_*_/Q
set_disable_timing cbx_*__*_/mem_bottom_ipin_*/DFFRX*LVT_*_/QN
set_disable_timing cbx_*__*_/mem_top_ipin_*/DFFRX*LVT_*_/Q
set_disable_timing cbx_*__*_/mem_top_ipin_*/DFFRX*LVT_*_/QN
set_disable_timing grid_io_bottom_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/IORINGDB_DFFRX*LVT_mem/DFFRX*LVT_*_/Q
set_disable_timing grid_io_bottom_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/IORINGDB_DFFRX*LVT_mem/DFFRX*LVT_*_/QN
set_disable_timing grid_io_right_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/IORINGDB_DFFRX*LVT_mem/DFFRX*LVT_*_/Q
set_disable_timing grid_io_right_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/IORINGDB_DFFRX*LVT_mem/DFFRX*LVT_*_/QN
set_disable_timing grid_io_top_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/IORINGDB_DFFRX*LVT_mem/DFFRX*LVT_*_/Q
set_disable_timing grid_io_top_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/IORINGDB_DFFRX*LVT_mem/DFFRX*LVT_*_/QN
set_disable_timing sb_*__*_/mem_bottom_track_*/DFFRX*LVT_*_/Q
set_disable_timing sb_*__*_/mem_bottom_track_*/DFFRX*LVT_*_/QN
set_disable_timing cby_*__*_/mem_left_ipin_*/DFFRX*LVT_*_/Q
set_disable_timing cby_*__*_/mem_left_ipin_*/DFFRX*LVT_*_/QN
set_disable_timing cby_*__*_/mem_right_ipin_*/DFFRX*LVT_*_/Q
set_disable_timing cby_*__*_/mem_right_ipin_*/DFFRX*LVT_*_/QN
set_disable_timing grid_io_left_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/IORINGDB_DFFRX*LVT_mem/DFFRX*LVT_*_/Q
set_disable_timing grid_io_left_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/IORINGDB_DFFRX*LVT_mem/DFFRX*LVT_*_/QN
set_disable_timing grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut*_*/frac_lut*_DFFRX*LVT_mem/DFFRX*LVT_*_/Q
set_disable_timing grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut*_*/frac_lut*_DFFRX*LVT_mem/DFFRX*LVT_*_/QN
set_disable_timing grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/mem_frac_logic_out_*/DFFRX*LVT_*_/Q
set_disable_timing grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/mem_frac_logic_out_*/DFFRX*LVT_*_/QN
set_disable_timing grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/mem_fabric_out_*/DFFRX*LVT_*_/Q
set_disable_timing grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/mem_fabric_out_*/DFFRX*LVT_*_/QN
set_disable_timing grid_clb_*__*_/logical_tile_clb_mode_clb__*/mem_fle_*_in_*/DFFRX*LVT_*_/Q
set_disable_timing grid_clb_*__*_/logical_tile_clb_mode_clb__*/mem_fle_*_in_*/DFFRX*LVT_*_/QN
