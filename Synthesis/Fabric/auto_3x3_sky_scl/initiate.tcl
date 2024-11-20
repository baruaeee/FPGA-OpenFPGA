# This script is to use recursively for checking the OpenFPGA
# generated SDC files

read_libs LIB/sky130_ff_1.98_0_nldm.lib \
	LIB/sky130_ss_1.62_125_nldm.lib \
	LIB/sky130_tt_1.8_25_nldm.lib


#read_hdl flat.v
read_hdl SRC/fabric_netlists.v
elaborate fpga_top

set sdc_dir "./SDC"

set sdc_files {
	"cbx_1__0_.sdc"
	"cbx_1__1_.sdc"
	"cby_0__1_.sdc"
	"cby_1__1_.sdc"
	"disable_configurable_memory_outputs.sdc"
	"disable_configure_ports.sdc"
	"disable_routing_multiplexer_outputs.sdc"
	"disable_sb_outputs.sdc"
	"logical_tile_clb_mode_clb_.sdc"
	"logical_tile_clb_mode_default__fle_mode_physical__fabric.sdc"
	"logical_tile_io_mode_io_.sdc"
	"sb_0__0_.sdc"
	"sb_0__1_.sdc"
	"sb_1__0_.sdc"
	"sb_1__1_.sdc"
}

foreach sdc_file $sdc_files {
	read_sdc [file join $sdc_dir $sdc_file]
}
#read_sdc SDC/cbx_1__0_.sdc
#exit
