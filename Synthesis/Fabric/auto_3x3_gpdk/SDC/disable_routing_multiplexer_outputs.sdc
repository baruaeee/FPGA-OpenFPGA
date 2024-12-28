#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Disable routing multiplexer outputs for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Wed Nov 27 19:26:12 2024

set_disable_timing cbx_*__*_/mux_bottom_ipin_*/out*
set_disable_timing cbx_*__*_/mux_top_ipin_*/out*
set_disable_timing cby_*__*_/mux_left_ipin_*/out*
set_disable_timing cby_*__*_/mux_right_ipin_*/out*
set_disable_timing sb_*__*_/mux_top_track_*/out*
set_disable_timing sb_*__*_/mux_right_track_*/out*
set_disable_timing sb_*__*_/mux_bottom_track_*/out*
set_disable_timing sb_*__*_/mux_left_track_*/out*

