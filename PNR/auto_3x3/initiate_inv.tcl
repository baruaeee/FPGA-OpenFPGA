## netlist file settings
set design_netlisttype verilog
set init_verilog ./SRC/post_synth_fabric_netlist.v
set init_design_set_top 1
#set_global _enable_mmmc_by_default_flow
#set init_top_cell "fpga_top"

## tech file settings
#set init_lef_file \ {
#	./techlef/sky130_fd_sc_hd__rram__max.tlef \
#	./lef/sky130_fd_sc_hd.lef
#}

##Initiate Design##
read_netlist $init_verilog
loadLefFile \
	./techlef/sky130_fd_sc_hd__rram__max.tlef \
	./lef/sky130_fd_sc_hd.lef
#set_top $init_top_cell
#read_sdc {SDC/sdc_fabric.sdc}
#init_design

## Multi-mode/multi-corner (MMMC) analysis setup ##

# Timing constraints file from synthesis
create_constraint_mode -name CONSTRAINTS -sdc_files {./SDC/sdc_fabric.sdc}

# set timing library
create_library_set -name MIN_LIB -timing {./lib/ff/sky130_fd_sc_hd__ff_n40C_1v95.lib}
create_library_set -name MAX_LIB -timing {./lib/ss/sky130_fd_sc_hd__ss_n40C_1v76.lib}
create_library_set -name MID_LIB -timing {./lib/tt/sky130_fd_sc_hd__tt_025C_1v80.lib}

# RC corner
create_rc_corner -name RC_CORNER \
	-qx_tech_file {techlef/qrcTechFile} \
	-temperature {25} \
	-pre_route_res {1.0} \
	-pre_route_cap {1.0} \
	-pre_route_clock_res {0.0} \
	-pre_route_clock_cap {0.0} \
	-post_route_res {1.0} \
	-post_route_cap {1.0} \
	-post_route_cross_cap {1.0} \
	-post_route_clock_res {0.0} \
	-post_route_clock_cap {0.0}

# Delay corner
create_delay_corner -name MAX_DELAY \
	-library_set {MAX_LIB} \
	-rc_corner {RC_CORNER}
create_delay_corner -name MIN_DELAY \
	-library_set {MIN_LIB} \
	-rc_corner {RC_CORNER}

##create Analysis views##
create_analysis_view -name VIEW_SETUP \
	-constraint_mode {CONSTRAINTS} \
	-delay_corner {MAX_DELAY}
create_analysis_view -name VIEW_HOLD \
	-constraint_mode {CONSTRAINTS} \
	-delay_corner {MIN_DELAY}

##Set Analysis View##
set_analysis_view \
	-setup {VIEW_SETUP} \
	-hold {VIEW_HOLD}
