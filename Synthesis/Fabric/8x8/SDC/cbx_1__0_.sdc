current_design fpga_top

#	Define time unit 
#############################################
set_units -time s

##################################################
# Create clock                                    
##################################################
create_clock -name clk[0] -period 9.460329187e-10 -waveform {0 4.730164593e-10} [get_ports {clk[0]}]
##################################################
# Create programmable clock                       
##################################################
create_clock -name prog_clk[0] -period 9.999999939e-09 -waveform {0 4.99999997e-09} [get_ports {prog_clk[0]}]

#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Constrain timing of Connection Block cbx_1__0_ for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Sun Nov  3 16:14:40 2024
#############################################

set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[0] -to fpga_top/cbx_1__0_/chanx_left_out[0] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[0] -to fpga_top/cbx_1__0_/chanx_right_out[0] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[1] -to fpga_top/cbx_1__0_/chanx_left_out[1] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[1] -to fpga_top/cbx_1__0_/chanx_right_out[1] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[2] -to fpga_top/cbx_1__0_/chanx_left_out[2] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[2] -to fpga_top/cbx_1__0_/chanx_right_out[2] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[3] -to fpga_top/cbx_1__0_/chanx_left_out[3] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[3] -to fpga_top/cbx_1__0_/chanx_right_out[3] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[4] -to fpga_top/cbx_1__0_/chanx_left_out[4] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[4] -to fpga_top/cbx_1__0_/chanx_right_out[4] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[5] -to fpga_top/cbx_1__0_/chanx_left_out[5] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[5] -to fpga_top/cbx_1__0_/chanx_right_out[5] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[6] -to fpga_top/cbx_1__0_/chanx_left_out[6] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[6] -to fpga_top/cbx_1__0_/chanx_right_out[6] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[7] -to fpga_top/cbx_1__0_/chanx_left_out[7] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[7] -to fpga_top/cbx_1__0_/chanx_right_out[7] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[8] -to fpga_top/cbx_1__0_/chanx_left_out[8] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[8] -to fpga_top/cbx_1__0_/chanx_right_out[8] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[9] -to fpga_top/cbx_1__0_/chanx_left_out[9] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[9] -to fpga_top/cbx_1__0_/chanx_right_out[9] 2.272500113e-12
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[0] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[0] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[5] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[5] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[1] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[1] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[6] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[6] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[2] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[2] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[7] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[7] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[3] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[3] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[8] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[8] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[4] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[4] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[9] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[9] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[5] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[5] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[6] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[6] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[7] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_30_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[7] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_30_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[8] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_34_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[8] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_34_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[9] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_38_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[9] -to fpga_top/cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_38_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[0] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[0] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[5] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[5] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[1] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[1] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[6] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[6] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[2] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[2] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[7] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[7] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[3] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[3] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[8] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[8] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[4] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[4] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[9] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[9] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[0] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[0] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[5] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[5] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[1] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[1] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[6] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[6] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[2] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[2] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_left_in[7] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_[0] 7.247000222e-11
set_max_delay -from fpga_top/cbx_1__0_/chanx_right_in[7] -to fpga_top/cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_[0] 7.247000222e-11
