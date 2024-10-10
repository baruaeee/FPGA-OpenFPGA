#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Clock contraints for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Wed Oct  9 19:29:44 2024
#############################################

#############################################
#	Define time unit 
#############################################
set_units -time s

##################################################
# Create clock                                    
##################################################
create_clock -name clk[0] -period 1.453240084e-09 -waveform {0 7.266200419e-10} [get_ports {clk[0]}]
