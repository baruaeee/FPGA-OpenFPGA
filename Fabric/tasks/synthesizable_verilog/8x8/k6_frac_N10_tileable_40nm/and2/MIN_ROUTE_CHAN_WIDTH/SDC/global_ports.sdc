#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Clock contraints for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Sun Nov  3 16:14:40 2024
#############################################

#############################################
#	Define time unit 
#############################################
set_units -time s

##################################################
# Create clock                                    
##################################################
create_clock -name clk[0] -period 10e-09 -waveform {0 5e-9} [get_ports {clk[0]}]
##################################################
# Create programmable clock                       
##################################################
create_clock -name prog_clk[0] -period 20e-09 -waveform {0 7e-09} [get_ports {prog_clk[0]}]
