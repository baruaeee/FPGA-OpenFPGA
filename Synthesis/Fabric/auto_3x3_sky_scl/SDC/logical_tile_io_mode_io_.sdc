#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Timing constraints for Grid logical_tile_io_mode_io_ in PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Wed Nov  6 21:49:00 2024
#############################################

set_max_delay -from fpga_top/grid_io_left_*__*_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/iopad_inpad[0] -to fpga_top/grid_io_left_*__*_/logical_tile_io_mode_io__0/io_inpad[0] 4.243000049e-11
set_max_delay -from fpga_top/grid_io_left_*__*_/logical_tile_io_mode_io__0/io_outpad[0] -to fpga_top/grid_io_left_*__*_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/iopad_outpad[0] 1.39400002e-11
