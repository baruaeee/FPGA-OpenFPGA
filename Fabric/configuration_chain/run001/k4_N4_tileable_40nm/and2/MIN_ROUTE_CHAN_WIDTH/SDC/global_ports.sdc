#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Clock contraints for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Mon Oct  7 19:17:30 2024
#############################################

#############################################
#	Define time unit 
#############################################
set_units -time s

##################################################
# Create clock                                    
##################################################
create_clock -name clk[0] -period 9.772329612e-10 -waveform {0 4.886164806e-10} [get_ports {clk[0]}]
##################################################
# Create programmable clock                       
##################################################
create_clock -name prog_clk[0] -period 9.999999939e-09 -waveform {0 4.99999997e-09} [get_ports {prog_clk[0]}]
