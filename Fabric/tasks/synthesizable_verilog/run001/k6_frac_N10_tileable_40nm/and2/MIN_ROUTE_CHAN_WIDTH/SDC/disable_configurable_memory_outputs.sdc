#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Disable configurable memory outputs for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Sat Oct 26 03:42:38 2024
#############################################

set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/cbx_*__*_/mem_bottom_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/cbx_*__*_/mem_bottom_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/cbx_*__*_/mem_bottom_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/cbx_*__*_/mem_bottom_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/cbx_*__*_/mem_top_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/cbx_*__*_/mem_top_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/grid_io_bottom_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_sky*_fd_sc_hd__dfrbp_*_mem/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/grid_io_bottom_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_sky*_fd_sc_hd__dfrbp_*_mem/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/grid_io_right_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_sky*_fd_sc_hd__dfrbp_*_mem/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/grid_io_right_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_sky*_fd_sc_hd__dfrbp_*_mem/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/grid_io_top_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_sky*_fd_sc_hd__dfrbp_*_mem/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/grid_io_top_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_sky*_fd_sc_hd__dfrbp_*_mem/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/cby_*__*_/mem_left_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/cby_*__*_/mem_left_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/cby_*__*_/mem_left_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/cby_*__*_/mem_left_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/cby_*__*_/mem_right_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/cby_*__*_/mem_right_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/grid_io_left_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_sky*_fd_sc_hd__dfrbp_*_mem/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/grid_io_left_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_sky*_fd_sc_hd__dfrbp_*_mem/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/cbx_*__*_/mem_bottom_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/cbx_*__*_/mem_bottom_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/cbx_*__*_/mem_top_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/cbx_*__*_/mem_top_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/cbx_*__*_/mem_top_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/cbx_*__*_/mem_top_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/cby_*__*_/mem_left_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/cby_*__*_/mem_left_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/cby_*__*_/mem_right_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/cby_*__*_/mem_right_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/cby_*__*_/mem_right_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/cby_*__*_/mem_right_ipin_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut*_*/frac_lut*_sky*_fd_sc_hd__dfrbp_*_mem/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut*_*/frac_lut*_sky*_fd_sc_hd__dfrbp_*_mem/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/mem_frac_logic_out_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_*/mem_frac_logic_out_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/mem_fabric_out_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__fabric_*/mem_fabric_out_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/mem_fle_*_in_*/sky*_fd_sc_hd__dfrbp_*_*_/Q
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/mem_fle_*_in_*/sky*_fd_sc_hd__dfrbp_*_*_/Q_N