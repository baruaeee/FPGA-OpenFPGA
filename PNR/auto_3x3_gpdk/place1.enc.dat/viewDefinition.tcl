if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name MIN_LIB\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast_vdd1v0_basicCells_lvt.lib]
create_library_set -name MAX_LIB\
   -timing\
    [list ${::IMEX::libVar}/lib/typ/slow_vdd1v0_basicCells_lvt.lib]
create_rc_corner -name RC_CORNER\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 25\
   -qx_tech_file ${::IMEX::libVar}/mmmc/RC_CORNER/gpdk045.tch
create_delay_corner -name MAX_DELAY\
   -library_set MAX_LIB\
   -rc_corner RC_CORNER
create_delay_corner -name MIN_DELAY\
   -library_set MIN_LIB\
   -rc_corner RC_CORNER
create_constraint_mode -name CONSTRAINTS\
   -sdc_files\
    [list ${::IMEX::libVar}/mmmc/post_synth_fabric_sdc.sdc\
     ${::IMEX::libVar}/mmmc/genus.dont_touch.sdc]
create_analysis_view -name VIEW_SETUP -constraint_mode CONSTRAINTS -delay_corner MAX_DELAY
create_analysis_view -name VIEW_HOLD -constraint_mode CONSTRAINTS -delay_corner MIN_DELAY
set_analysis_view -setup [list VIEW_SETUP] -hold [list VIEW_HOLD]
