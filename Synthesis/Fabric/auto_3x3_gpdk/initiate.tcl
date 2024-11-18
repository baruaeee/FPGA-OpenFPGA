# This script is to use recursively for checking the OpenFPGA
# generated SDC files
read_libs ./LIB/fast_vdd1v0_basicCells_lvt.lib ./LIB/fast_vdd1v2_basicCells_lvt.lib \
./LIB/slow_vdd1v0_basicCells_lvt.lib ./LIB/slow_vdd1v2_basicCells_lvt.lib
read_hdl flat.v
elaborate

#set sdc_dir "./SDC"

#set sdc_files {
#	"fabric.sdc"
#}

#foreach sdc_file $sdc_files {
#	read_sdc [file join $sdc_dir $sdc_file]
#}

read_sdc ./SDC/fabric.sdc

#read_sdc SDC/cbx_1__0_.sdc
exit
