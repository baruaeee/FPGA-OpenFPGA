#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Disable configurable memory outputs for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Thu Nov 21 16:42:28 2024

set_disable_timing sb_*__*_/mem_top_track_*/DFFRX*_*_/Q
set_disable_timing sb_*__*_/mem_top_track_*/DFFRX*_*_/QN
set_disable_timing sb_*__*_/mem_right_track_*/DFFRX*_*_/Q
set_disable_timing sb_*__*_/mem_right_track_*/DFFRX*_*_/QN
set_disable_timing sb_*__*_/mem_left_track_*/DFFRX*_*_/Q
set_disable_timing sb_*__*_/mem_left_track_*/DFFRX*_*_/QN
set_disable_timing cbx_*__*_/mem_bottom_ipin_*/DFFRX*_*_/Q
set_disable_timing cbx_*__*_/mem_bottom_ipin_*/DFFRX*_*_/QN
set_disable_timing cbx_*__*_/mem_top_ipin_*/DFFRX*_*_/Q
set_disable_timing cbx_*__*_/mem_top_ipin_*/DFFRX*_*_/QN
