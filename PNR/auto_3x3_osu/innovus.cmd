#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Dec 17 16:07:56 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v22.33-s094_1 (64bit) 08/25/2023 16:48 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 22.33-s094_1 NR230808-0153/22_13-UB (database version 18.20.615_1) {superthreading v2.20}
#@(#)CDS: AAE 22.13-s029 (64bit) 08/25/2023 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 22.13-s030_1 () Aug 22 2023 02:51:11 ( )
#@(#)CDS: SYNTECH 22.13-s015_1 () Aug 20 2023 22:21:55 ( )
#@(#)CDS: CPE v22.13-s082
#@(#)CDS: IQuantus/TQuantus 21.2.2-s211 (64bit) Tue Jun 20 22:12:10 PDT 2023 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getVersion
define_proc_arguments ViaFillQor -info {This procedure extracts Viafill details from innovus db} -define_args {
        {-window "window coordinates" "" list optional}
        {-window_size "window size in microns" "" string optional}
    
    }
define_proc_arguments ProcessFills -info {This procedure processes Fill types} -define_args {
    {-fillInfo "Design Fill data" "" list required}
				{-csvName "File path for Fill Data csv file" "Path of CSV file" string required}
				{-selectFill "type of fill to be selected in session" "list of BRIDGE/EXTENSION/STAMP/FLOATING" list required}
    {-output_data "Boolean Flag to output Fill Data for further processing" "" string required}
}
define_proc_arguments FillQor -info {This procedure extracts fill details from innovus db} -define_args {
    {-layers "Fills Cleanup on which all layers" "list of Metal/Routing layers" list optional}
				{-selectFill "type of fill to be selected in session" "list of BRIDGE/EXTENSION/STAMP/FLOATING" list optional}
				{-outData "Boolean Flag to output Fill Data for further processing" "" boolean optional}
    {-outDataFile "File path for Fill Data csv file" "Path of CSV file" string optional}
}
define_proc_arguments ProcessFills_fast -info {This procedure processes Fill types} -define_args {
    {-fillInfo "Design Fill data" "" list required}
				{-csvName "File path for Fill Data csv file" "Path of CSV file" string required}
				{-selectFill "type of fill to be selected in session" "list of BRIDGE/EXTENSION/STAMP/FLOATING" list required}
    {-output_data "Boolean Flag to output Fill Data for further processing" "" string required}
}
define_proc_arguments FillQor_fast -info {This procedure extracts fill details from innovus db} -define_args {
    {-layers "Fills Cleanup on which all layers" "list of Metal/Routing layers" list optional}
				{-selectFill "type of fill to be selected in session" "list of BRIDGE/EXTENSION/STAMP/FLOATING" list optional}
				{-outData "Boolean Flag to output Fill Data for further processing" "" boolean optional}
    {-outDataFile "File path for Fill Data csv file" "Path of CSV file" string optional}
}
define_proc_arguments ProcessFills_fast_stampOnly -info {This procedure processes Fill types} -define_args {
    {-fillInfo "Design Fill data" "" list required}
	
}
define_proc_arguments FillQor_fast_stampOnly -info {This procedure extracts fill details from innovus db} -define_args {
    {-layers "Fills Cleanup on which all layers" "list of Metal/Routing layers" list optional}
}
win
set enc_check_rename_command_name 1
set ::DelayCal::PersistentAaeDataExist 1
set ::DelayCal::PrerouteDcFastMode 1
set ::MSV::initSNetPrimarySNetDone 1
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set _timing_enable_backward_compatible_parallel_arcs 0
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set dbgDualViewAwareXTree 1
set dbgIsCheckLefDefColoredShapeSetByUser 1
set dbgSupportPGTermUdm 1
set dcgHonorSignalNetNDR 1
set defHierChar /
set delaycal_input_transition_delay 0.1ps
set delaycal_use_ideal_delay_for_clk_in_all_mode 1
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set edi_pe::pegPreRouteXcapTimeCriticalityScale 0.0016
set edi_pe::pegUnassignedWHLRatio 0.2341
set edi_pe::pegWireCapacityRatio 0.3378
set enable_ilm_dual_view_gui_and_attribute 1
set enc_check_rename_command_name 1
set enc_enable_print_mode_command_reset_options 1
set floorplan_default_site 18T
set fpIsMaxIoHeight 0
set gpsPrivate::oigCGFixOutOfCoreChannels 1
set gpsPrivate::oigPBAwareTopoMode 23
set gpsPrivate::oigTopoBCMode 0
set gpsPrivate::oigTopoUseBABInTopLvlNodesInOCP 1
set gpsPrivate::oigUseNewMaxBufDistAPI 1
set init_design_uniquify 1
set init_gnd_net {gnd VSSA VSSD VSSIO_Q VSSIO G_CORE}
set init_lef_file {techlef/sky130_osu_sc_18T.tlef lef/sky130_osu_sc_18T_hs.lef lef/sky130_osu_sc_18T_ls.lef lef/IO_Pad/sky130_fd_io__corner_bus_overlay.lef lef/IO_Pad/sky130_fd_io__top_gpio_ovtv2.lef lef/IO_Pad/sky130_fd_io__top_ground_hvc_wpad.lef lef/IO_Pad/sky130_fd_io__top_power_hvc_wpadv2.lef}
set init_mmmc_file Fabric.view
set init_original_verilog_files SRC/post_synth_fabric_netlist.v
set init_pwr_net {vdd VDDIO VDDIO_Q VDDA VCCD VSWITCH VCCHIB P_CORE AMUXBUS_A AMUXBUS_B}
set init_top_cell fpga_top
set init_verilog SRC/post_synth_fabric_netlist.v
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set latch_time_borrow_mode max_borrow
set metric_page_cfg_format {vivid {HUDDLE {!!map {version {!!str 2} data {!!seq {{!!map {id {!!str main_menu} type {!!str main_menu}}} {!!map {id {!!str top} type {!!str tabs} tabs {!!seq {{!!map {title {!!str Masterboard} children {!!seq {{!!map {id {!!str masterboard_filters} type {!!str section} title {!!str {Run/Snapshot Filters}} children {!!seq {{!!map {id {!!str masterboard_filter} type {!!str run_snapshot_filter}}} {!!map {id {!!str masterboard_snapshot_navigation} type {!!str snapshot_picker}}}}}}} {!!map {id {!!str masterboard_summary} type {!!str section} title {!!str {Stylus QOR summary}} children {!!seq {{!!map {id {!!str masterboard_summary_t} type {!!str table} per_snapshot {!!true 1} ar_metric_control {!!true 1} ar_metric {!!seq {{!!map {metric {!!str timing.setup.wns} title {!!str WNS} group {!!str {Setup (all)}} navigation {!!map {id {!!str setup_violating_paths_section}}}}} {!!map {metric {!!str timing.setup.tns} title {!!str TNS} group {!!str {Setup (all)}} navigation {!!map {id {!!str setup_violating_paths_section}}}}} {!!map {metric {!!str timing.setup.feps} title {!!str FEPS} group {!!str {Setup (all)}} navigation {!!map {id {!!str setup_violating_paths_section}}}}} {!!map {metric {!!str timing.setup.wns.path_group:reg2reg} title {!!str WNS} group {!!str {Setup (reg2reg)}} navigation {!!map {id {!!str setup_violating_paths_section}}}}} {!!map {metric {!!str timing.setup.tns.path_group:reg2reg} title {!!str TNS} group {!!str {Setup (reg2reg)}} navigation {!!map {id {!!str setup_violating_paths_section}}}}} {!!map {metric {!!str timing.setup.feps.path_group:reg2reg} title {!!str FEPS} group {!!str {Setup (reg2reg)}} navigation {!!map {id {!!str setup_violating_paths_section}}}}} {!!map {metric {!!str timing.hold.wns} title {!!str WNS} group {!!str {Hold (all)}} navigation {!!map {id {!!str hold_violating_paths_section}}}}} {!!map {metric {!!str timing.hold.tns} title {!!str TNS} group {!!str {Hold (all)}} navigation {!!map {id {!!str hold_violating_paths_section}}}}} {!!map {metric {!!str timing.hold.feps} title {!!str FEPS} group {!!str {Hold (all)}} navigation {!!map {id {!!str hold_violating_paths_section}}}}} {!!map {metric {!!str timing.hold.wns.path_group:reg2reg} title {!!str WNS} group {!!str {Hold (reg2reg)}} navigation {!!map {id {!!str hold_violating_paths_section}}}}} {!!map {metric {!!str timing.hold.tns.path_group:reg2reg} title {!!str TNS} group {!!str {Hold (reg2reg)}} navigation {!!map {id {!!str hold_violating_paths_section}}}}} {!!map {metric {!!str timing.hold.feps.path_group:reg2reg} title {!!str FEPS} group {!!str {Hold (reg2reg)}} navigation {!!map {id {!!str hold_violating_paths_section}}}}} {!!map {metric {!!str timing.drv.max_tran.total} title {!!str Tran} group {!!str DRV}}} {!!map {metric {!!str timing.drv.max_cap.total} title {!!str Load} group {!!str DRV}}} {!!map {metric {!!str timing.drv.max_fanout.total} title {!!str Fanout} group {!!str DRV}}} {!!map {metric {!!str clock.instances.total} title {!!str Insts} group {!!str Clock} navigation {!!map {id {!!str clock_phys}}}}} {!!map {metric {!!str clock.area.total} title {!!str Area} group {!!str Clock} navigation {!!map {id {!!str clock_phys}}}}} {!!map {metric {!!str design.density} title {!!str Density} group {!!str Design}}} {!!map {metric {!!str design.instances.logical} title {!!str Insts} group {!!str Design} navigation {!!map {id {!!str physical_physical}}}}} {!!map {metric {!!str design.area.logical} title {!!str Area} group {!!str Design} navigation {!!map {id {!!str physical_physical}}}}} {!!map {metric {!!str dft.registers.passing} title {!!str Passing} group {!!str DFT}}} {!!map {metric {!!str dft.registers.total} title {!!str Total} group {!!str DFT}}} {!!map {metric {!!str power} title {!!str Total} group {!!str Power} navigation {!!map {id {!!str power_power}}}}} {!!map {metric {!!str power.leakage} title {!!str Leakage} group {!!str Power} navigation {!!map {id {!!str power_leakage}}}}} {!!map {metric {!!str power.internal} title {!!str Internal} group {!!str Power} navigation {!!map {id {!!str power_internal}}}}} {!!map {metric {!!str power.switching} title {!!str Switching} group {!!str Power} navigation {!!map {id {!!str power_switching}}}}} {!!map {metric {!!str power.clock} title {!!str Clock} group {!!str Power} navigation {!!map {id {!!str power_power}}}}} {!!map {metric {!!str design.congestion.hotspot.max} title {!!str Max} group {!!str Congestion} navigation {!!map {id {!!str route_route}}}}} {!!map {metric {!!str design.congestion.hotspot.total} title {!!str Total} group {!!str Congestion} navigation {!!map {id {!!str route_route}}}}} {!!map {metric {!!str route.drc} title {!!str DRC} group {!!str Route} navigation {!!map {id {!!str route_route}}}}} {!!map {metric {!!str route.wirelength} title {!!str WL} group {!!str Route} navigation {!!map {id {!!str route_route}}}}} {!!map {metric {!!str messages} title {!!str Errors} group {!!str Tool}}} {!!map {metric {!!str flow.realtime} title {!!str Wall} group {!!str Tool} navigation {!!map {id {!!str flow_cpu}}}}} {!!map {metric {!!str flow.memory} title {!!str Memory} group {!!str Tool} navigation {!!map {id {!!str flow_cpu}}}}}}}}}}}}} {!!map {id {!!str masterboard_runtime} type {!!str section} title {!!str {Runtime Summary}} children {!!seq {{!!map {id {!!str masterboard_runtime_real_g} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {Real time}} ar_metric {!!seq {{!!map {metric {!!str flow.realtime} title {!!str Real} graph_type {!!str horizontalBar}}}}}}} {!!map {id {!!str masterboard_runtime_cpu} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {CPU Runtime}} ar_metric {!!seq {{!!map {metric {!!str flow.cputime} title {!!str CPU} graph_type {!!str horizontalBar}}}}}}}}}}} {!!map {id {!!str masterboard_reg2reg} type {!!str section} title {!!str {Timing Summary}} children {!!seq {{!!map {id {!!str masterboard_reg2reg_wns_setup_s} type {!!str section} title {!!str {Setup Summary}} children {!!seq {{!!map {id {!!str masterboard_reg2reg_wns_setup_g} type {!!str graph} title {!!str {Setup reg2reg WNS}} ar_metric {!!seq {{!!map {metric {!!str timing.setup.wns.path_group:reg2reg} title {!!str WNS} graph_type {!!str line}}}}}}} {!!map {id {!!str masterboard_reg2reg_tns_setup_g} type {!!str graph} title {!!str {Setup reg2reg TNS}} ar_metric {!!seq {{!!map {metric {!!str timing.setup.tns.path_group:reg2reg} title {!!str TNS} graph_type {!!str line}}}}}}}}}}} {!!map {id {!!str masterboard_reg2reg_wns_hold_s} type {!!str section} title {!!str {Hold Summary}} children {!!seq {{!!map {id {!!str masterboard_reg2reg_wns_hold_g} type {!!str graph} title {!!str {Hold reg2reg WNS}} ar_metric {!!seq {{!!map {metric {!!str timing.hold.wns.path_group:reg2reg} title {!!str WNS} graph_type {!!str line}}}}}}} {!!map {id {!!str masterboard_reg2reg_tns_hold_g} type {!!str graph} title {!!str {Hold reg2reg TNS}} ar_metric {!!seq {{!!map {metric {!!str timing.hold.tns.path_group:reg2reg} title {!!str TNS} graph_type {!!str line}}}}}}}}}}}}}}} {!!map {id {!!str masterboard_power} type {!!str section} title {!!str {Power Summary}} children {!!seq {{!!map {id {!!str masterboard_power_total_g} type {!!str graph} title {!!str {Total Power}} ar_metric {!!seq {{!!map {metric {!!str power} title {!!str Power} graph_type {!!str line}}}}}}} {!!map {id {!!str masterboard_power_leakage_g} type {!!str graph} title {!!str {Leakage Power}} ar_metric {!!seq {{!!map {metric {!!str power.leakage} title {!!str Power} graph_type {!!str line}}}}}}}}}}} {!!map {id {!!str masterboard_utilization} type {!!str section} title {!!str {Utilization Summary}} children {!!seq {{!!map {id {!!str masterboard_utilization_density_g} type {!!str graph} title {!!str {Design Density}} ar_metric {!!seq {{!!map {metric {!!str design.density} title {!!str Density} graph_type {!!str line}}}}}}} {!!map {id {!!str masterboard_utilization_stdcell_g} type {!!str graph} title {!!str {Standard cell instances}} ar_metric {!!seq {{!!map {metric {!!str design.instances.std_cell} title {!!str {Instance count}} graph_type {!!str line}}}}}}}}}}}}}}} {!!map {title {!!str Dashboard} children {!!seq {{!!map {id {!!str dashboard_tabs} type {!!str tabs} tabs {!!seq {{!!map {title {!!str Summary} children {!!seq {{!!map {id {!!str summary_layout} type {!!str layout} layout {!!str horizontal} children {!!seq {{!!map {id {!!str summary_flow_t} type {!!str table} flip_axis {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.name} title {!!str Design}}} {!!map {metric {!!str flow.tool_list} title {!!str Tools}}} {!!map {metric {!!str flow.template.type} title {!!str Flow}}} {!!map {metric {!!str flow.template.feature_enabled} title {!!str {Enabled features}}}} {!!map {metric {!!str flow.run_tag} title {!!str Tag}}} {!!map {metric {!!str flow.machine} title {!!str {Run host}}}} {!!map {metric {!!str flow.run_directory} title {!!str {Run directory}}}} {!!map {metric {!!str flow.last_child_snapshot} title {!!str {Last step}}}} {!!map {metric {!!str flowtool.status} title {!!str {Flowtool status}}}}}}}} {!!map {id {!!str design_image} type {!!str image_plot} initial_visible_count {!!int 1} ar_metric {!!seq {{!!map {metric {!!str design.floorplan.image}}} {!!map {metric {!!str design.blockage.image}}} {!!map {metric {!!str design.macro.image}}} {!!map {metric {!!str design.place.drc.image}}} {!!map {metric {!!str design.hotspot.image}}} {!!map {metric {!!str power.domains.image}}} {!!map {metric {!!str power.intent.image}}}}}}}}}}} {!!map {id {!!str summary_dashboard_filters} type {!!str section} title {!!str {Run/Snapshot Filters}} children {!!seq {{!!map {id {!!str summary_dashboard_filter} type {!!str run_snapshot_filter}}} {!!map {id {!!str summary_dashboard_snapshot_navigation} type {!!str snapshot_picker}}}}}}} {!!map {id {!!str summary_qor} type {!!str section} title {!!str {Stylus QOR summary}} children {!!seq {{!!map {id {!!str summary_qor_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str timing.setup.wns} title {!!str WNS} group {!!str {Setup (all)}} navigation {!!map {id {!!str setup_violating_paths_section}}}}} {!!map {metric {!!str timing.setup.tns} title {!!str TNS} group {!!str {Setup (all)}} navigation {!!map {id {!!str setup_violating_paths_section}}}}} {!!map {metric {!!str timing.setup.feps} title {!!str FEPS} group {!!str {Setup (all)}} navigation {!!map {id {!!str setup_violating_paths_section}}}}} {!!map {metric {!!str timing.setup.wns.path_group:reg2reg} title {!!str WNS} group {!!str {Setup (reg2reg)}} navigation {!!map {id {!!str setup_violating_paths_section}}}}} {!!map {metric {!!str timing.setup.tns.path_group:reg2reg} title {!!str TNS} group {!!str {Setup (reg2reg)}} navigation {!!map {id {!!str setup_violating_paths_section}}}}} {!!map {metric {!!str timing.setup.feps.path_group:reg2reg} title {!!str FEPS} group {!!str {Setup (reg2reg)}} navigation {!!map {id {!!str setup_violating_paths_section}}}}} {!!map {metric {!!str timing.hold.wns} title {!!str WNS} group {!!str {Hold (all)}} navigation {!!map {id {!!str hold_violating_paths_section}}}}} {!!map {metric {!!str timing.hold.tns} title {!!str TNS} group {!!str {Hold (all)}} navigation {!!map {id {!!str hold_violating_paths_section}}}}} {!!map {metric {!!str timing.hold.feps} title {!!str FEPS} group {!!str {Hold (all)}} navigation {!!map {id {!!str hold_violating_paths_section}}}}} {!!map {metric {!!str timing.hold.wns.path_group:reg2reg} title {!!str WNS} group {!!str {Hold (reg2reg)}} navigation {!!map {id {!!str hold_violating_paths_section}}}}} {!!map {metric {!!str timing.hold.tns.path_group:reg2reg} title {!!str TNS} group {!!str {Hold (reg2reg)}} navigation {!!map {id {!!str hold_violating_paths_section}}}}} {!!map {metric {!!str timing.hold.feps.path_group:reg2reg} title {!!str FEPS} group {!!str {Hold (reg2reg)}} navigation {!!map {id {!!str hold_violating_paths_section}}}}} {!!map {metric {!!str timing.drv.max_tran.total} title {!!str Tran} group {!!str DRV}}} {!!map {metric {!!str timing.drv.max_cap.total} title {!!str Load} group {!!str DRV}}} {!!map {metric {!!str timing.drv.max_fanout.total} title {!!str Fanout} group {!!str DRV}}} {!!map {metric {!!str clock.instances.total} title {!!str Insts} group {!!str Clock} navigation {!!map {id {!!str clock_phys}}}}} {!!map {metric {!!str clock.area.total} title {!!str Area} group {!!str Clock} navigation {!!map {id {!!str clock_phys}}}}} {!!map {metric {!!str design.density} title {!!str Density} group {!!str Design}}} {!!map {metric {!!str design.instances.logical} title {!!str Insts} group {!!str Design} navigation {!!map {id {!!str physical_physical}}}}} {!!map {metric {!!str design.area.logical} title {!!str Area} group {!!str Design} navigation {!!map {id {!!str physical_physical}}}}} {!!map {metric {!!str dft.registers.passing} title {!!str Passing} group {!!str DFT}}} {!!map {metric {!!str dft.registers.total} title {!!str Total} group {!!str DFT}}} {!!map {metric {!!str power} title {!!str Total} group {!!str Power} navigation {!!map {id {!!str power_power}}}}} {!!map {metric {!!str power.leakage} title {!!str Leakage} group {!!str Power} navigation {!!map {id {!!str power_leakage}}}}} {!!map {metric {!!str power.internal} title {!!str Internal} group {!!str Power} navigation {!!map {id {!!str power_internal}}}}} {!!map {metric {!!str power.switching} title {!!str Switching} group {!!str Power} navigation {!!map {id {!!str power_switching}}}}} {!!map {metric {!!str power.clock} title {!!str Clock} group {!!str Power} navigation {!!map {id {!!str power_power}}}}} {!!map {metric {!!str design.congestion.hotspot.max} title {!!str Max} group {!!str Congestion} navigation {!!map {id {!!str route_route}}}}} {!!map {metric {!!str design.congestion.hotspot.total} title {!!str Total} group {!!str Congestion} navigation {!!map {id {!!str route_route}}}}} {!!map {metric {!!str route.drc} title {!!str DRC} group {!!str Route} navigation {!!map {id {!!str route_route}}}}} {!!map {metric {!!str route.wirelength} title {!!str WL} group {!!str Route} navigation {!!map {id {!!str route_route}}}}} {!!map {metric {!!str messages} title {!!str Errors} group {!!str Tool}}} {!!map {metric {!!str flow.realtime} title {!!str Wall} group {!!str Tool} navigation {!!map {id {!!str flow_cpu}}}}} {!!map {metric {!!str flow.memory} title {!!str Memory} group {!!str Tool} navigation {!!map {id {!!str flow_cpu}}}}}}}}}}}}} {!!map {id {!!str summary_cpu} type {!!str section} title {!!str {Stylus runtime summary}} children {!!seq {{!!map {id {!!str summary_real_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {Real time}} ar_metric {!!seq {{!!map {metric {!!str flow.realtime} title {!!str Real} graph_type {!!str horizontalBar}}}}}}} {!!map {id {!!str summary_cpu_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {CPU Runtime}} ar_metric {!!seq {{!!map {metric {!!str flow.cputime} title {!!str CPU} graph_type {!!str horizontalBar}}}}}}}}}}}}}}} {!!map {title {!!str Timing} children {!!seq {{!!map {id {!!str timing_dashboard_filters} type {!!str section} title {!!str {Run/Snapshot Filters}} hidden {!!true 1} children {!!seq {{!!map {id {!!str timing_dashboard_filter} type {!!str run_snapshot_filter}}} {!!map {id {!!str timing_dashboard_snapshot_navigation} type {!!str snapshot_picker}}}}}}} {!!map {id {!!str timing_setup} type {!!str section} title {!!str {Setup Timing}} children {!!seq {{!!map {id {!!str setup_tns_histogram_controls} type {!!str histogram_controls} parent_id {!!str timing_setup}}} {!!map {id {!!str setup_tns_histogram_first} type {!!str histogram} title {!!str {Setup TNS}} parent_id {!!str timing_setup} ar_metric {!!seq {{!!map {metric {!!str timing.setup.histogram} title {!!str {Per Group}} mode {!!str group}}} {!!map {metric {!!str timing.setup.histogram.views} title {!!str {Per View}} mode {!!str view}}}}}}} {!!map {id {!!str setup_tns_histogram_second} type {!!str histogram} title {!!str {Setup TNS}} parent_id {!!str timing_setup} ar_metric {!!seq {{!!map {metric {!!str timing.setup.histogram} title {!!str {Per Group}} mode {!!str group}}} {!!map {metric {!!str timing.setup.histogram.views} title {!!str {Per View}} mode {!!str view}}}}}}} {!!map {id {!!str timing_setup_t} type {!!str table} per_snapshot {!!true 1} collapsible_key {!!true 1} key {!!map {Group {!!str timing.setup.wns.path_group:*} View {!!str timing.setup.wns.analysis_view:*}}} ar_metric {!!seq {{!!map {metric {!!str timing.setup.type} title {!!str Type}}} {!!map {metric {!!str timing.setup.wns.path_group:%.analysis_view:%} title {!!str WNS}}} {!!map {metric {!!str timing.setup.tns.path_group:%.analysis_view:%} title {!!str TNS}}} {!!map {metric {!!str timing.setup.feps.path_group:%.analysis_view:%} title {!!str FEPS}}}}}}}}}}} {!!map {id {!!str setup_violating_paths_section} type {!!str section} title {!!str {Worst Setup Paths}} children {!!seq {{!!map {id {!!str setup_violating_paths} type {!!str violating_paths} ar_metric {!!seq {{!!map {metric {!!str timing.setup.paths}}} {!!map {metric {!!str timing.setup.paths.path_group:*}}}}}}}}}}} {!!map {id {!!str timing_hold} type {!!str section} title {!!str {Hold Timing}} children {!!seq {{!!map {id {!!str hold_tns_histogram_controls} type {!!str histogram_controls} parent_id {!!str timing_hold}}} {!!map {id {!!str hold_tns_histogram_first} type {!!str histogram} title {!!str {Hold TNS}} parent_id {!!str timing_hold} ar_metric {!!seq {{!!map {metric {!!str timing.hold.histogram} title {!!str {Per Group}} mode {!!str group}}} {!!map {metric {!!str timing.hold.histogram.views} title {!!str {Per View}} mode {!!str view}}}}}}} {!!map {id {!!str hold_tns_histogram_second} type {!!str histogram} title {!!str {Hold TNS}} parent_id {!!str timing_hold} ar_metric {!!seq {{!!map {metric {!!str timing.hold.histogram} title {!!str {Per Group}} mode {!!str group}}} {!!map {metric {!!str timing.hold.histogram.views} title {!!str {Per View}} mode {!!str view}}}}}}} {!!map {id {!!str timing_hold_t} type {!!str table} per_snapshot {!!true 1} collapsible_key {!!true 1} key {!!map {Group {!!str timing.hold.wns.path_group:*} View {!!str timing.hold.wns.analysis_view:*}}} ar_metric {!!seq {{!!map {metric {!!str timing.hold.type} title {!!str Type}}} {!!map {metric {!!str timing.hold.wns.path_group:%.analysis_view:%} title {!!str WNS}}} {!!map {metric {!!str timing.hold.tns.path_group:%.analysis_view:%} title {!!str TNS}}} {!!map {metric {!!str timing.hold.feps.path_group:%.analysis_view:%} title {!!str FEPS}}}}}}}}}}} {!!map {id {!!str hold_violating_paths_section} type {!!str section} title {!!str {Worst Hold Paths}} children {!!seq {{!!map {id {!!str hold_violating_paths} type {!!str violating_paths} ar_metric {!!seq {{!!map {metric {!!str timing.hold.paths}}} {!!map {metric {!!str timing.hold.paths.path_group:*}}}}}}}}}}} {!!map {id {!!str timing_drv} type {!!str section} title {!!str {Design Rule Violations}} children {!!seq {{!!map {id {!!str timing_drv_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str timing.drv.max_tran.total} title {!!str Total} group {!!str Tran}}} {!!map {metric {!!str timing.drv.max_tran.worst} title {!!str Worst} group {!!str Tran}}} {!!map {metric {!!str timing.drv.max_tran.pins} title {!!str Pins} group {!!str Tran}}} {!!map {metric {!!str timing.drv.max_tran.nets} title {!!str Nets} group {!!str Tran}}} {!!map {metric {!!str timing.drv.max_cap.total} title {!!str Total} group {!!str Cap}}} {!!map {metric {!!str timing.drv.max_cap.worst} title {!!str Worst} group {!!str Cap}}} {!!map {metric {!!str timing.drv.max_cap.pins} title {!!str Pins} group {!!str Cap}}} {!!map {metric {!!str timing.drv.max_cap.nets} title {!!str Nets} group {!!str Cap}}} {!!map {metric {!!str timing.drv.max_fanout.total} title {!!str Total} group {!!str Fanout}}} {!!map {metric {!!str timing.drv.max_fanout.worst} title {!!str Worst} group {!!str Fanout}}} {!!map {metric {!!str timing.drv.max_fanout.pins} title {!!str Pins} group {!!str Fanout}}} {!!map {metric {!!str timing.drv.max_fanout.nets} title {!!str Nets} group {!!str Fanout}}} {!!map {metric {!!str timing.drv.max_length.total} title {!!str Total} group {!!str Length}}} {!!map {metric {!!str timing.drv.max_length.worst} title {!!str Worst} group {!!str Length}}} {!!map {metric {!!str timing.drv.max_length.pins} title {!!str Pins} group {!!str Length}}} {!!map {metric {!!str timing.drv.max_length.nets} title {!!str Nets} group {!!str Length}}} {!!map {metric {!!str timing.si.glitches} title {!!str Glitches} group {!!str SI}}} {!!map {metric {!!str timing.si.noise} title {!!str Noise} group {!!str SI}}}}}}} {!!map {id {!!str timing_double_clocking} type {!!str section} title {!!str {Double Clocking}} hidden {!!true 1} children {!!seq {{!!map {id {!!str timing_double_clocking_t} type {!!str table} per_snapshot {!!false 0} key {!!map {View {!!str timing.si.double_clocking.analysis_view:*}}} ar_metric {!!seq {{!!map {metric {!!str timing.si.double_clocking.frequency_violations.analysis_view:%} title {!!str {Frequency Violations}}}} {!!map {metric {!!str timing.si.double_clocking.report_file.analysis_view:%} title {!!str {Report File}}}}}}}}}}}} {!!map {id {!!str timing_min_pulse_width} type {!!str section} title {!!str {Min Pulse Width}} hidden {!!true 1} children {!!seq {{!!map {id {!!str timing_min_pulse_width_t} type {!!str table} per_snapshot {!!false 0} ar_metric {!!seq {{!!map {metric {!!str timing.setup.type} title {!!str Type}}} {!!map {metric {!!str timing.min_pulse_width.endpoints.wns} group {!!str Endpoints} title {!!str WNS}}} {!!map {metric {!!str timing.min_pulse_width.endpoints.tns} group {!!str Endpoints} title {!!str TNS}}} {!!map {metric {!!str timing.min_pulse_width.endpoints.feps} group {!!str Endpoints} title {!!str FEPS}}} {!!map {metric {!!str timing.min_pulse_width.clocktree.wns} group {!!str Clocktree} title {!!str WNS}}} {!!map {metric {!!str timing.min_pulse_width.clocktree.tns} group {!!str Clocktree} title {!!str TNS}}} {!!map {metric {!!str timing.min_pulse_width.clocktree.feps} group {!!str Clocktree} title {!!str FEPS}}}}}}} {!!map {id {!!str timing_min_pulse_width_breakdown_t} type {!!str table} per_snapshot {!!false 0} key {!!map {View {!!str timing.min_pulse_width.endpoints.wns.analysis_view:*} Clock {!!str timing.min_pulse_width.endpoints.wns.analysis_view:%.clock:*}}} ar_metric {!!seq {{!!map {metric {!!str timing.min_pulse_width.endpoints.wns.analysis_view:%.clock:%} group {!!str Endpoints} title {!!str WNS}}} {!!map {metric {!!str timing.min_pulse_width.endpoints.tns.analysis_view:%.clock:%} group {!!str Endpoints} title {!!str TNS}}} {!!map {metric {!!str timing.min_pulse_width.endpoints.feps.analysis_view:%.clock:%} group {!!str Endpoints} title {!!str FEPS}}} {!!map {metric {!!str timing.min_pulse_width.clocktree.wns.analysis_view:%.clock:%} group {!!str Clocktree} title {!!str WNS}}} {!!map {metric {!!str timing.min_pulse_width.clocktree.tns.analysis_view:%.clock:%} group {!!str Clocktree} title {!!str TNS}}} {!!map {metric {!!str timing.min_pulse_width.clocktree.feps.analysis_view:%.clock:%} group {!!str Clocktree} title {!!str FEPS}}}}}}}}}}}}}}} {!!map {id {!!str timing_cpu} type {!!str section} title {!!str Runtime} children {!!seq {{!!map {id {!!str timing_real_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {Real time}} ar_metric {!!seq {{!!map {metric {!!str flow.realtime} title {!!str Real} graph_type {!!str horizontalBar}}}}}}} {!!map {id {!!str timing_cpu_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {CPU Runtime}} ar_metric {!!seq {{!!map {metric {!!str flow.cputime} title {!!str CPU} graph_type {!!str horizontalBar}}}}}}}}}}}}}}} {!!map {title {!!str Clock} children {!!seq {{!!map {id {!!str clock_dashboard_filters} type {!!str section} title {!!str {Run/Snapshot Filters}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_dashboard_filter} type {!!str run_snapshot_filter}}} {!!map {id {!!str clock_dashboard_snapshot_navigation} type {!!str snapshot_picker}}}}}}} {!!map {id {!!str clock_phys} type {!!str section} title {!!str Physical} children {!!seq {{!!map {id {!!str clock_phys_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.instances.total} title {!!str #Total} group {!!str Instances}}} {!!map {metric {!!str clock.instances.buffer} title {!!str #Buffers} group {!!str Instances}}} {!!map {metric {!!str clock.instances.inverter} title {!!str #Inverters} group {!!str Instances}}} {!!map {metric {!!str clock.instances.clkgate} title {!!str {#Clock Gates}} group {!!str Instances}}} {!!map {metric {!!str clock.instances.nonicg} title {!!str {#Non Integrated}} group {!!str Instances}}} {!!map {metric {!!str clock.instances.logic} title {!!str #Logic} group {!!str Instances}}} {!!map {metric {!!str clock.area.total} title {!!str Total} group {!!str Area}}} {!!map {metric {!!str clock.area.buffer} title {!!str Buffers} group {!!str Area}}} {!!map {metric {!!str clock.area.inverter} title {!!str Inverters} group {!!str Area}}} {!!map {metric {!!str clock.area.clkgate} title {!!str {Clock Gates}} group {!!str Area}}} {!!map {metric {!!str clock.area.nonicg} title {!!str {Non Integrated}} group {!!str Area}}} {!!map {metric {!!str clock.area.logic} title {!!str Logic} group {!!str Area}}} {!!map {metric {!!str clock.nets.length.total} title {!!str {Tot Clk Net Length}} group {!!str Nets}}}}}}}}}}} {!!map {id {!!str clock_phys_cell_insts} type {!!str section} title {!!str {Per Cell Instances}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_phys_cell_insts_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.instances.total} title {!!str #Total}}} {!!map {metric {!!str clock.instances_distribution.buffer.base_cell:*} group {!!str #Buffers}}} {!!map {metric {!!str clock.instances_distribution.inverter.base_cell:*} group {!!str #Inverters}}} {!!map {metric {!!str clock.instances_distribution.clkgate.base_cell:*} group {!!str {#Clock Gates}}}} {!!map {metric {!!str clock.instances_distribution.nonicg.base_cell:*} group {!!str {#Non Integrated}}}} {!!map {metric {!!str clock.instances_distribution.logic.base_cell:*} group {!!str #Logic}}}}}}}}}}} {!!map {id {!!str clock_phys_cell_area} type {!!str section} title {!!str {Per Cell Area}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_phys_cell_area_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.area.total} title {!!str Total}}} {!!map {metric {!!str clock.area_distribution.buffer.base_cell:*} group {!!str Buffers}}} {!!map {metric {!!str clock.area_distribution.inverter.base_cell:*} group {!!str Inverters}}} {!!map {metric {!!str clock.area_distribution.clkgate.base_cell:*} group {!!str {Clock Gates}}}} {!!map {metric {!!str clock.area_distribution.nonicg.base_cell:*} group {!!str {Non Integrated}}}} {!!map {metric {!!str clock.area_distribution.logic.base_cell:*} group {!!str Logic}}}}}}}}}}} {!!map {id {!!str clock_phys_creator} type {!!str section} title {!!str {Cell Creators}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_phys_creator_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.instances.buffer.creator.*} group {!!str Buffers}}} {!!map {metric {!!str clock.instances.inverter.creator.*} group {!!str Inverters}}}}}}}}}}} {!!map {id {!!str clock_phys_nets} type {!!str section} title {!!str Nets} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_phys_nets_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.nets.length.total} title {!!str Total} group {!!str Nets}}} {!!map {metric {!!str clock.nets.length.top} title {!!str Top} group {!!str Nets}}} {!!map {metric {!!str clock.nets.length.trunk} title {!!str Trunk} group {!!str Nets}}} {!!map {metric {!!str clock.nets.length.leaf} title {!!str Leaf} group {!!str Nets}}}}}}}}}}} {!!map {id {!!str clock_phys_cap} type {!!str section} title {!!str Physical} children {!!seq {{!!map {id {!!str clock_phys_cap_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.capacitance.wire.top} title {!!str Top} group {!!str Wire}}} {!!map {metric {!!str clock.capacitance.wire.trunk} title {!!str Trunk} group {!!str Wire}}} {!!map {metric {!!str clock.capacitance.wire.leaf} title {!!str Leaf} group {!!str Wire}}} {!!map {metric {!!str clock.capacitance.gate.top} title {!!str Top} group {!!str Gate}}} {!!map {metric {!!str clock.capacitance.gate.trunk} title {!!str Trunk} group {!!str Gate}}} {!!map {metric {!!str clock.capacitance.gate.leaf} title {!!str Leaf} group {!!str Gate}}} {!!map {metric {!!str clock.capacitance.total.top} title {!!str Top} group {!!str Total}}} {!!map {metric {!!str clock.capacitance.total.trunk} title {!!str Trunk} group {!!str Total}}} {!!map {metric {!!str clock.capacitance.total.leaf} title {!!str Leaf} group {!!str Total}}} {!!map {metric {!!str clock.capacitance.sink.*} group {!!str Sink}}}}}}}}}}} {!!map {id {!!str clock_phys_buffer_constraint} type {!!str section} title {!!str {Buffer Depth Constraints}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_phys_buffer_constraint_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.buffer_depth_constraint.skew_group:*.*}}}}}}}}}}} {!!map {id {!!str clock_phys_stage_constraint} type {!!str section} title {!!str {Stage Depth Constraints}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_phys_stage_constraint_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.stage_depth_constraint.*}}}}}}}}}}} {!!map {id {!!str clock_drv} type {!!str section} title {!!str DRV} children {!!seq {{!!map {id {!!str clock_drv_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str {clock.drv.nets.remaining transition.count}} title {!!str Count} group {!!str {Remaining Transition}}}} {!!map {metric {!!str {clock.drv.nets.remaining transition.max}} title {!!str Max} group {!!str {Remaining Transition}}}} {!!map {metric {!!str {clock.drv.nets.unfixable transition.count}} title {!!str Count} group {!!str {Unfixable Transition}}}} {!!map {metric {!!str {clock.drv.nets.unfixable transition.max}} title {!!str Max} group {!!str {Unfixable Transition}}}} {!!map {metric {!!str clock.drv.nets.capacitance.count} title {!!str Count} group {!!str Capacitance}}} {!!map {metric {!!str clock.drv.nets.capacitance.max} title {!!str Max} group {!!str Capacitance}}} {!!map {metric {!!str clock.drv.nets.resistance.count} title {!!str Count} group {!!str Resistance}}} {!!map {metric {!!str clock.drv.nets.resistance.max} title {!!str Max} group {!!str Resistance}}} {!!map {metric {!!str clock.drv.nets.length.count} title {!!str Count} group {!!str Length}}} {!!map {metric {!!str clock.drv.nets.length.max} title {!!str Max} group {!!str Length}}} {!!map {metric {!!str clock.drv.nets.fanout.count} title {!!str Count} group {!!str Fanout}}} {!!map {metric {!!str clock.drv.nets.fanout.max} title {!!str Max} group {!!str Fanout}}}}}}}}}}} {!!map {id {!!str clock_drv_detail} type {!!str section} title {!!str Detail} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_drv_detail_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str {clock.drv.nets.remaining transition.*}} group {!!str {Remaining Transition}}}} {!!map {metric {!!str {clock.drv.nets.unfixable transition.*}} group {!!str {Unfixable Transition}}}} {!!map {metric {!!str clock.drv.nets.capacitance.*} group {!!str Capacitance}}} {!!map {metric {!!str clock.drv.nets.resistance.*} group {!!str Resistance}}} {!!map {metric {!!str clock.drv.nets.length.*} group {!!str Length}}} {!!map {metric {!!str clock.drv.nets.fanout.*} group {!!str Fanout}}}}}}}}}}} {!!map {id {!!str clock_drv_halo} type {!!str section} title {!!str {Clock Halo}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_drv_halo_t} type {!!str table} key {!!map {{Clock Tree} {!!str clock.halo.clock_tree:*.count}}} ar_metric {!!seq {{!!map {metric {!!str clock.halo.clock_tree:%.count} group {!!str Count}}} {!!map {metric {!!str clock.halo.clock_tree:%.violations} group {!!str Violations}}}}}}}}}}} {!!map {id {!!str clock_drv_tran_tar} type {!!str section} title {!!str Transition} children {!!seq {{!!map {id {!!str clock_drv_tran_tar_t} type {!!str table} ar_metric {!!seq {{!!map {metric {!!str clock.transition.target.primary_half_corner.top.*} group {!!str {Top Transition Target Stats}}}} {!!map {metric {!!str clock.transition.target.primary_half_corner.trunk.*} group {!!str {Trunk Transition Target Stats}}}} {!!map {metric {!!str clock.transition.target.primary_half_corner.leaf.*} group {!!str {Leaf Transition Target Stats}}}}}}}}}}}} {!!map {id {!!str clock_drv_tran_tar_early} type {!!str section} title {!!str {Per corner/clock tree transition Target (early)}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_drv_tran_tar_early_t} type {!!str table} key {!!map {{Corner | Clock Tree} {!!str clock.transition.target.delay_corner:*.early.top.clock_tree:*}}} ar_metric {!!seq {{!!map {metric {!!str clock.transition.auto_target.delay_corner:%.early.clock_tree:%} group {!!str {Auto Target}}}} {!!map {metric {!!str clock.transition.target.delay_corner:%.early.top.clock_tree:%} group {!!str Top}}} {!!map {metric {!!str clock.transition.target.delay_corner:%.early.trunk.clock_tree:%} group {!!str Trunk}}} {!!map {metric {!!str clock.transition.target.delay_corner:%.early.leaf.clock_tree:%} group {!!str Leaf}}}}}}}}}}} {!!map {id {!!str clock_drv_tran_tar_late} type {!!str section} title {!!str {Per corner/clock tree transition Target (late)}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_drv_tran_tar_late_t} type {!!str table} key {!!map {{Corner | Clock Tree} {!!str clock.transition.target.delay_corner:*.late.top.clock_tree:*}}} ar_metric {!!seq {{!!map {metric {!!str clock.transition.auto_target.delay_corner:%.late.clock_tree:%} group {!!str {Auto Target}}}} {!!map {metric {!!str clock.transition.target.delay_corner:%.late.top.clock_tree:%} group {!!str Top}}} {!!map {metric {!!str clock.transition.target.delay_corner:%.late.trunk.clock_tree:%} group {!!str Trunk}}} {!!map {metric {!!str clock.transition.target.delay_corner:%.late.leaf.clock_tree:%} group {!!str Leaf}}}}}}}}}}} {!!map {id {!!str clock_drv_tran_top} type {!!str section} title {!!str {Top Transition Distribution}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_drv_tran_top_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Target {!!str clock.transition.primary_half_corner.top.*.max}}} ar_metric {!!seq {{!!map {metric {!!str clock.transition.primary_half_corner.top.%.*}}}}}}}}}}} {!!map {id {!!str clock_drv_tran_trunk} type {!!str section} title {!!str {Trunk Transition Distribution}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_drv_tran_trunk_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Target {!!str clock.transition.primary_half_corner.trunk.*.max}}} ar_metric {!!seq {{!!map {metric {!!str clock.transition.primary_half_corner.trunk.%.*}}}}}}}}}}} {!!map {id {!!str clock_drv_tran_leaf} type {!!str section} title {!!str {Leaf Transition Distribution}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_drv_tran_leaf_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Target {!!str clock.transition.primary_half_corner.leaf.*.max}}} ar_metric {!!seq {{!!map {metric {!!str clock.transition.primary_half_corner.leaf.%.*}}}}}}}}}}} {!!map {id {!!str clock_skew} type {!!str section} title {!!str Latency/Skew} children {!!seq {{!!map {id {!!str clock_skew_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.latency.primary_reporting_skew_group.primary_half_corner.*} group {!!str Latency}}} {!!map {metric {!!str clock.skew.primary_reporting_skew_group.primary_half_corner.*} group {!!str Skew}}} {!!map {metric {!!str clock.skew.primary_reporting_skew_group.primary_half_corner.skew_band.*} group {!!str {Skew Band}}}}}}}}}}}} {!!map {id {!!str clock_skew_early_detail} type {!!str section} title {!!str {Per group/corner (early)}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_skew_early_detail_t} type {!!str table} per_snapshot {!!true 1} key {!!map {{Skew Group | Corner} {!!str clock.skew.skew_group:*.delay_corner:*.early.total}}} ar_metric {!!seq {{!!map {metric {!!str clock.latency.skew_group:%.delay_corner:%.early.*} group {!!str Latency}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.early.total} title {!!str Total}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.early.gate} title {!!str Gate}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.early.wire} title {!!str Wire}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.early.target} title {!!str Target}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.early.target_met} title {!!str {Target Met}}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.early.skew_band.*} group {!!str {Skew band}}}}}}}}}}}} {!!map {id {!!str clock_skew_late_detail} type {!!str section} title {!!str {Per group/corner (late)}} hidden {!!true 1} children {!!seq {{!!map {id {!!str clock_skew_late_detail_t} type {!!str table} per_snapshot {!!true 1} key {!!map {{Skew Group | Corner} {!!str clock.skew.skew_group:*.delay_corner:*.late.total}}} ar_metric {!!seq {{!!map {metric {!!str clock.latency.skew_group:%.delay_corner:%.late.*} group {!!str Latency}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.late.total} title {!!str Total} group {!!str Skew}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.late.gate} title {!!str Gate} group {!!str Skew}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.late.wire} title {!!str Wire} group {!!str Skew}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.late.target} title {!!str Target} group {!!str Skew}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.late.target_met} title {!!str {Target Met}} group {!!str Skew}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.late.skew_band.*} group {!!str {Skew band}}}}}}}}}}}} {!!map {id {!!str cts_cpu} type {!!str section} title {!!str Runtime} children {!!seq {{!!map {id {!!str cts_real_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {Real time}} ar_metric {!!seq {{!!map {metric {!!str flow.realtime} title {!!str Real} graph_type {!!str horizontalBar}}}}}}} {!!map {id {!!str cts_cpu_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {CPU Runtime}} ar_metric {!!seq {{!!map {metric {!!str flow.cputime} title {!!str CPU} graph_type {!!str horizontalBar}}}}}}}}}}}}}}} {!!map {title {!!str Design} children {!!seq {{!!map {id {!!str design_dashboard_filters} type {!!str section} title {!!str {Run/Snapshot Filters}} hidden {!!true 1} children {!!seq {{!!map {id {!!str design_dashboard_filter} type {!!str run_snapshot_filter}}} {!!map {id {!!str design_dashboard_snapshot_navigation} type {!!str snapshot_picker}}}}}}} {!!map {id {!!str physical_physical} type {!!str section} title {!!str Physical} children {!!seq {{!!map {id {!!str physical_physical_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.density} title {!!str Density}}} {!!map {metric {!!str design.instances.logical} title {!!str {Logical instances}}}} {!!map {metric {!!str design.area.logical} title {!!str {Logical area}}}} {!!map {metric {!!str design.instances} title {!!str {Total instances}}}} {!!map {metric {!!str design.area} title {!!str {Total area}}}} {!!map {metric {!!str design.blockages.place.area} title {!!str {Blocked area}}}}}}}}}}}} {!!map {id {!!str physical_physical_insts} type {!!str section} title {!!str {Instances Detail}} hidden {!!true 1} children {!!seq {{!!map {id {!!str physical_physical_insts_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.instances.register} title {!!str register} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.instances.icg} title {!!str icg} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.instances.latch} title {!!str latch} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.instances.buffer} title {!!str buffer} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.instances.inverter} title {!!str inverter} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.instances.combinatorial} title {!!str combo} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.instances.std_cell} title {!!str total} group {!!str {Total (SC)}}}} {!!map {metric {!!str design.instances.macro} title {!!str macro} group {!!str Other}}} {!!map {metric {!!str design.instances.physical} title {!!str physical} group {!!str Other}}} {!!map {metric {!!str design.instances.io} title {!!str io} group {!!str Other}}} {!!map {metric {!!str design.instances.blackbox} title {!!str blackbox} group {!!str Other}}} {!!map {metric {!!str design.instances.power_switch} title {!!str power_switch} group {!!str MSV}}} {!!map {metric {!!str design.instances.isolation} title {!!str isolation} group {!!str MSV}}} {!!map {metric {!!str design.instances.level_shifter} title {!!str level_shifter} group {!!str MSV}}} {!!map {metric {!!str design.instances.always_on} title {!!str always_on} group {!!str MSV}}} {!!map {metric {!!str design.instances} title {!!str total} group {!!str Total}}}}}}}}}}} {!!map {id {!!str physical_physical_area} type {!!str section} title {!!str {Area Detail}} hidden {!!true 1} children {!!seq {{!!map {id {!!str physical_physical_area_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.area.register} title {!!str register} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.area.icg} title {!!str icg} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.area.latch} title {!!str latch} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.area.buffer} title {!!str buffer} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.area.inverter} title {!!str inverter} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.area.combinatorial} title {!!str combo} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.area.std_cell} title {!!str total} group {!!str {Total (SC)}}}} {!!map {metric {!!str design.area.macro} title {!!str macro} group {!!str Other}}} {!!map {metric {!!str design.area.physical} title {!!str physical} group {!!str Other}}} {!!map {metric {!!str design.area.io} title {!!str io} group {!!str Other}}} {!!map {metric {!!str design.area.blackbox} title {!!str blackbox} group {!!str Other}}} {!!map {metric {!!str design.area.power_switch} title {!!str power_switch} group {!!str MSV}}} {!!map {metric {!!str design.area.isolation} title {!!str isolation} group {!!str MSV}}} {!!map {metric {!!str design.area.level_shifter} title {!!str level_shifter} group {!!str MSV}}} {!!map {metric {!!str design.area.always_on} title {!!str always_on} group {!!str MSV}}} {!!map {metric {!!str design.area} title {!!str total} group {!!str Total}}}}}}}}}}} {!!map {id {!!str physical_physical_multibit} type {!!str section} title {!!str {Multibit Detail}} hidden {!!true 1} children {!!seq {{!!map {id {!!str physical_physical_multibit_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.multibit.*}}}}}}}}}}} {!!map {id {!!str physical_physical_dp} type {!!str section} title {!!str {Data Path Report}} hidden {!!true 1} children {!!seq {{!!map {id {!!str physical_per_dp_t} type {!!str table} ar_metric {!!seq {{!!map {metric {!!str design.datapath.area.type:datapath_modules} group {!!str {Datapath Modules}} title {!!str Area}}} {!!map {metric {!!str design.datapath.ratio.type:datapath_modules} group {!!str {Datapath Modules}} title {!!str Ratio}}} {!!map {metric {!!str design.datapath.area.type:external_muxes} group {!!str {External Muxes}} title {!!str Area}}} {!!map {metric {!!str design.datapath.ratio.type:external_muxes} group {!!str {External Muxes}} title {!!str Ratio}}} {!!map {metric {!!str design.datapath.area.type:others} group {!!str Others} title {!!str Area}}} {!!map {metric {!!str design.datapath.ratio.type:others} group {!!str Others} title {!!str Ratio}}} {!!map {metric {!!str design.datapath.area.type:total} group {!!str Total} title {!!str Area}}} {!!map {metric {!!str design.datapath.ratio.type:total} group {!!str Total} title {!!str Ratio}}}}}}}}}}} {!!map {id {!!str physical_physical_vth} type {!!str section} title {!!str {Vth Detail}} hidden {!!true 1} children {!!seq {{!!map {id {!!str physical_per_vth_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Group {!!str design.instances.vth:*}}} ar_metric {!!seq {{!!map {metric {!!str design.instances.vth:%} group {!!str Instances} title {!!str Total}}} {!!map {metric {!!str design.instances.vth:%.ratio} group {!!str Instances} title {!!str Ratio}}} {!!map {metric {!!str design.area.vth:%} group {!!str Area} title {!!str Total}}} {!!map {metric {!!str design.area.vth:%.ratio} group {!!str Area} title {!!str Ratio}}}}}}} {!!map {id {!!str physical_per_vth_detail_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Group {!!str design.instances.vth:*}}} ar_metric {!!seq {{!!map {metric {!!str design.instances.register.vth:%} group {!!str Register} title {!!str Total}}} {!!map {metric {!!str design.instances.ratio.register.vth:%} group {!!str Register} title {!!str Ratio}}} {!!map {metric {!!str design.instances.icg.vth:%} group {!!str ICG} title {!!str Total}}} {!!map {metric {!!str design.instances.ratio.icg.vth:%} group {!!str ICG} title {!!str Ratio}}} {!!map {metric {!!str design.instances.latch.vth:%} group {!!str Latch} title {!!str Total}}} {!!map {metric {!!str design.instances.ratio.latch.vth:%} group {!!str Latch} title {!!str Ratio}}} {!!map {metric {!!str design.instances.buffer.vth:%} group {!!str Buffer} title {!!str Total}}} {!!map {metric {!!str design.instances.ratio.buffer.vth:%} group {!!str Buffer} title {!!str Ratio}}} {!!map {metric {!!str design.instances.inverter.vth:%} group {!!str Inverter} title {!!str Total}}} {!!map {metric {!!str design.instances.ratio.inverter.vth:%} group {!!str Inverter} title {!!str Ratio}}} {!!map {metric {!!str design.instances.combinatorial.vth:%} group {!!str Combinational} title {!!str Total}}} {!!map {metric {!!str design.instances.ratio.combinatorial.vth:%} group {!!str Combinational} title {!!str Ratio}}}}}}} {!!map {id {!!str physical_physical_vth_per_pd} type {!!str section} title {!!str {Vth Detail Per Power Domain}} hidden {!!true 1} children {!!seq {{!!map {id {!!str physical_per_vth_per_pd_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Domain {!!str design.instances.power_domain:*} Group {!!str design.instances.vth:*}}} ar_metric {!!seq {{!!map {metric {!!str design.instances.power_domain:%.vth:%} group {!!str Instances} title {!!str Total}}} {!!map {metric {!!str design.instances.power_domain:%.vth:%.ratio} group {!!str Instances} title {!!str Ratio}}} {!!map {metric {!!str design.area.power_domain:%.vth:%} group {!!str Area} title {!!str Total}}} {!!map {metric {!!str design.area.power_domain:%.vth:%.ratio} group {!!str Area} title {!!str Ratio}}}}}}} {!!map {id {!!str physical_per_vth_pre_pd_detail_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Domain {!!str design.instances.power_domain:*} Group {!!str design.instances.vth:*}}} ar_metric {!!seq {{!!map {metric {!!str design.instances.register.power_domain:%.vth:%} group {!!str Register} title {!!str Total}}} {!!map {metric {!!str design.instances.ratio.register.power_domain:%.vth:%} group {!!str Register} title {!!str Ratio}}} {!!map {metric {!!str design.instances.icg.power_domain:%.vth:%} group {!!str ICG} title {!!str Total}}} {!!map {metric {!!str design.instances.ratio.icg.power_domain:%.vth:%} group {!!str ICG} title {!!str Ratio}}} {!!map {metric {!!str design.instances.latch.power_domain:%.vth:%} group {!!str Latch} title {!!str Total}}} {!!map {metric {!!str design.instances.ratio.latch.power_domain:%.vth:%} group {!!str Latch} title {!!str Ratio}}} {!!map {metric {!!str design.instances.buffer.power_domain:%.vth:%} group {!!str Buffer} title {!!str Total}}} {!!map {metric {!!str design.instances.ratio.buffer.power_domain:%.vth:%} group {!!str Buffer} title {!!str Ratio}}} {!!map {metric {!!str design.instances.inverter.power_domain:%.vth:%} group {!!str Inverter} title {!!str Total}}} {!!map {metric {!!str design.instances.ratio.inverter.power_domain:%.vth:%} group {!!str Inverter} title {!!str Ratio}}} {!!map {metric {!!str design.instances.combinatorial.power_domain:%.vth:%} group {!!str Combinational} title {!!str Total}}} {!!map {metric {!!str design.instances.ratio.combinatorial.power_domain:%.vth:%} group {!!str Combinational} title {!!str Ratio}}}}}}}}}}}}}}} {!!map {id {!!str physical_physical_lf} type {!!str section} title {!!str {Instances by Function}} hidden {!!true 1} children {!!seq {{!!map {id {!!str physical_per_lf_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.instances.function:*}}}}}}}}}}} {!!map {id {!!str physical_physical_ds} type {!!str section} title {!!str {Instances by Size}} hidden {!!true 1} children {!!seq {{!!map {id {!!str physical_per_ds_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.instances.strength:*}}}}}}}}}}} {!!map {id {!!str physical_physical_hinst} type {!!str section} title {!!str Per-Block} hidden {!!true 1} children {!!seq {{!!map {id {!!str physical_per_hinst_t} type {!!str table} key {!!map {Block {!!str design.instances.hinst:*}}} ar_metric {!!seq {{!!map {metric {!!str design.instances.hinst:%} title {!!str Instances}}} {!!map {metric {!!str design.area.hinst:%} title {!!str Area}}}}}}}}}}} {!!map {id {!!str physical_check_place} type {!!str section} title {!!str {Check Place}} children {!!seq {{!!map {id {!!str physical_check_place_t} type {!!str table} flip_axis {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str check.place.*}}}}}}}}}}} {!!map {id {!!str physical_cpu} type {!!str section} title {!!str Runtime} children {!!seq {{!!map {id {!!str physical_real_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {Real time}} ar_metric {!!seq {{!!map {metric {!!str flow.realtime} title {!!str Real} graph_type {!!str horizontalBar}}}}}}} {!!map {id {!!str physical_cpu_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {CPU Runtime}} ar_metric {!!seq {{!!map {metric {!!str flow.cputime} title {!!str CPU} graph_type {!!str horizontalBar}}}}}}}}}}}}}}} {!!map {title {!!str Power} children {!!seq {{!!map {id {!!str power_image} type {!!str image_plot} initial_visible_count {!!int 1} ar_metric {!!seq {{!!map {metric {!!str design.floorplan.image}}} {!!map {metric {!!str design.macro.image}}} {!!map {metric {!!str power.domains.image}}} {!!map {metric {!!str power.intent.image}}}}}}} {!!map {id {!!str power_dashboard_filters} type {!!str section} title {!!str {Run/Snapshot Filters}} hidden {!!true 1} children {!!seq {{!!map {id {!!str power_dashboard_filter} type {!!str run_snapshot_filter}}} {!!map {id {!!str power_dashboard_snapshot_navigation} type {!!str snapshot_picker}}}}}}} {!!map {id {!!str power_power} type {!!str section} title {!!str Power} children {!!seq {{!!map {id {!!str power_power_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str power} title {!!str Total} group {!!str {Whole Design}}}} {!!map {metric {!!str power.leakage} title {!!str Leakage} group {!!str {Whole Design}}}} {!!map {metric {!!str power.internal} title {!!str Internal} group {!!str {Whole Design}}}} {!!map {metric {!!str power.switching} title {!!str Switching} group {!!str {Whole Design}}}} {!!map {metric {!!str power.clock} title {!!str {Total Clock Power}}}}}}}}}}}} {!!map {id {!!str power_leakage} type {!!str section} title {!!str {Leakage Details}} hidden {!!true 1} children {!!seq {{!!map {id {!!str power_leakage_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str power.leakage.type:*} group {!!str {Leakage Power Breakdown}}}}}}}}}}}} {!!map {id {!!str power_internal} type {!!str section} title {!!str {Internal Details}} hidden {!!true 1} children {!!seq {{!!map {id {!!str power_internal_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str power.internal.type:*} group {!!str {Internal Power Breakdown}}}}}}}}}}}} {!!map {id {!!str power_switching} type {!!str section} title {!!str {Switching Details}} hidden {!!true 1} children {!!seq {{!!map {id {!!str power_switching_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str power.switching.type:*} group {!!str {Switching Power Breakdown}}}}}}}}}}}} {!!map {id {!!str power_clock_gating} type {!!str section} title {!!str {Clock Gating Details}} hidden {!!true 1} children {!!seq {{!!map {id {!!str power_clock_gating_t} type {!!str table} per_snapshot {!!false 0} ar_metric {!!seq {{!!map {metric {!!str power.cg.clock_gates} group {!!str {Clock Gates}} title {!!str Total}}} {!!map {metric {!!str power.cg.clock_gates.genus} group {!!str {Clock Gates}} title {!!str Genus}}} {!!map {metric {!!str power.cg.clock_gates.user} group {!!str {Clock Gates}} title {!!str User}}} {!!map {metric {!!str power.cg.gated_flops} group {!!str {Gated Flops}} title {!!str Total}}} {!!map {metric {!!str power.cg.gated_flops.pct} group {!!str {Gated Flops}} title {!!str Percent}}} {!!map {metric {!!str power.cg.gated_flops.genus} group {!!str {Gated Flops}} title {!!str Genus}}} {!!map {metric {!!str power.cg.gated_flops.user} group {!!str {Gated Flops}} title {!!str User}}} {!!map {metric {!!str power.cg.gated_bits} group {!!str {Gated Bits}} title {!!str Total}}} {!!map {metric {!!str power.cg.gated_bits.pct} group {!!str {Gated Bits}} title {!!str Percent}}} {!!map {metric {!!str power.cg.gated_bits.genus} group {!!str {Gated Bits}} title {!!str Genus}}} {!!map {metric {!!str power.cg.gated_bits.user} group {!!str {Gated Bits}} title {!!str User}}} {!!map {metric {!!str power.cg.ungated_flops} group {!!str {Ungated Flops}} title {!!str Total}}} {!!map {metric {!!str power.cg.ungated_flops.pct} group {!!str {Ungated Flops}} title {!!str Percent}}} {!!map {metric {!!str power.cg.ungated_bits} group {!!str {Ungated Bits}} title {!!str Total}}} {!!map {metric {!!str power.cg.ungated_bits.pct} group {!!str {Ungated Bits}} title {!!str Percent}}}}}}} {!!map {id {!!str power_clock_gating_histograms_t} type {!!str table} per_snapshot {!!false 0} ar_metric {!!seq {{!!map {metric {!!str power.cg.fanout.clock_gates.hst} title {!!str {Clock Gates}} group {!!str {Fanout Distribution}}}} {!!map {metric {!!str power.cg.fanout.flops.hst} title {!!str {Gated Flops}} group {!!str {Fanout Distribution}}}} {!!map {metric {!!str power.cg.fanout.bits.hst} title {!!str {Gated Bits}} group {!!str {Fanout Distribution}}}}}}}}}}}} {!!map {id {!!str power_per_block} type {!!str section} title {!!str {Per Block}} hidden {!!true 1} children {!!seq {{!!map {id {!!str power_per_block_t} type {!!str table} key {!!map {Block {!!str power.hinst:*}}} ar_metric {!!seq {{!!map {metric {!!str power.hinst:%} title {!!str Total}}} {!!map {metric {!!str power.switching.hinst:%} title {!!str Switching}}} {!!map {metric {!!str power.leakage.hinst:%} title {!!str Leakage}}} {!!map {metric {!!str power.internal.hinst:%} title {!!str Internal}}}}}}}}}}} {!!map {id {!!str emir_emir} type {!!str section} title {!!str {Rail Analysis}} hidden {!!true 1} children {!!seq {{!!map {id {!!str emir_t} type {!!str table} key {!!map {Net {!!str rail.referencevoltage.net:*}}} ar_metric {!!seq {{!!map {metric {!!str rail.thresholdvoltage.net:%} title {!!str T} group {!!str Voltage}}} {!!map {metric {!!str rail.referencevoltage.net:%} title {!!str R} group {!!str Voltage}}} {!!map {metric {!!str rail.gridcap.net:%} title {!!str Grid} group {!!str Cap}}} {!!map {metric {!!str rail.intrinsiccap.net:%} title {!!str Intrinsic} group {!!str Cap}}} {!!map {metric {!!str rail.loadingcap.net:%} title {!!str Loading} group {!!str Cap}}} {!!map {metric {!!str rail.totalcap.net:%} title {!!str Total} group {!!str Cap}}} {!!map {metric {!!str rail.averagedemandcurrent.net:%} title {!!str Avg} group {!!str TC_SUM}}} {!!map {metric {!!str rail.peakdemandcurrent.net:%} title {!!str Peak} group {!!str TC_SUM}}} {!!map {metric {!!str rail.averagesupplycurrent.net:%} title {!!str Avg} group {!!str VC_SUM}}} {!!map {metric {!!str rail.peaksupplycurrent.net:%} title {!!str Peak} group {!!str VC_SUM}}} {!!map {metric {!!str rail.rj.min.net:%} title {!!str Min} group {!!str RJ}}} {!!map {metric {!!str rail.rj.max.net:%} title {!!str Max} group {!!str RJ}}} {!!map {metric {!!str rail.rj.avg.net:%} title {!!str Avg} group {!!str RJ}}} {!!map {metric {!!str rail.rj.violations.net:%} title {!!str Viols} group {!!str RJ}}} {!!map {metric {!!str rail.ir.dynamic.min.net:%} title {!!str Min} group {!!str {Dynamic IR}}}} {!!map {metric {!!str rail.ir.dynamic.max.net:%} title {!!str Max} group {!!str {Dynamic IR}}}} {!!map {metric {!!str rail.ir.dynamic.avg.net:%} title {!!str Avg} group {!!str {Dynamic IR}}}} {!!map {metric {!!str rail.ir.dynamic.violations.net:%} title {!!str Viols} group {!!str {Dynamic IR}}}} {!!map {metric {!!str rail.ir.static.min.net:%} title {!!str Min} group {!!str {Static IR}}}} {!!map {metric {!!str rail.ir.static.max.net:%} title {!!str Max} group {!!str {Static IR}}}} {!!map {metric {!!str rail.ir.static.avg.net:%} title {!!str Avg} group {!!str {Static IR}}}} {!!map {metric {!!str rail.ir.static.violations.net:%} title {!!str Viols} group {!!str {Static IR}}}} {!!map {metric {!!str rail.worstircycle.net:%} title {!!str {Worst IR Cycle}} group {!!str Simulation}}} {!!map {metric {!!str rail.rushcurrent.net:%} title {!!str {Rush Current}} group {!!str Simulation}}} {!!map {metric {!!str rail.wakeuptime.net:%} title {!!str {Wake Up Time}} group {!!str Simulation}}} {!!map {metric {!!str rail.totalpowerswitchesturnedon.net:%} title {!!str {Power Switches On}} group {!!str Simulation}}}}}}} {!!map {id {!!str emir_iv_t} type {!!str table} key {!!map {{Domain | Net} {!!str rail.worstivreport.name:*.type:*}}} ar_metric {!!seq {{!!map {metric {!!str rail.worstivreport.name:%.type:%} title {!!str {IV Reports}}}}}}}} {!!map {id {!!str emir_em} type {!!str section} title {!!str {AC Limit}} children {!!seq {{!!map {id {!!str emir_em_t} type {!!str table} ar_metric {!!seq {{!!map {metric {!!str check.ac_limit.rms} title {!!str RMS} group {!!str {Total Nets}}}} {!!map {metric {!!str check.ac_limit.peak} title {!!str Peak} group {!!str {Total Nets}}}} {!!map {metric {!!str check.ac_limit.avg} title {!!str Avg} group {!!str {Total Nets}}}} {!!map {metric {!!str check.ac_limit.clocknet.rms} title {!!str RMS} group {!!str {Clock Nets}}}} {!!map {metric {!!str check.ac_limit.clocknet.peak} title {!!str Peak} group {!!str {Clock Nets}}}} {!!map {metric {!!str check.ac_limit.clocknet.avg} title {!!str Avg} group {!!str {Clock Nets}}}} {!!map {metric {!!str check.ac_limit.datanet.rms} title {!!str RMS} group {!!str {Data Nets}}}} {!!map {metric {!!str check.ac_limit.datanet.peak} title {!!str Peak} group {!!str {Data Nets}}}} {!!map {metric {!!str check.ac_limit.datanet.avg} title {!!str Avg} group {!!str {Data Nets}}}} {!!map {metric {!!str check.ac_limit.wiresegment.rms} title {!!str RMS} group {!!str {Wire Segments}}}} {!!map {metric {!!str check.ac_limit.wiresegment.peak} title {!!str Peak} group {!!str {Wire Segments}}}} {!!map {metric {!!str check.ac_limit.wiresegment.avg} title {!!str Avg} group {!!str {Wire Segments}}}}}}}}}}}} {!!map {id {!!str emir_frequency_violations} type {!!str section} title {!!str {Frequency Violations}} children {!!seq {{!!map {id {!!str emir_frequency_violations_t} type {!!str table} key {!!map {View {!!str frequency.violations.analysis_view:*}}} ar_metric {!!seq {{!!map {metric {!!str frequency.instances} title {!!str Instances} group {!!str Total}}} {!!map {metric {!!str frequency.violations.analysis_view:%} title {!!str Violations} group {!!str All}}} {!!map {metric {!!str frequency.violations.clock.analysis_view:%} title {!!str Violations} group {!!str Clock}}}}}}}}}}}}}}} {!!map {id {!!str power_cpu} type {!!str section} title {!!str Runtime} children {!!seq {{!!map {id {!!str power_real_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {Real time}} ar_metric {!!seq {{!!map {metric {!!str flow.realtime} title {!!str Real} graph_type {!!str horizontalBar}}}}}}} {!!map {id {!!str power_cpu_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {CPU Runtime}} ar_metric {!!seq {{!!map {metric {!!str flow.cputime} title {!!str CPU} graph_type {!!str horizontalBar}}}}}}}}}}}}}}} {!!map {title {!!str Test} children {!!seq {{!!map {id {!!str test_dashboard_filters} type {!!str section} title {!!str {Run/Snapshot Filters}} hidden {!!true 1} children {!!seq {{!!map {id {!!str test_dashboard_filter} type {!!str run_snapshot_filter}}}}}}} {!!map {id {!!str faults} type {!!str section} title {!!str Summmary} hidden {!!false 0} children {!!seq {{!!map {id {!!str test_design} type {!!str section} title {!!str {Design Statistics}} hidden {!!true 1} children {!!seq {{!!map {id {!!str test_design_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.instances} group {!!str Design} title {!!str Insts}}} {!!map {metric {!!str design.instances.register} group {!!str Design} title {!!str Flops}}} {!!map {metric {!!str design.ports.input} group {!!str Ports} title {!!str Input}}} {!!map {metric {!!str design.ports.output} group {!!str Ports} title {!!str Output}}} {!!map {metric {!!str design.ports.inout} group {!!str Ports} title {!!str Bidi}}}}}}}}}}} {!!map {id {!!str fault_coverage} type {!!str section} title {!!str {Fault Coverage Statistics}} hidden {!!true 1} children {!!seq {{!!map {id {!!str fault_coverage_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Type {!!str atpg.stats:*.atcov}}} ar_metric {!!seq {{!!map {metric {!!str atpg.stats:%.atcov} title {!!str %ATCOV}}} {!!map {metric {!!str atpg.stats:%.total_faults} title {!!str {Total Faults}}}} {!!map {metric {!!str atpg.stats:%.untested_faults} title {!!str {Untested Faults}}}} {!!map {metric {!!str atpg.stats:%.tested_faults} title {!!str {Tested Faults}}}} {!!map {metric {!!str atpg.stats:%.tested_faults} title {!!str {Tested Faults}}}} {!!map {metric {!!str atpg.stats:%.possible_faults} title {!!str {Possible Faults}}}} {!!map {metric {!!str atpg.stats:%.redundant_faults} title {!!str {Redundant Faults}}}}}}}}}}}} {!!map {id {!!str fault_count} type {!!str section} title {!!str {Fault Count}} hidden {!!true 1} children {!!seq {{!!map {id {!!str ignored_faults_t} type {!!str table} flip_axis {!!true 1} per_snapshot {!!true 1} key {!!map {Type {!!str atpg.stats:*.ignored_faults}}} ar_metric {!!seq {{!!map {metric {!!str atpg.stats:%.ignored_faults} title {!!str {Ignored Fault Count}}}}}}}}}}}}}}}} {!!map {id {!!str testmode} type {!!str section} title {!!str Testmodes} hidden {!!false 0} children {!!seq {{!!map {id {!!str testmode_summary} type {!!str section} title {!!str {Testmode Summary}} hidden {!!true 1} children {!!seq {{!!map {id {!!str testmode_summary_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Testmode {!!str tsv.testmode:*.is_opcg}}} ar_metric {!!seq {{!!map {metric {!!str tsv.testmode:%.compression_type} title {!!str {Compression (xor/misr)}}}} {!!map {metric {!!str tsv.testmode:%.is_decomp} title {!!str Decompression}}} {!!map {metric {!!str tsv.testmode:%.is_opcg} title {!!str {Is OPCG}}}} {!!map {metric {!!str tsv.testmode:%.masking_type} title {!!str {Masking Type}}}} {!!map {metric {!!str tsv.testmode:%.is_low_power_gating} title {!!str {Is Low Power Gating}}}} {!!map {metric {!!str tsv.testmode:%.is_lbist} title {!!str {Is Lbist}}}} {!!map {metric {!!str tsv.testmode:%.is_2d_elastic} title {!!str {Is 2D Elastic}}}}}}}}}}}} {!!map {id {!!str testmode_coverage} type {!!str section} title {!!str {Testmode Coverage}} hidden {!!true 1} children {!!seq {{!!map {id {!!str testmode_coverage_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Testmode {!!str atpg.testmode:*.stats:*.atcov}}} ar_metric {!!seq {{!!map {metric {!!str atpg.testmode:%.stats:%.atcov} title {!!str ATCOV}}} {!!map {metric {!!str atpg.testmode:%.stats:%.total_faults} title {!!str #faults}}} {!!map {metric {!!str atpg.testmode:%.stats:%.untested_faults} title {!!str #untested}}} {!!map {metric {!!str atpg.testmode:%.stats:%.tested_faults} title {!!str #tested}}} {!!map {metric {!!str atpg.testmode:%.stats:%.possible_faults} title {!!str #possible}}} {!!map {metric {!!str atpg.testmode:%.stats:%.redundant_faults} title {!!str #redundant}}}}}}}}}}} {!!map {id {!!str global_coverage} type {!!str section} title {!!str {Global Coverage}} hidden {!!true 1} children {!!seq {{!!map {id {!!str testmode_global_coverage_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Testmode {!!str atpg.testmode:*.stats:*.global_atcov}}} ar_metric {!!seq {{!!map {metric {!!str atpg.testmode:%.stats:%.global_atcov} title {!!str ATCOV}}} {!!map {metric {!!str atpg.testmode:%.stats:%.global_total_faults} title {!!str #faults}}} {!!map {metric {!!str atpg.testmode:%.stats:%.global_untested_faults} title {!!str #untested}}} {!!map {metric {!!str atpg.testmode:%.stats:%.global_tested_faults} title {!!str #tested}}} {!!map {metric {!!str atpg.testmode:%.stats:%.global_possible_faults} title {!!str #possible}}} {!!map {metric {!!str atpg.testmode:%.stats:%.global_redundant_faults} title {!!str #redundant}}}}}}}}}}} {!!map {id {!!str scan_chains} type {!!str section} title {!!str {Scan Chain Details}} hidden {!!true 1} children {!!seq {{!!map {id {!!str testmode_scan_chain_details_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Testmode {!!str tsv.testmode:*.num_controllable_chains}}} ar_metric {!!seq {{!!map {metric {!!str tsv.testmode:%.num_controllable_chains} title {!!str {#control chains}}}} {!!map {metric {!!str tsv.testmode:%.num_observable_chains} title {!!str {#observe chains}}}} {!!map {metric {!!str tsv.testmode:%.num_controllable_and_observable_chains} title {!!str {#controllable and observe chains}}}} {!!map {metric {!!str tsv.testmode:%.longest_scan_chain} title {!!str {Longest Scan Chain}}}} {!!map {metric {!!str tsv.testmode:%.shortest_scan_chain} title {!!str {Shortest Scan Chain}}}}}}}}}}}} {!!map {id {!!str pattern_statistics} type {!!str section} title {!!str {Pattern Statistics}} hidden {!!true 1} children {!!seq {{!!map {id {!!str testmode_pattern_statistics_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Testmode {!!str atpg.testmode:*.num_tests}}} ar_metric {!!seq {{!!map {metric {!!str atpg.testmode:%.num_scan_tests} title {!!str {#scan tests}}}} {!!map {metric {!!str atpg.testmode:%.num_scan_delay_tests} title {!!str {#scan delay tests}}}} {!!map {metric {!!str atpg.testmode:%.num_logic_tests} title {!!str {#logic tests}}}} {!!map {metric {!!str atpg.testmode:%.num_logic_delay_tests} title {!!str {#logic delay tests}}}} {!!map {metric {!!str atpg.testmode:%.num_iddq_tests} title {!!str {#iddq tests}}}} {!!map {metric {!!str atpg.testmode:%.num_tests} title {!!str #tests}}}}}}}}}}}}}}} {!!map {id {!!str experiments} type {!!str section} title {!!str Experiments} hidden {!!false 0} children {!!seq {{!!map {id {!!str experiments_global_statistics} type {!!str section} title {!!str {Global Statistics}} hidden {!!true 1} children {!!seq {{!!map {id {!!str global_statistics_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Experiment {!!str atpg.testmode:*.experiment:*.stats:*.global_atcov}}} ar_metric {!!seq {{!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.global_tcov} title {!!str TCOV}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.global_atcov} title {!!str ATCOV}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.global_total_faults} title {!!str #faults}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.global_tested_faults} title {!!str #tested}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.global_untested_faults} title {!!str #untested}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.global_possible_faults} title {!!str #possible}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.global_redundant_faults} title {!!str #redundant}}}}}}}}}}} {!!map {id {!!str experiments_testmode_statistics} type {!!str section} title {!!str {Testmode Statistics}} hidden {!!true 1} children {!!seq {{!!map {id {!!str testmode_statistics_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Experiment {!!str atpg.testmode:*.experiment:*.stats:*.atcov}}} ar_metric {!!seq {{!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.tcov} title {!!str TCOV}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.atcov} title {!!str ATCOV}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.faults} title {!!str #faults}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.tested_faults} title {!!str #tested}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.untested_faults} title {!!str #untested}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.possible_faults} title {!!str #possible}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.stats:%.redundant_faults} title {!!str #redundant}}}}}}}}}}} {!!map {id {!!str experiments_pattern_statistics} type {!!str section} title {!!str {Final Pattern Statistics}} hidden {!!true 1} children {!!seq {{!!map {id {!!str final_patterns_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Experiment {!!str atpg.testmode:*.experiment:*.num_tests}}} ar_metric {!!seq {{!!map {metric {!!str atpg.testmode:%.experiment:%.num_scan_tests} title {!!str {#scan tests}}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.num_scan_delay_tests} title {!!str {#scan delay tests}}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.num_logic_tests} title {!!str {#logic tests}}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.num_logic_delay_tests} title {!!str {#logic delay tests}}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.num_iddq_tests} title {!!str {#iddq tests}}}} {!!map {metric {!!str atpg.testmode:%.experiment:%.num_tests} title {!!str #tests}}}}}}}}}}}}}}}}}}} {!!map {title {!!str Route} children {!!seq {{!!map {id {!!str route_dashboard_filters} type {!!str section} title {!!str {Run/Snapshot Filters}} hidden {!!true 1} children {!!seq {{!!map {id {!!str route_dashboard_filter} type {!!str run_snapshot_filter}}} {!!map {id {!!str route_dashboard_snapshot_navigation} type {!!str snapshot_picker}}}}}}} {!!map {id {!!str route_route} type {!!str section} title {!!str Routing} children {!!seq {{!!map {id {!!str route_image} type {!!str image_plot} initial_visible_count {!!int 1} ar_metric {!!seq {{!!map {metric {!!str design.floorplan.image}}} {!!map {metric {!!str design.macro.image}}} {!!map {metric {!!str design.hotspot.image}}} {!!map {metric {!!str design.place.drc.image}}} {!!map {metric {!!str design.route.drc.image}}}}}}} {!!map {id {!!str route_route_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str route.overflow.horizontal} title {!!str Hor} group {!!str Congestion}}} {!!map {metric {!!str route.overflow.vertical} title {!!str Ver} group {!!str Congestion}}} {!!map {metric {!!str design.congestion.hotspot.max} title {!!str Max} group {!!str Congestion}}} {!!map {metric {!!str design.congestion.hotspot.total} title {!!str Total} group {!!str Congestion}}} {!!map {metric {!!str route.map.*} group {!!str {Congestion Map}}}} {!!map {metric {!!str route.wirelength} title {!!str Wirelength}}} {!!map {metric {!!str route.via.singlecut} title {!!str Single} group {!!str Vias}}} {!!map {metric {!!str route.via.multicut} title {!!str Multi} group {!!str Vias}}} {!!map {metric {!!str route.via} title {!!str Total} group {!!str Vias}}} {!!map {metric {!!str route.shielding.*} group {!!str Shielding}}} {!!map {metric {!!str route.drc} title {!!str Routing} group {!!str {Route DRC}}}} {!!map {metric {!!str route.drc.antenna} title {!!str Antenna} group {!!str {Route DRC}}}} {!!map {metric {!!str check.drc} title {!!str Routing} group {!!str {Check DRC}}}} {!!map {metric {!!str check.drc.antenna} title {!!str Antenna} group {!!str {Check DRC}}}}}}}}}}}} {!!map {id {!!str route_wirelength} type {!!str section} title {!!str {Wirelength Details}} hidden {!!true 1} children {!!seq {{!!map {id {!!str route_wirelength_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str route.wirelength} title {!!str Total}}} {!!map {metric {!!str route.wirelength.layer:*} group {!!str Layer}}}}}}}}}}} {!!map {id {!!str route_overflow} type {!!str section} title {!!str {Congestion Details}} hidden {!!true 1} children {!!seq {{!!map {id {!!str route_overflow_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str route.overflow} title {!!str Total}}} {!!map {metric {!!str route.overflow.layer:*} group {!!str Layer}}}}}}}}}}} {!!map {id {!!str per_layer_drc} type {!!str section} title {!!str {Per Layer DRC}} hidden {!!true 1} children {!!seq {{!!map {id {!!str per_layer_drc_t} type {!!str table} per_snapshot {!!true 1} key {!!map {Tool {!!str *.drc}}} ar_metric {!!seq {{!!map {metric {!!str %.drc} title {!!str Total}}} {!!map {metric {!!str %.drc.layer:*} group {!!str Layer}}}}}}}}}}} {!!map {id {!!str per_type_drc} type {!!str section} title {!!str {Per Type DRC}} hidden {!!true 1} children {!!seq {{!!map {id {!!str per_type_drc_t} type {!!str table} flip_axis {!!true 1} key {!!map {Tool {!!str *.drc}}} ar_metric {!!seq {{!!map {metric {!!str %.drc} title {!!str Total}}} {!!map {metric {!!str %.drc.type:*} group {!!str Type}}}}}}}}}}} {!!map {id {!!str per_layer_type} type {!!str section} title {!!str {Per Layer & Type DRC}} hidden {!!true 1} children {!!seq {{!!map {id {!!str per_layer_type_t} type {!!str table} flip_axis {!!true 1} key {!!map {Tool {!!str *.drc} Layer {!!str route.drc.layer:*}}} ar_metric {!!seq {{!!map {metric {!!str %.drc.layer:%.type:*} group {!!str Type}}}}}}}}}}} {!!map {id {!!str route_via} type {!!str section} title {!!str {Via Details}} hidden {!!true 1} children {!!seq {{!!map {id {!!str route_via_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str route.via.total} title {!!str Total} group {!!str Vias}}} {!!map {metric {!!str route.via.layer:*} group {!!str Vias}}} {!!map {metric {!!str route.via.singlecut} title {!!str Total} group {!!str {Single Cut Vias}}}} {!!map {metric {!!str route.via.singlecut.percentage} title {!!str Percent} group {!!str {Single Cut Vias}}}} {!!map {metric {!!str route.via.singlecut.layer:*} group {!!str {Single Cut Vias}}}} {!!map {metric {!!str route.via.multicut} title {!!str Total} group {!!str {Multiple Cut Vias}}}} {!!map {metric {!!str route.via.multicut.percentage} title {!!str Percent} group {!!str {Multiple Cut Vias}}}} {!!map {metric {!!str route.via.multicut.layer:*} group {!!str {Multiple Cut Vias}}}}}}}}}}}} {!!map {id {!!str rblkg} type {!!str section} title {!!str {Blockage Details}} hidden {!!true 1} children {!!seq {{!!map {id {!!str rblkg_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.blockages.route.area} title {!!str Total}}} {!!map {metric {!!str design.blockages.route.area.layer:*} group {!!str Layer}}}}}}}}}}} {!!map {id {!!str route_cpu} type {!!str section} title {!!str Runtime} children {!!seq {{!!map {id {!!str route_real_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {Real time}} ar_metric {!!seq {{!!map {metric {!!str flow.realtime} title {!!str Real} graph_type {!!str horizontalBar}}}}}}} {!!map {id {!!str route_cpu_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {CPU Runtime}} ar_metric {!!seq {{!!map {metric {!!str flow.cputime} title {!!str CPU} graph_type {!!str horizontalBar}}}}}}}}}}}}}}} {!!map {title {!!str Flow} children {!!seq {{!!map {id {!!str flow_dashboard_filters} type {!!str section} title {!!str {Run/Snapshot Filters}} hidden {!!true 1} children {!!seq {{!!map {id {!!str flow_dashboard_filter} type {!!str run_snapshot_filter}}} {!!map {id {!!str flow_dashboard_snapshot_navigation} type {!!str snapshot_picker}}}}}}} {!!map {id {!!str flow_log_flow} type {!!str section} title {!!str {Log and Flow Info}} children {!!seq {{!!map {id {!!str flow_log_flow_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str flow.user} title {!!str User}}} {!!map {metric {!!str flow.log} title {!!str {Log File}}}} {!!map {metric {!!str flow.run_directory} title {!!str {Run Dir}}}} {!!map {metric {!!str flow.run_tag} title {!!str {Run Tag}}}} {!!map {metric {!!str flow.step.tcl} title {!!str {Step TCL}}}}}}}}}}}} {!!map {id {!!str fv} type {!!str section} title {!!str {Formal Verification}} hidden {!!true 1} children {!!seq {{!!map {id {!!str fv_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str fv.result} title {!!str Result}}} {!!map {metric {!!str fv.points:*} group {!!str Points}}}}}}}}}}} {!!map {id {!!str flow_config} type {!!str section} title {!!str {Non-Default Root Config Options}} children {!!seq {{!!map {id {!!str flow_config_t} type {!!str dict_table} metric {!!map {metric {!!str flow.root_config}}}}}}}}} {!!map {id {!!str flow_cpu} type {!!str section} title {!!str Runtime} children {!!seq {{!!map {id {!!str flow_machine_t} type {!!str table} flip_axis {!!true 1} ar_metric {!!seq {{!!map {metric {!!str flow.machine.hostname} title {!!str Host}}} {!!map {metric {!!str flow.machine.cpu.model} title {!!str Model}}} {!!map {metric {!!str flow.machine.cpu.frequency} title {!!str Cpu}}} {!!map {metric {!!str flow.machine.cpu.number} title {!!str Cpus}}} {!!map {metric {!!str flow.machine.os} title {!!str OS}}} {!!map {metric {!!str flow.machine.memory.free} title {!!str Free} group {!!str Memory}}} {!!map {metric {!!str flow.machine.memory.total} title {!!str Total} group {!!str Memory}}} {!!map {metric {!!str flow.machine.swap.free} title {!!str Free} group {!!str Swap}}} {!!map {metric {!!str flow.machine.swap.total} title {!!str Total} group {!!str Swap}}}}}}} {!!map {id {!!str flow_runtime_t} type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str flow.cputime} title {!!str CPU} group {!!str Runtime}}} {!!map {metric {!!str flow.cputime.total} title {!!str {Total CPU}} group {!!str Runtime}}} {!!map {metric {!!str flow.realtime} title {!!str Wall} group {!!str Runtime}}} {!!map {metric {!!str flow.realtime.total} title {!!str {Total Wall}} group {!!str Runtime}}} {!!map {metric {!!str flow.machine.load} title {!!str Load} group {!!str Machine}}} {!!map {metric {!!str flow.memory} title {!!str Resi+Virtual} group {!!str Memory}}} {!!map {metric {!!str flow.memory.resident} title {!!str Resi} group {!!str Memory}}} {!!map {metric {!!str flow.memory.resident.peak} title {!!str {Peak Resi}} group {!!str Memory}}}}}}} {!!map {id {!!str flow_real_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {Real time}} ar_metric {!!seq {{!!map {metric {!!str flow.realtime} title {!!str Real} graph_type {!!str horizontalBar}}}}}}} {!!map {id {!!str flow_cpu_t} type {!!str graph} stacked {!!true 1} invert_axes {!!true 1} total_value_label {!!true 1} title {!!str {CPU Runtime}} ar_metric {!!seq {{!!map {metric {!!str flow.cputime} title {!!str CPU} graph_type {!!str horizontalBar}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}} html {HUDDLE {!!seq {{!!map {Summary {!!seq {{!!map {summary_flow {!!map {type {!!str header} title {!!str {}}}}}} {!!map {summary_flow_t {!!map {type {!!str vertical_table} auto_hide {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.name} title {!!str Design}}} {!!map {metric {!!str flow.tool_list} title {!!str Tools}}} {!!map {metric {!!str flow.template.type} title {!!str Flow}}} {!!map {metric {!!str flow.template.feature_enabled} title {!!str {Enabled features}}}} {!!map {metric {!!str flow.run_tag} title {!!str Tag}}} {!!map {metric {!!str flow.machine} title {!!str {Run host}}}} {!!map {metric {!!str flow.run_directory} title {!!str {Run directory}}}} {!!map {metric {!!str flow.last_child_snapshot} title {!!str {Last step}}}} {!!map {metric {!!str flowtool.status} title {!!str {Flowtool status}}}}}}}}}} {!!map {design_image {!!map {type {!!str image_plot} ar_metric {!!seq {{!!map {metric {!!str design.floorplan.image} title {!!str {Design Display}}}}}}}}}} {!!map {summary_qor {!!map {type {!!str header} title {!!str {Stylus QOR summary}}}}}} {!!map {summary_qor_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str timing.setup.wns} title {!!str WNS} group {!!str {Setup (all)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.setup.tns} title {!!str TNS} group {!!str {Setup (all)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.setup.feps} title {!!str FEPS} group {!!str {Setup (all)}}}} {!!map {metric {!!str timing.setup.wns.path_group:reg2reg} title {!!str WNS} group {!!str {Setup (reg2reg)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.setup.tns.path_group:reg2reg} title {!!str TNS} group {!!str {Setup (reg2reg)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.setup.feps.path_group:reg2reg} title {!!str FEPS} group {!!str {Setup (reg2reg)}}}} {!!map {metric {!!str timing.hold.wns} title {!!str WNS} group {!!str {Hold (all)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.hold.tns} title {!!str TNS} group {!!str {Hold (all)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.hold.feps} title {!!str FEPS} group {!!str {Hold (all)}}}} {!!map {metric {!!str timing.hold.wns.path_group:reg2reg} title {!!str WNS} group {!!str {Hold (reg2reg)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.hold.tns.path_group:reg2reg} title {!!str TNS} group {!!str {Hold (reg2reg)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.hold.feps.path_group:reg2reg} title {!!str FEPS} group {!!str {Hold (reg2reg)}}}} {!!map {metric {!!str timing.drv.max_tran.total} title {!!str Tran} group {!!str DRV} link_file_metric {!!str timing.drv.report_file}}} {!!map {metric {!!str timing.drv.max_cap.total} title {!!str Load} group {!!str DRV} link_file_metric {!!str timing.drv.report_file}}} {!!map {metric {!!str timing.drv.max_fanout.total} title {!!str Fanout} group {!!str DRV} link_file_metric {!!str timing.drv.report_file}}} {!!map {metric {!!str clock.instances.total} title {!!str Insts} group {!!str Clock} link_table {!!str clock_phys}}} {!!map {metric {!!str clock.area.total} title {!!str Area} group {!!str Clock} link_table {!!str clock_phys}}} {!!map {metric {!!str design.density} title {!!str Density} group {!!str Design}}} {!!map {metric {!!str design.instances.logical} title {!!str Insts} group {!!str Design} link_table {!!str physical_physical}}} {!!map {metric {!!str design.area.logical} title {!!str Area} group {!!str Design} link_table {!!str physical_physical}}} {!!map {metric {!!str power.leakage} title {!!str Leakage} group {!!str Power} link_table {!!str power_power}}} {!!map {metric {!!str route.drc} title {!!str DRC} group {!!str Route} link_table {!!str route_route}}} {!!map {metric {!!str route.wirelength} title {!!str WL} group {!!str Route} link_table {!!str route_route}}} {!!map {metric {!!str messages} title {!!str Errors} group {!!str Tool}}} {!!map {metric {!!str flow.realtime} title {!!str Wall} group {!!str Tool} link_table {!!str flow_cpu}}} {!!map {metric {!!str flow.memory} title {!!str Memory} group {!!str Tool} link_table {!!str flow_cpu}}}}}}}}} {!!map {summary_cpu {!!map {type {!!str header} title {!!str {Stylus runtime summary}}}}}} {!!map {summary_cpu_t {!!map {type {!!str cpu}}}}}}}}} {!!map {Timing {!!seq {{!!map {timing_setup {!!map {type {!!str header} title {!!str {Setup Timing}}}}}} {!!map {setup_tns_histogram {!!map {type {!!str histogram} metric {!!map {metric {!!str timing.setup.histogram} title {!!str {Setup TNS (Per Group)}}}} show_label_every {!!int 10}}}}} {!!map {setup_tns_view_histogram {!!map {type {!!str histogram} metric {!!map {metric {!!str timing.setup.histogram.views} title {!!str {Setup TNS (Per View)}}}} show_label_every {!!int 10}}}}} {!!map {timing_setup_t {!!map {type {!!str table} per_snapshot {!!true 1} key {!!map {Group {!!str timing.setup.wns.path_group:*} View {!!str timing.setup.wns.analysis_view:*}}} collapsible_key {!!true 1} ar_metric {!!seq {{!!map {metric {!!str timing.setup.type} title {!!str Type}}} {!!map {metric {!!str timing.setup.wns.path_group:%.analysis_view:%} title {!!str WNS} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.setup.tns.path_group:%.analysis_view:%} title {!!str TNS} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.setup.feps.path_group:%.analysis_view:%} title {!!str FEPS}}}}}}}}} {!!map {timing_hold {!!map {type {!!str header} title {!!str {Hold Timing}}}}}} {!!map {hold_tns_histogram {!!map {type {!!str histogram} metric {!!map {metric {!!str timing.hold.histogram} title {!!str {Hold TNS (Per Group)}}}} show_label_every {!!int 10}}}}} {!!map {hold_tns_view_histogram {!!map {type {!!str histogram} metric {!!map {metric {!!str timing.hold.histogram.views} title {!!str {Hold TNS (Per View)}}}} show_label_every {!!int 10}}}}} {!!map {timing_hold_t {!!map {type {!!str table} per_snapshot {!!true 1} key {!!map {Group {!!str timing.hold.wns.path_group:*} View {!!str timing.hold.wns.analysis_view:*}}} collapsible_key {!!true 1} ar_metric {!!seq {{!!map {metric {!!str timing.hold.type} title {!!str Type}}} {!!map {metric {!!str timing.hold.wns.path_group:%.analysis_view:%} title {!!str WNS} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.hold.tns.path_group:%.analysis_view:%} title {!!str TNS} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.hold.feps.path_group:%.analysis_view:%} title {!!str FEPS}}}}}}}}} {!!map {timing_drv {!!map {type {!!str header} title {!!str {Design Rule Violations}}}}}} {!!map {timing_drv_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str timing.drv.max_tran.total} title {!!str Total} group {!!str Tran}}} {!!map {metric {!!str timing.drv.max_tran.worst} title {!!str Worst} group {!!str Tran} link_file_metric {!!str timing.drv.report_file}}} {!!map {metric {!!str timing.drv.max_cap.total} title {!!str Total} group {!!str Cap}}} {!!map {metric {!!str timing.drv.max_cap.worst} title {!!str Worst} group {!!str Cap}}} {!!map {metric {!!str timing.drv.max_fanout.total} title {!!str Total} group {!!str Fanout}}} {!!map {metric {!!str timing.drv.max_fanout.worst} title {!!str Worst} group {!!str Fanout}}} {!!map {metric {!!str timing.drv.max_length.total} title {!!str Total} group {!!str Length}}} {!!map {metric {!!str timing.drv.max_length.worst} title {!!str Worst} group {!!str Length}}} {!!map {metric {!!str timing.si.glitches} title {!!str Glitches} group {!!str SI}}} {!!map {metric {!!str timing.si.noise} title {!!str Noise} group {!!str SI}}}}}}}}} {!!map {timing_double_clocking {!!map {type {!!str collapse_header} nested {!!map {timing_double_clocking_t {!!map {type {!!str table} per_snapshot {!!false 0} key {!!map {View {!!str timing.si.double_clocking.analysis_view:*}}} ar_metric {!!seq {{!!map {metric {!!str timing.si.double_clocking.frequency_violations.analysis_view:%} title {!!str {Frequency Violations}}}} {!!map {metric {!!str timing.si.double_clocking.report_file.analysis_view:%} title {!!str {Report File}}}}}}}}}} hidden {!!true 1} title {!!str {Double Clocking}}}}}} {!!map {timing_min_pulse_width {!!map {type {!!str collapse_header} nested {!!map {timing_min_pulse_width_t {!!map {type {!!str table} per_snapshot {!!false 0} key {!!map {View {!!str timing.min_pulse_width.endpoints.wns.analysis_view:*} Clock {!!str timing.min_pulse_width.endpoints.wns.analysis_view:%.clock:*} {View | Clock} {!!str timing.min_pulse_width.endpoints.wns.analysis_view:*.clock:*}}} collapsible_key {!!true 1} ar_metric {!!seq {{!!map {metric {!!str timing.setup.type} title {!!str Type}}} {!!map {metric {!!str timing.min_pulse_width.endpoints.wns.analysis_view:%.clock:%} group {!!str Endpoints} title {!!str WNS}}} {!!map {metric {!!str timing.min_pulse_width.endpoints.tns.analysis_view:%.clock:%} group {!!str Endpoints} title {!!str TNS}}} {!!map {metric {!!str timing.min_pulse_width.endpoints.feps.analysis_view:%.clock:%} group {!!str Endpoints} title {!!str FEPS}}} {!!map {metric {!!str timing.min_pulse_width.clocktree.wns.analysis_view:%.clock:%} group {!!str Clocktree} title {!!str WNS}}} {!!map {metric {!!str timing.min_pulse_width.clocktree.tns.analysis_view:%.clock:%} group {!!str Clocktree} title {!!str TNS}}} {!!map {metric {!!str timing.min_pulse_width.clocktree.feps.analysis_view:%.clock:%} group {!!str Clocktree} title {!!str FEPS}}}}} hide_footers {!!true 1} hide_graph_footers {!!true 1}}}}} hidden {!!true 1} title {!!str {Min Pulse Width Timing}}}}}} {!!map {timing_cpu {!!map {type {!!str header} title {!!str Runtime}}}}} {!!map {timing_cpu_t {!!map {type {!!str cpu}}}}}}}}} {!!map {Clock {!!seq {{!!map {clock_phys {!!map {type {!!str header} title {!!str Physical}}}}} {!!map {clock_phys_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.instances.total} title {!!str #Total} group {!!str Instances}}} {!!map {metric {!!str {^.*\.(?!total$)[^\.]+$}} title {!!str { }} group {!!str Instances} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.instances.buffer} title {!!str #Buffers} group {!!str Instances}}} {!!map {metric {!!str clock.instances.inverter} title {!!str #Inverters} group {!!str Instances}}} {!!map {metric {!!str clock.instances.clkgate} title {!!str {#Clock Gates}} group {!!str Instances}}} {!!map {metric {!!str clock.instances.nonicg} title {!!str {#Non Integrated}} group {!!str Instances}}} {!!map {metric {!!str clock.instances.logic} title {!!str #Logic} group {!!str Instances}}} {!!map {metric {!!str clock.area.total} title {!!str Total} group {!!str Area}}} {!!map {metric {!!str {^.*\.(?!total$)[^\.]+$}} title {!!str { }} group {!!str Area} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.area.buffer} title {!!str Buffers} group {!!str Area}}} {!!map {metric {!!str clock.area.inverter} title {!!str Inverters} group {!!str Area}}} {!!map {metric {!!str clock.area.clkgate} title {!!str {Clock Gates}} group {!!str Area}}} {!!map {metric {!!str clock.area.nonicg} title {!!str {Non Integrated}} group {!!str Area}}} {!!map {metric {!!str clock.area.logic} title {!!str Logic} group {!!str Area}}} {!!map {metric {!!str clock.nets.length.total} title {!!str {Tot Clk Net Length}} group {!!str Nets}}}}}}}}} {!!map {clock_phys_detail {!!map {type {!!str header} title {!!str {}}}}}} {!!map {clock_phys_cell_insts {!!map {type {!!str collapse_header} nested {!!map {clock_phys_cell_insts_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.instances.total} title {!!str #Total}}} {!!map {title {!!str { }} group {!!str #Buffers} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.instances_distribution.buffer.base_cell:*} group {!!str #Buffers}}} {!!map {title {!!str { }} group {!!str #Inverters} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.instances_distribution.inverter.base_cell:*} group {!!str #Inverters}}} {!!map {title {!!str { }} group {!!str {#Clock Gates}} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.instances_distribution.clkgate.base_cell:*} group {!!str {#Clock Gates}}}} {!!map {title {!!str { }} group {!!str {#Non Integrated}} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.instances_distribution.nonicg.base_cell:*} group {!!str {#Non Integrated}}}} {!!map {title {!!str { }} group {!!str #Logic} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.instances_distribution.logic.base_cell:*} group {!!str #Logic}}}}}}}}} hidden {!!true 1} title {!!str {Per Cell Instances}}}}}} {!!map {clock_phys_cell_area {!!map {type {!!str collapse_header} nested {!!map {clock_phys_cell_area_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.area.total} title {!!str Total}}} {!!map {title {!!str { }} group {!!str Buffers} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.area_distribution.buffer.base_cell:*} group {!!str Buffers}}} {!!map {title {!!str { }} group {!!str Inverters} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.area_distribution.inverter.base_cell:*} group {!!str Inverters}}} {!!map {title {!!str { }} group {!!str {Clock Gates}} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.area_distribution.clkgate.base_cell:*} group {!!str {Clock Gates}}}} {!!map {title {!!str { }} group {!!str {Non Integrated}} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.area_distribution.nonicg.base_cell:*} group {!!str {Non Integrated}}}} {!!map {title {!!str { }} group {!!str Logic} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.area_distribution.logic.base_cell:*} group {!!str Logic}}}}}}}}} hidden {!!true 1} title {!!str {Per Cell Area}}}}}} {!!map {clock_phys_creator {!!map {type {!!str collapse_header} nested {!!map {clock_phys_creator_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {title {!!str { }} group {!!str Buffers} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.instances.buffer.creator.*} group {!!str Buffers}}} {!!map {title {!!str { }} group {!!str Inverters} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.instances.inverter.creator.*} group {!!str Inverters}}}}}}}}} hidden {!!true 1} title {!!str {Cell Creators}}}}}} {!!map {clock_phys_nets {!!map {type {!!str collapse_header} nested {!!map {clock_phys_nets_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.nets.length.total} title {!!str Total} group {!!str Nets}}} {!!map {metric {!!str {^.*\.(?!total$)[^\.]+$}} title {!!str { }} group {!!str Nets} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.nets.length.top} title {!!str Top} group {!!str Nets}}} {!!map {metric {!!str clock.nets.length.trunk} title {!!str Trunk} group {!!str Nets}}} {!!map {metric {!!str clock.nets.length.leaf} title {!!str Leaf} group {!!str Nets}}}}}}}}} hidden {!!true 1} title {!!str Nets}}}}} {!!map {clock_phys_cap {!!map {type {!!str header} title {!!str {}}}}}} {!!map {clock_phys_cap_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {title {!!str { }} group {!!str Wire} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.capacitance.wire.top} title {!!str Top} group {!!str Wire}}} {!!map {metric {!!str clock.capacitance.wire.trunk} title {!!str Trunk} group {!!str Wire}}} {!!map {metric {!!str clock.capacitance.wire.leaf} title {!!str Leaf} group {!!str Wire}}} {!!map {title {!!str { }} group {!!str Gate} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.capacitance.gate.top} title {!!str Top} group {!!str Gate}}} {!!map {metric {!!str clock.capacitance.gate.trunk} title {!!str Trunk} group {!!str Gate}}} {!!map {metric {!!str clock.capacitance.gate.leaf} title {!!str Leaf} group {!!str Gate}}} {!!map {title {!!str { }} group {!!str Total} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.capacitance.total.top} title {!!str Top} group {!!str Total}}} {!!map {metric {!!str clock.capacitance.total.trunk} title {!!str Trunk} group {!!str Total}}} {!!map {metric {!!str clock.capacitance.total.leaf} title {!!str Leaf} group {!!str Total}}} {!!map {metric {!!str clock.capacitance.sink.*} group {!!str Sink}}}}}}}}} {!!map {clock_phys_advanced {!!map {type {!!str header} title {!!str {}}}}}} {!!map {clock_phys_buffer_constraint {!!map {type {!!str collapse_header} nested {!!map {clock_phys_buffer_constraint_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.buffer_depth_constraint.skew_group:*.*}}}}}}}}} hidden {!!true 1} title {!!str {Buffer Depth Constraints}}}}}} {!!map {clock_phys_stage_constraint {!!map {type {!!str collapse_header} nested {!!map {clock_phys_stage_constraint_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.stage_depth_constraint.*}}}}}}}}} hidden {!!true 1} title {!!str {Stage Depth Constraints}}}}}} {!!map {clock_drv {!!map {type {!!str header} title {!!str DRV}}}}} {!!map {clock_drv_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str {clock.drv.nets.remaining transition.count}} title {!!str Count} group {!!str {Remaining Transition}}}} {!!map {metric {!!str {clock.drv.nets.remaining transition.max}} title {!!str Max} group {!!str {Remaining Transition}}}} {!!map {metric {!!str {clock.drv.nets.unfixable transition.count}} title {!!str Count} group {!!str {Unfixable Transition}}}} {!!map {metric {!!str {clock.drv.nets.unfixable transition.max}} title {!!str Max} group {!!str {Unfixable Transition}}}} {!!map {metric {!!str clock.drv.nets.capacitance.count} title {!!str Count} group {!!str Capacitance}}} {!!map {metric {!!str clock.drv.nets.capacitance.max} title {!!str Max} group {!!str Capacitance}}} {!!map {metric {!!str clock.drv.nets.resistance.count} title {!!str Count} group {!!str Resistance}}} {!!map {metric {!!str clock.drv.nets.resistance.max} title {!!str Max} group {!!str Resistance}}} {!!map {metric {!!str clock.drv.nets.length.count} title {!!str Count} group {!!str Length}}} {!!map {metric {!!str clock.drv.nets.length.max} title {!!str Max} group {!!str Length}}} {!!map {metric {!!str clock.drv.nets.fanout.count} title {!!str Count} group {!!str Fanout}}} {!!map {metric {!!str clock.drv.nets.fanout.max} title {!!str Max} group {!!str Fanout}}}}}}}}} {!!map {clock_drv_advanced {!!map {type {!!str header} title {!!str {}}}}}} {!!map {clock_drv_detail {!!map {type {!!str collapse_header} nested {!!map {clock_drv_detail_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str {clock.drv.nets.remaining transition.*}} group {!!str {Remaining Transition}}}} {!!map {metric {!!str {clock.drv.nets.unfixable transition.*}} group {!!str {Unfixable Transition}}}} {!!map {metric {!!str clock.drv.nets.capacitance.*} group {!!str Capacitance}}} {!!map {metric {!!str clock.drv.nets.resistance.*} group {!!str Resistance}}} {!!map {metric {!!str clock.drv.nets.length.*} group {!!str Length}}} {!!map {metric {!!str clock.drv.nets.fanout.*} group {!!str Fanout}}}}}}}}} hidden {!!true 1} title {!!str Detail}}}}} {!!map {clock_drv_halo {!!map {type {!!str collapse_header} nested {!!map {clock_drv_halo_t {!!map {type {!!str table} auto_hide {!!true 1} key {!!map {{Clock Tree} {!!str clock.halo.clock_tree:*.count}}} ar_metric {!!seq {{!!map {metric {!!str clock.halo.clock_tree:%.count} group {!!str Count}}} {!!map {metric {!!str clock.halo.clock_tree:%.violations} group {!!str Violations}}}}}}}}} hidden {!!true 1} title {!!str {Clock Halo}}}}}} {!!map {clock_drv_tran_tar {!!map {type {!!str header} title {!!str Transition}}}}} {!!map {clock_drv_tran_tar_t {!!map {type {!!str table} auto_hide {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.transition.target.primary_half_corner.top.*} group {!!str {Top Transition Target Stats}}}} {!!map {metric {!!str clock.transition.target.primary_half_corner.trunk.*} group {!!str {Trunk Transition Target Stats}}}} {!!map {metric {!!str clock.transition.target.primary_half_corner.leaf.*} group {!!str {Leaf Transition Target Stats}}}}}}}}}} {!!map {clock_drv_tran {!!map {type {!!str header} title {!!str {}}}}}} {!!map {clock_drv_tran_tar_early {!!map {type {!!str collapse_header} nested {!!map {clock_drv_tran_tar_early_t {!!map {type {!!str table} auto_hide {!!true 1} key {!!map {{Corner | Clock Tree} {!!str clock.transition.target.delay_corner:*.early.top.clock_tree:*}}} ar_metric {!!seq {{!!map {metric {!!str clock.transition.auto_target.delay_corner:%.early.clock_tree:%} group {!!str {Auto Target}}}} {!!map {metric {!!str clock.transition.target.delay_corner:%.early.top.clock_tree:%} group {!!str Top}}} {!!map {metric {!!str clock.transition.target.delay_corner:%.early.trunk.clock_tree:%} group {!!str Trunk}}} {!!map {metric {!!str clock.transition.target.delay_corner:%.early.leaf.clock_tree:%} group {!!str Leaf}}}}}}}}} hidden {!!true 1} title {!!str {Per corner/clock tree transition Target (early)}}}}}} {!!map {clock_drv_tran_tar_late {!!map {type {!!str collapse_header} nested {!!map {clock_drv_tran_tar_late_t {!!map {type {!!str table} auto_hide {!!true 1} key {!!map {{Corner | Clock Tree} {!!str clock.transition.target.delay_corner:*.late.top.clock_tree:*}}} ar_metric {!!seq {{!!map {metric {!!str clock.transition.auto_target.delay_corner:%.late.clock_tree:%} group {!!str {Auto Target}}}} {!!map {metric {!!str clock.transition.target.delay_corner:%.late.top.clock_tree:%} group {!!str Top}}} {!!map {metric {!!str clock.transition.target.delay_corner:%.late.trunk.clock_tree:%} group {!!str Trunk}}} {!!map {metric {!!str clock.transition.target.delay_corner:%.late.leaf.clock_tree:%} group {!!str Leaf}}}}}}}}} hidden {!!true 1} title {!!str {Per corner/clock tree transition Target (late)}}}}}} {!!map {clock_drv_tran_top {!!map {type {!!str collapse_header} nested {!!map {clock_drv_tran_top_t {!!map {type {!!str table} per_snapshot {!!true 1} key {!!map {Target {!!str clock.transition.primary_half_corner.top.*.max}}} ar_metric {!!seq {{!!map {metric {!!str clock.transition.primary_half_corner.top.%.*}}}}}}}}} hidden {!!true 1} title {!!str {Top Transition Distribution}}}}}} {!!map {clock_drv_tran_trunk {!!map {type {!!str collapse_header} nested {!!map {clock_drv_tran_trunk_t {!!map {type {!!str table} per_snapshot {!!true 1} key {!!map {Target {!!str clock.transition.primary_half_corner.trunk.*.max}}} ar_metric {!!seq {{!!map {metric {!!str clock.transition.primary_half_corner.trunk.%.*}}}}}}}}} hidden {!!true 1} title {!!str {Trunk Transition Distribution}}}}}} {!!map {clock_drv_tran_leaf {!!map {type {!!str collapse_header} nested {!!map {clock_drv_tran_leaf_t {!!map {type {!!str table} per_snapshot {!!true 1} key {!!map {Target {!!str clock.transition.primary_half_corner.leaf.*.max}}} ar_metric {!!seq {{!!map {metric {!!str clock.transition.primary_half_corner.leaf.%.*}}}}}}}}} hidden {!!true 1} title {!!str {Leaf Transition Distribution}}}}}} {!!map {clock_skew {!!map {type {!!str header} title {!!str Latency/Skew}}}}} {!!map {clock_skew_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.latency.primary_reporting_skew_group.primary_half_corner.*} group {!!str Latency}}} {!!map {metric {!!str clock.skew.primary_reporting_skew_group.primary_half_corner.*} group {!!str Skew}}} {!!map {metric {!!str clock.skew.primary_reporting_skew_group.primary_half_corner.skew_band.*} group {!!str {Skew Band}}}}}}}}}} {!!map {clock_skew_advanced {!!map {type {!!str header} title {!!str {}}}}}} {!!map {clock_skew_early_detail {!!map {type {!!str collapse_header} nested {!!map {clock_skew_early_detail_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} key {!!map {{Skew Group | Corner} {!!str clock.skew.skew_group:*.delay_corner:*.early.total}}} ar_metric {!!seq {{!!map {metric {!!str clock.latency.skew_group:%.delay_corner:%.early.*} group {!!str Latency}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.early.total} title {!!str Total}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.early.gate} title {!!str Gate}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.early.wire} title {!!str Wire}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.early.target} title {!!str Target}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.early.target_met} title {!!str {Target Met}}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.early.skew_band.*} group {!!str {Skew band}}}}}}}}}} hidden {!!true 1} title {!!str {Per group/corner (early)}}}}}} {!!map {clock_skew_late_detail {!!map {type {!!str collapse_header} nested {!!map {clock_skew_late_detail_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} key {!!map {{Skew Group | Corner} {!!str clock.skew.skew_group:*.delay_corner:*.late.total}}} ar_metric {!!seq {{!!map {metric {!!str clock.latency.skew_group:%.delay_corner:%.late.*} group {!!str Latency}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.late.total} title {!!str Total} group {!!str Skew}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.late.gate} title {!!str Gate} group {!!str Skew}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.late.wire} title {!!str Wire} group {!!str Skew}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.late.target} title {!!str Target} group {!!str Skew}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.late.target_met} title {!!str {Target Met}} group {!!str Skew}}} {!!map {metric {!!str clock.skew.skew_group:%.delay_corner:%.late.skew_band.*} group {!!str {Skew band}}}}}}}}}} hidden {!!true 1} title {!!str {Per group/corner (late)}}}}}} {!!map {cts_cpu {!!map {type {!!str header} title {!!str Runtime}}}}} {!!map {cts_cpu_t {!!map {type {!!str cpu}}}}}}}}} {!!map {Design {!!seq {{!!map {physical_physical {!!map {type {!!str header} title {!!str Physical}}}}} {!!map {physical_physical_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.density} title {!!str Density}}} {!!map {metric {!!str design.instances.logical} title {!!str {Logical instances}}}} {!!map {metric {!!str design.area.logical} title {!!str {Logical area}}}} {!!map {metric {!!str design.instances} title {!!str {Total instances}}}} {!!map {metric {!!str design.area} title {!!str {Total area}}}} {!!map {metric {!!str design.blockages.place.area} title {!!str {Blocked area}}}}}}}}}} {!!map {physical_physical_advanced {!!map {type {!!str header} title {!!str {}}}}}} {!!map {physical_physical_insts {!!map {type {!!str collapse_header} nested {!!map {physical_physical_insts_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {title {!!str { }} group {!!str {Standard Cell}} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str design.instances.register} title {!!str register} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.instances.icg} title {!!str icg} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.instances.latch} title {!!str latch} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.instances.buffer} title {!!str buffer} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.instances.inverter} title {!!str inverter} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.instances.combinatorial} title {!!str combo} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.instances.std_cell} title {!!str total} group {!!str {Total (SC)}}}} {!!map {metric {!!str design.instances.macro} title {!!str macro} group {!!str Other}}} {!!map {metric {!!str design.instances.physical} title {!!str physical} group {!!str Other}}} {!!map {metric {!!str design.instances.io} title {!!str io} group {!!str Other}}} {!!map {metric {!!str design.instances.blackbox} title {!!str blackbox} group {!!str Other}}} {!!map {metric {!!str design.instances.power_switch} title {!!str power_switch} group {!!str MSV}}} {!!map {metric {!!str design.instances.isolation} title {!!str isolation} group {!!str MSV}}} {!!map {metric {!!str design.instances.level_shifter} title {!!str level_shifter} group {!!str MSV}}} {!!map {metric {!!str design.instances.always_on} title {!!str always_on} group {!!str MSV}}} {!!map {metric {!!str design.instances} title {!!str total} group {!!str Total}}}}}}}}} hidden {!!true 1} title {!!str {Instances Detail}}}}}} {!!map {physical_physical_area {!!map {type {!!str collapse_header} nested {!!map {physical_physical_area_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {title {!!str { }} group {!!str {Standard Cell}} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str design.area.register} title {!!str register} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.area.icg} title {!!str icg} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.area.latch} title {!!str latch} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.area.buffer} title {!!str buffer} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.area.inverter} title {!!str inverter} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.area.combinatorial} title {!!str combo} group {!!str {Standard Cell}}}} {!!map {metric {!!str design.area.std_cell} title {!!str total} group {!!str {Total (SC)}}}} {!!map {metric {!!str design.area.macro} title {!!str macro} group {!!str Other}}} {!!map {metric {!!str design.area.physical} title {!!str physical} group {!!str Other}}} {!!map {metric {!!str design.area.io} title {!!str io} group {!!str Other}}} {!!map {metric {!!str design.area.blackbox} title {!!str blackbox} group {!!str Other}}} {!!map {metric {!!str design.area.power_switch} title {!!str power_switch} group {!!str MSV}}} {!!map {metric {!!str design.area.isolation} title {!!str isolation} group {!!str MSV}}} {!!map {metric {!!str design.area.level_shifter} title {!!str level_shifter} group {!!str MSV}}} {!!map {metric {!!str design.area.always_on} title {!!str always_on} group {!!str MSV}}} {!!map {metric {!!str design.area} title {!!str total} group {!!str Total}}}}}}}}} hidden {!!true 1} title {!!str {Area Detail}}}}}} {!!map {physical_physical_multibit {!!map {type {!!str collapse_header} nested {!!map {physical_physical_multibit_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.multibit.*} group {!!str Multibit}}}}}}}}} hidden {!!true 1} title {!!str {Multibit Detail}}}}}} {!!map {physical_physical_vth {!!map {type {!!str collapse_header} nested {!!map {physical_per_vth_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} key {!!map {Group {!!str design.instances.vth:*}}} ar_metric {!!seq {{!!map {metric {!!str design.instances.vth:%} group {!!str Instances} title {!!str Total}}} {!!map {metric {!!str design.instances.vth:%.ratio} group {!!str Instances} title {!!str Ratio}}} {!!map {metric {!!str design.area.vth:%} group {!!str Area} title {!!str Total}}} {!!map {metric {!!str design.area.vth:%.ratio} group {!!str Area} title {!!str Ratio}}}}}}}}} hidden {!!true 1} title {!!str {Vth Detail}}}}}} {!!map {physical_physical_hinst {!!map {type {!!str collapse_header} nested {!!map {physical_per_hinst_t {!!map {type {!!str table} auto_hide {!!true 1} key {!!map {Block {!!str design.instances.hinst:*}}} ar_metric {!!seq {{!!map {metric {!!str design.instances.hinst:%} title {!!str Instances} graph_type {!!str treemap}}} {!!map {metric {!!str design.area.hinst:%} title {!!str Area} graph_type {!!str treemap}}}}} hierarchical_separator {!!str /}}}}} hidden {!!true 1} title {!!str Per-Block}}}}} {!!map {physical_check_place {!!map {type {!!str header} title {!!str {Check Place}}}}}} {!!map {physical_check_place_t {!!map {type {!!str vertical_table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str check.place.*}}}}}}}}} {!!map {physical_cpu {!!map {type {!!str header} title {!!str Runtime}}}}} {!!map {physical_cpu_t {!!map {type {!!str cpu}}}}}}}}} {!!map {Power {!!seq {{!!map {power_power {!!map {type {!!str header} title {!!str Power}}}}} {!!map {power_power_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str power} title {!!str Total} group {!!str {Whole Design}}}} {!!map {metric {!!str {^power\..*$}} title {!!str { }} group {!!str {Whole Design}} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str power.leakage} title {!!str Leakage} group {!!str {Whole Design}}}} {!!map {metric {!!str power.internal} title {!!str Internal} group {!!str {Whole Design}}}} {!!map {metric {!!str power.switching} title {!!str Switching} group {!!str {Whole Design}}}} {!!map {metric {!!str power.clock} title {!!str {Total Clock Power}}}}}}}}}} {!!map {power_advanced {!!map {type {!!str header} title {!!str {}}}}}} {!!map {power_leakage {!!map {type {!!str collapse_header} nested {!!map {power_leakage_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str power.leakage.type:*} group {!!str {Leakage Power Breakdown}}}}}}}}}} hidden {!!true 1} title {!!str {Leakage Details}}}}}} {!!map {power_internal {!!map {type {!!str collapse_header} nested {!!map {power_internal_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str power.internal.type:*} group {!!str {Internal Power Breakdown}}}}}}}}}} hidden {!!true 1} title {!!str {Internal Details}}}}}} {!!map {power_switching {!!map {type {!!str collapse_header} nested {!!map {power_switching_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str power.switching.type:*} group {!!str {Switching Power Breakdown}}}}}}}}}} hidden {!!true 1} title {!!str {Switching Details}}}}}} {!!map {power_per_block {!!map {type {!!str collapse_header} nested {!!map {power_per_block_t {!!map {type {!!str table} auto_hide {!!true 1} key {!!map {Block {!!str power.hinst:*}}} ar_metric {!!seq {{!!map {metric {!!str power.hinst:%} title {!!str Total} graph_type {!!str treemap}}} {!!map {metric {!!str power.switching.hinst:%} title {!!str Switching} graph_type {!!str treemap}}} {!!map {metric {!!str power.leakage.hinst:%} title {!!str Leakage} graph_type {!!str treemap}}} {!!map {metric {!!str power.internal.hinst:%} title {!!str Internal} graph_type {!!str treemap}}}}} hierarchical_separator {!!str /}}}}} hidden {!!true 1} title {!!str {Per Block}}}}}} {!!map {power_cpu {!!map {type {!!str header} title {!!str Runtime}}}}} {!!map {power_cpu_t {!!map {type {!!str cpu}}}}}}}}} {!!map {Route {!!seq {{!!map {route_route {!!map {type {!!str header} title {!!str Routing}}}}} {!!map {route_image {!!map {type {!!str image_plot} ar_metric {!!seq {{!!map {metric {!!str design.floorplan.image} title {!!str {Design Display}}}} {!!map {metric {!!str design.route.drc.image} title {!!str {Route DRC}}}}}}}}}} {!!map {route_route_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str route.overflow.horizontal} title {!!str Hor} group {!!str Congestion}}} {!!map {metric {!!str route.overflow.vertical} title {!!str Ver} group {!!str Congestion}}} {!!map {metric {!!str design.congestion.hotspot.max} title {!!str Max} group {!!str Congestion}}} {!!map {metric {!!str design.congestion.hotspot.total} title {!!str Total} group {!!str Congestion}}} {!!map {metric {!!str route.map.*} group {!!str {Congestion Map}}}} {!!map {metric {!!str route.wirelength} title {!!str Wirelength}}} {!!map {metric {!!str route.via.singlecut} title {!!str Single} group {!!str Vias}}} {!!map {metric {!!str route.via.multicut} title {!!str Multi} group {!!str Vias}}} {!!map {metric {!!str route.via} title {!!str Total} group {!!str Vias}}} {!!map {metric {!!str route.shielding.*} group {!!str Shielding}}} {!!map {metric {!!str route.drc.antenna} title {!!str Antenna} group {!!str {Route DRC}}}} {!!map {metric {!!str route.drc} title {!!str Routing} group {!!str {Route DRC}}}} {!!map {metric {!!str check.drc.antenna} title {!!str Antenna} group {!!str {Check DRC}} link_file_metric {!!str check.antenna.report_file}}} {!!map {metric {!!str check.drc} title {!!str Routing} group {!!str {Check DRC}} link_file_metric {!!str check.drc.report_file}}}}}}}}} {!!map {route_advanced {!!map {type {!!str header} title {!!str {}}}}}} {!!map {route_overflow {!!map {type {!!str collapse_header} nested {!!map {route_overflow_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str route.overflow} title {!!str Total}}} {!!map {title {!!str { }} group {!!str Layer} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str route.overflow.layer:*} group {!!str Layer}}}}}}}}} hidden {!!true 1} title {!!str {Congestion Details}}}}}} {!!map {per_layer_drc {!!map {type {!!str collapse_header} nested {!!map {per_layer_drc_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} key {!!map {Tool {!!str *.drc}}} ar_metric {!!seq {{!!map {metric {!!str %.drc} title {!!str Total}}} {!!map {title {!!str { }} group {!!str Layer} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str %.drc.layer:*} group {!!str Layer}}}}} hide_footers {!!true 1} hide_graph_footers {!!true 1}}}}} hidden {!!true 1} title {!!str {Per Layer DRC}}}}}} {!!map {per_type_drc {!!map {type {!!str collapse_header} nested {!!map {per_type_drc_t {!!map {type {!!str vertical_table} auto_hide {!!true 1} key {!!map {Tool {!!str *.drc}}} ar_metric {!!seq {{!!map {metric {!!str %.drc} title {!!str Total}}} {!!map {title {!!str { }} group {!!str Type} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str %.drc.type:*} group {!!str Type}}}}} hide_footers {!!true 1} hide_graph_footers {!!true 1}}}}} hidden {!!true 1} title {!!str {Per Type DRC}}}}}} {!!map {per_layer_type {!!map {type {!!str collapse_header} nested {!!map {per_layer_type_t {!!map {type {!!str vertical_table} key {!!map {Tool {!!str *.drc} Layer {!!str route.drc.layer:*}}} ar_metric {!!seq {{!!map {metric {!!str %.drc.layer:%.type:*} group {!!str Type}}}}} hide_footers {!!true 1} hide_graph_footers {!!true 1}}}}} hidden {!!true 1} title {!!str {Per Layer & Type DRC}}}}}} {!!map {route_via {!!map {type {!!str collapse_header} nested {!!map {route_via_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str route.via.total} title {!!str Total} group {!!str Vias}}} {!!map {metric {!!str {^.*layer:.*$}} title {!!str { }} group {!!str Vias} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str route.via.layer:*} group {!!str Vias}}} {!!map {metric {!!str route.via.singlecut} title {!!str Total} group {!!str {Single Cut Vias}}}} {!!map {metric {!!str route.via.singlecut.percentage} title {!!str Percent} group {!!str {Single Cut Vias}}}} {!!map {metric {!!str {^.*layer:.*$}} title {!!str { }} group {!!str {Single Cut Vias}} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str route.via.singlecut.layer:*} group {!!str {Single Cut Vias}}}} {!!map {metric {!!str route.via.multicut} title {!!str Total} group {!!str {Multiple Cut Vias}}}} {!!map {metric {!!str route.via.multicut.percentage} title {!!str Percent} group {!!str {Multiple Cut Vias}}}} {!!map {metric {!!str {^.*layer:.*$}} title {!!str { }} group {!!str {Multiple Cut Vias}} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str route.via.multicut.layer:*} group {!!str {Multiple Cut Vias}}}}}}}}}} hidden {!!true 1} title {!!str {Via Details}}}}}} {!!map {rblkg {!!map {type {!!str collapse_header} nested {!!map {rblkg_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.blockages.route.area} title {!!str Total}}} {!!map {title {!!str { }} group {!!str Layer} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str design.blockages.route.area.layer:*} group {!!str Layer}}}}}}}}} hidden {!!true 1} title {!!str {Blockage Details}}}}}} {!!map {route_cpu {!!map {type {!!str header} title {!!str Runtime}}}}} {!!map {route_cpu_t {!!map {type {!!str cpu}}}}}}}}} {!!map {Flow {!!seq {{!!map {flow_log_flow {!!map {type {!!str header} title {!!str {Log and Flow Info}}}}}} {!!map {flow_log_flow_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str flow.user} title {!!str User}}} {!!map {metric {!!str flow.log} title {!!str {Log File}} link_file_metric {!!str flow.log}}} {!!map {metric {!!str flow.run_directory} title {!!str {Run Dir}}}} {!!map {metric {!!str flow.run_tag} title {!!str {Run Tag}}}} {!!map {metric {!!str flow.step.tcl} title {!!str {Step TCL}}}}}} hide_footers {!!true 1} hide_graph_footers {!!true 1}}}}} {!!map {flow_config {!!map {type {!!str header} title {!!str {Non-Default Root Config Options}}}}}} {!!map {flow_config_t {!!map {type {!!str dict_table} metric {!!map {metric {!!str flow.root_config}}}}}}} {!!map {flow_cpu {!!map {type {!!str header} title {!!str Runtime}}}}} {!!map {flow_machine_t {!!map {type {!!str vertical_table} hide_footers {!!true 1} hide_graph_footers {!!true 1} ar_metric {!!seq {{!!map {metric {!!str flow.machine.hostname} title {!!str Host}}} {!!map {metric {!!str flow.machine.cpu.model} title {!!str Model}}} {!!map {metric {!!str flow.machine.cpu.frequency} title {!!str Cpu}}} {!!map {metric {!!str flow.machine.cpu.number} title {!!str Cpus}}} {!!map {metric {!!str flow.machine.os} title {!!str OS}}} {!!map {metric {!!str flow.machine.memory.free} title {!!str Free} group {!!str Memory}}} {!!map {metric {!!str flow.machine.memory.total} title {!!str Total} group {!!str Memory}}} {!!map {metric {!!str flow.machine.swap.free} title {!!str Free} group {!!str Swap}}} {!!map {metric {!!str flow.machine.swap.total} title {!!str Total} group {!!str Swap}}}}}}}}} {!!map {flow_runtime_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str flow.cputime} title {!!str CPU} group {!!str Runtime}}} {!!map {metric {!!str flow.cputime.total} title {!!str {Total CPU}} group {!!str Runtime}}} {!!map {metric {!!str flow.realtime} title {!!str Wall} group {!!str Runtime}}} {!!map {metric {!!str flow.realtime.total} title {!!str {Total Wall}} group {!!str Runtime}}} {!!map {metric {!!str flow.machine.load} title {!!str Load} group {!!str Machine}}} {!!map {metric {!!str flow.memory} title {!!str Resi+Virtual} group {!!str Memory}}} {!!map {metric {!!str flow.memory.resident} title {!!str Resi} group {!!str Memory}}} {!!map {metric {!!str flow.memory.resident.peak} title {!!str {Peak Resi}} group {!!str Memory}}}}}}}}} {!!map {flow_cpu_t {!!map {type {!!str cpu}}}}}}}}}}}} excel {HUDDLE {!!seq {{!!map {Summary {!!seq {{!!map {summary_flow {!!map {type {!!str header} title {!!str {}}}}}} {!!map {summary_flow_t {!!map {type {!!str vertical_table} auto_hide {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.name} title {!!str Design}}} {!!map {metric {!!str flow.tool_list} title {!!str Tools}}} {!!map {metric {!!str flow.template.type} title {!!str Flow}}} {!!map {metric {!!str flow.template.feature_enabled} title {!!str {Enabled features}}}} {!!map {metric {!!str flow.run_tag} title {!!str Tag}}} {!!map {metric {!!str flow.machine} title {!!str {Run host}}}} {!!map {metric {!!str flow.run_directory} title {!!str {Run directory}}}} {!!map {metric {!!str flow.last_child_snapshot} title {!!str {Last step}}}}}}}}}} {!!map {summary_qor {!!map {type {!!str header} title {!!str {Stylus QOR summary}}}}}} {!!map {summary_qor_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str timing.setup.wns} title {!!str WNS} group {!!str {Setup (all)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.setup.tns} title {!!str TNS} group {!!str {Setup (all)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.setup.feps} title {!!str FEPS} group {!!str {Setup (all)}}}} {!!map {metric {!!str timing.setup.wns.path_group:reg2reg} title {!!str WNS} group {!!str {Setup (reg2reg)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.setup.tns.path_group:reg2reg} title {!!str TNS} group {!!str {Setup (reg2reg)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.setup.feps.path_group:reg2reg} title {!!str FEPS} group {!!str {Setup (reg2reg)}}}} {!!map {metric {!!str timing.hold.wns} title {!!str WNS} group {!!str {Hold (all)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.hold.tns} title {!!str TNS} group {!!str {Hold (all)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.hold.feps} title {!!str FEPS} group {!!str {Hold (all)}}}} {!!map {metric {!!str timing.hold.wns.path_group:reg2reg} title {!!str WNS} group {!!str {Hold (reg2reg)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.hold.tns.path_group:reg2reg} title {!!str TNS} group {!!str {Hold (reg2reg)}} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.hold.feps.path_group:reg2reg} title {!!str FEPS} group {!!str {Hold (reg2reg)}}}} {!!map {metric {!!str timing.drv.max_tran.total} title {!!str Tran} group {!!str DRV} link_file_metric {!!str timing.drv.report_file}}} {!!map {metric {!!str timing.drv.max_cap.total} title {!!str Load} group {!!str DRV} link_file_metric {!!str timing.drv.report_file}}} {!!map {metric {!!str timing.drv.max_fanout.total} title {!!str Fanout} group {!!str DRV} link_file_metric {!!str timing.drv.report_file}}} {!!map {metric {!!str clock.instances.total} title {!!str Insts} group {!!str Clock} link_table {!!str clock_phys}}} {!!map {metric {!!str clock.area.total} title {!!str Area} group {!!str Clock} link_table {!!str clock_phys}}} {!!map {metric {!!str design.density} title {!!str Density} group {!!str Design}}} {!!map {metric {!!str design.instances.logical} title {!!str Insts} group {!!str Design} link_table {!!str physical_physical}}} {!!map {metric {!!str design.area.logical} title {!!str Area} group {!!str Design} link_table {!!str physical_physical}}} {!!map {metric {!!str power.leakage} title {!!str Leakage} group {!!str Power} link_table {!!str power_power}}} {!!map {metric {!!str route.drc} title {!!str DRC} group {!!str Route} link_table {!!str route_route}}} {!!map {metric {!!str route.wirelength} title {!!str WL} group {!!str Route} link_table {!!str route_route}}} {!!map {metric {!!str messages} title {!!str Errors} group {!!str Tool}}} {!!map {metric {!!str flow.realtime} title {!!str Wall} group {!!str Tool} link_table {!!str flow_cpu}}} {!!map {metric {!!str flow.memory} title {!!str Memory} group {!!str Tool} link_table {!!str flow_cpu}}}}}}}}}}}}} {!!map {Timing {!!seq {{!!map {timing_setup {!!map {type {!!str header} title {!!str {Setup Timing}}}}}} {!!map {timing_setup_t {!!map {type {!!str table} per_snapshot {!!true 1} key {!!map {Group {!!str timing.setup.wns.path_group:*} View {!!str timing.setup.wns.analysis_view:*}}} collapsible_key {!!true 1} ar_metric {!!seq {{!!map {metric {!!str timing.setup.wns.path_group:%.analysis_view:%} title {!!str WNS} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.setup.tns.path_group:%.analysis_view:%} title {!!str TNS} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.setup.feps.path_group:%.analysis_view:%} title {!!str FEPS}}}}}}}}} {!!map {timing_hold {!!map {type {!!str header} title {!!str {Hold Timing}}}}}} {!!map {timing_hold_t {!!map {type {!!str table} per_snapshot {!!true 1} key {!!map {Group {!!str timing.hold.wns.path_group:*} View {!!str timing.hold.wns.analysis_view:*}}} collapsible_key {!!true 1} ar_metric {!!seq {{!!map {metric {!!str timing.hold.wns.path_group:%.analysis_view:%} title {!!str WNS} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.hold.tns.path_group:%.analysis_view:%} title {!!str TNS} navigation {!!map {view {!!str default_timing} tab {!!str Timing}}}}} {!!map {metric {!!str timing.hold.feps.path_group:%.analysis_view:%} title {!!str FEPS}}}}}}}}} {!!map {timing_drv {!!map {type {!!str header} title {!!str {Design Rule Violations}}}}}} {!!map {timing_drv_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str timing.drv.max_tran.total} title {!!str Total} group {!!str Tran}}} {!!map {metric {!!str timing.drv.max_tran.worst} title {!!str Worst} group {!!str Tran} link_file_metric {!!str timing.drv.report_file}}} {!!map {metric {!!str timing.drv.max_cap.total} title {!!str Total} group {!!str Cap}}} {!!map {metric {!!str timing.drv.max_cap.worst} title {!!str Worst} group {!!str Cap}}} {!!map {metric {!!str timing.drv.max_fanout.total} title {!!str Total} group {!!str Fanout}}} {!!map {metric {!!str timing.drv.max_fanout.worst} title {!!str Worst} group {!!str Fanout}}} {!!map {metric {!!str timing.drv.max_length.total} title {!!str Total} group {!!str Length}}} {!!map {metric {!!str timing.drv.max_length.worst} title {!!str Worst} group {!!str Length}}} {!!map {metric {!!str timing.si.glitches} title {!!str Glitches} group {!!str SI}}} {!!map {metric {!!str timing.si.noise} title {!!str Noise} group {!!str SI}}}}}}}}}}}}} {!!map {Clock {!!seq {{!!map {clock_phys {!!map {type {!!str header} title {!!str Physical}}}}} {!!map {clock_phys_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.instances.total} title {!!str #Total} group {!!str Instances}}} {!!map {metric {!!str {^.*\.(?!total$)[^\.]+$}} title {!!str { }} group {!!str Instances} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.instances.buffer} title {!!str #Buffers} group {!!str Instances}}} {!!map {metric {!!str clock.instances.inverter} title {!!str #Inverters} group {!!str Instances}}} {!!map {metric {!!str clock.instances.clkgate} title {!!str {#Clock Gates}} group {!!str Instances}}} {!!map {metric {!!str clock.instances.nonicg} title {!!str {#Non Integrated}} group {!!str Instances}}} {!!map {metric {!!str clock.instances.logic} title {!!str #Logic} group {!!str Instances}}} {!!map {metric {!!str clock.area.total} title {!!str Total} group {!!str Area}}} {!!map {metric {!!str {^.*\.(?!total$)[^\.]+$}} title {!!str { }} group {!!str Area} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.area.buffer} title {!!str Buffers} group {!!str Area}}} {!!map {metric {!!str clock.area.inverter} title {!!str Inverters} group {!!str Area}}} {!!map {metric {!!str clock.area.clkgate} title {!!str {Clock Gates}} group {!!str Area}}} {!!map {metric {!!str clock.area.nonicg} title {!!str {Non Integrated}} group {!!str Area}}} {!!map {metric {!!str clock.area.logic} title {!!str Logic} group {!!str Area}}} {!!map {metric {!!str clock.nets.length.total} title {!!str {Tot Clk Net Length}} group {!!str Nets}}}}}}}}} {!!map {clock_phys_cap {!!map {type {!!str header} title {!!str {}}}}}} {!!map {clock_phys_cap_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {title {!!str { }} group {!!str Wire} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.capacitance.wire.top} title {!!str Top} group {!!str Wire}}} {!!map {metric {!!str clock.capacitance.wire.trunk} title {!!str Trunk} group {!!str Wire}}} {!!map {metric {!!str clock.capacitance.wire.leaf} title {!!str Leaf} group {!!str Wire}}} {!!map {title {!!str { }} group {!!str Gate} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.capacitance.gate.top} title {!!str Top} group {!!str Gate}}} {!!map {metric {!!str clock.capacitance.gate.trunk} title {!!str Trunk} group {!!str Gate}}} {!!map {metric {!!str clock.capacitance.gate.leaf} title {!!str Leaf} group {!!str Gate}}} {!!map {title {!!str { }} group {!!str Total} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str clock.capacitance.total.top} title {!!str Top} group {!!str Total}}} {!!map {metric {!!str clock.capacitance.total.trunk} title {!!str Trunk} group {!!str Total}}} {!!map {metric {!!str clock.capacitance.total.leaf} title {!!str Leaf} group {!!str Total}}} {!!map {metric {!!str clock.capacitance.sink.*} group {!!str Sink}}}}}}}}} {!!map {clock_drv {!!map {type {!!str header} title {!!str DRV}}}}} {!!map {clock_drv_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str {clock.drv.nets.remaining transition.count}} title {!!str Count} group {!!str {Remaining Transition}}}} {!!map {metric {!!str {clock.drv.nets.remaining transition.max}} title {!!str Max} group {!!str {Remaining Transition}}}} {!!map {metric {!!str {clock.drv.nets.unfixable transition.count}} title {!!str Count} group {!!str {Unfixable Transition}}}} {!!map {metric {!!str {clock.drv.nets.unfixable transition.max}} title {!!str Max} group {!!str {Unfixable Transition}}}} {!!map {metric {!!str clock.drv.nets.capacitance.count} title {!!str Count} group {!!str Capacitance}}} {!!map {metric {!!str clock.drv.nets.capacitance.max} title {!!str Max} group {!!str Capacitance}}} {!!map {metric {!!str clock.drv.nets.resistance.count} title {!!str Count} group {!!str Resistance}}} {!!map {metric {!!str clock.drv.nets.resistance.max} title {!!str Max} group {!!str Resistance}}} {!!map {metric {!!str clock.drv.nets.length.count} title {!!str Count} group {!!str Length}}} {!!map {metric {!!str clock.drv.nets.length.max} title {!!str Max} group {!!str Length}}} {!!map {metric {!!str clock.drv.nets.fanout.count} title {!!str Count} group {!!str Fanout}}} {!!map {metric {!!str clock.drv.nets.fanout.max} title {!!str Max} group {!!str Fanout}}}}}}}}} {!!map {clock_drv_tran_tar {!!map {type {!!str header} title {!!str Transition}}}}} {!!map {clock_drv_tran_tar_t {!!map {type {!!str table} auto_hide {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.transition.target.primary_half_corner.top.*} group {!!str {Top Transition Target Stats}}}} {!!map {metric {!!str clock.transition.target.primary_half_corner.trunk.*} group {!!str {Trunk Transition Target Stats}}}} {!!map {metric {!!str clock.transition.target.primary_half_corner.leaf.*} group {!!str {Leaf Transition Target Stats}}}}}}}}}} {!!map {clock_skew {!!map {type {!!str header} title {!!str Latency/Skew}}}}} {!!map {clock_skew_t {!!map {type {!!str table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str clock.latency.primary_reporting_skew_group.primary_half_corner.*} group {!!str Latency}}} {!!map {metric {!!str clock.skew.primary_reporting_skew_group.primary_half_corner.*} group {!!str Skew}}} {!!map {metric {!!str clock.skew.primary_reporting_skew_group.primary_half_corner.skew_band.*} group {!!str {Skew Band}}}}}}}}}}}}}} {!!map {Design {!!seq {{!!map {physical_physical {!!map {type {!!str header} title {!!str Physical}}}}} {!!map {physical_physical_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str design.density} title {!!str Density}}} {!!map {metric {!!str design.instances.logical} title {!!str {Logical instances}}}} {!!map {metric {!!str design.area.logical} title {!!str {Logical area}}}} {!!map {metric {!!str design.instances} title {!!str {Total instances}}}} {!!map {metric {!!str design.area} title {!!str {Total area}}}} {!!map {metric {!!str design.blockages.place.area} title {!!str {Blocked area}}}}}}}}}} {!!map {physical_check_place {!!map {type {!!str header} title {!!str {Check Place}}}}}} {!!map {physical_check_place_t {!!map {type {!!str vertical_table} auto_hide {!!true 1} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str check.place.*}}}}}}}}}}}}} {!!map {Power {!!seq {{!!map {power_power {!!map {type {!!str header} title {!!str Power}}}}} {!!map {power_power_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str power} title {!!str Total} group {!!str {Whole Design}}}} {!!map {metric {!!str {^power\..*$}} title {!!str { }} group {!!str {Whole Design}} graph_type {!!str none} renderer {!!str histogram}}} {!!map {metric {!!str power.leakage} title {!!str Leakage} group {!!str {Whole Design}}}} {!!map {metric {!!str power.internal} title {!!str Internal} group {!!str {Whole Design}}}} {!!map {metric {!!str power.switching} title {!!str Switching} group {!!str {Whole Design}}}} {!!map {metric {!!str power.clock} title {!!str {Total Clock Power}}}}}}}}}}}}}} {!!map {Route {!!seq {{!!map {route_route {!!map {type {!!str header} title {!!str Routing}}}}} {!!map {route_route_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str route.overflow.horizontal} title {!!str Hor} group {!!str Congestion}}} {!!map {metric {!!str route.overflow.vertical} title {!!str Ver} group {!!str Congestion}}} {!!map {metric {!!str design.congestion.hotspot.max} title {!!str Max} group {!!str Congestion}}} {!!map {metric {!!str design.congestion.hotspot.total} title {!!str Total} group {!!str Congestion}}} {!!map {metric {!!str route.map.*} group {!!str {Congestion Map}}}} {!!map {metric {!!str route.wirelength} title {!!str Wirelength}}} {!!map {metric {!!str route.via.singlecut} title {!!str Single} group {!!str Vias}}} {!!map {metric {!!str route.via.multicut} title {!!str Multi} group {!!str Vias}}} {!!map {metric {!!str route.via} title {!!str Total} group {!!str Vias}}} {!!map {metric {!!str route.drc.antenna} title {!!str Antenna} group {!!str {Route DRC}}}} {!!map {metric {!!str route.drc} title {!!str Total} group {!!str {Route DRC}}}} {!!map {metric {!!str route.shielding.*} group {!!str {Shielding Nets}}}} {!!map {metric {!!str check.drc.antenna} title {!!str Antenna} group {!!str {Check DRC}} link_file_metric {!!str check.antenna.report_file}}} {!!map {metric {!!str check.drc} title {!!str Total} group {!!str {Check DRC}} link_file_metric {!!str check.drc.report_file}}}}}}}}}}}}} {!!map {Flow {!!seq {{!!map {flow_log_flow {!!map {type {!!str header} title {!!str {Log and Flow Info}}}}}} {!!map {flow_log_flow_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str flow.user} title {!!str User}}} {!!map {metric {!!str flow.log} title {!!str {Log File}} link_file_metric {!!str flow.log}}} {!!map {metric {!!str flow.run_directory} title {!!str {Run Dir}}}} {!!map {metric {!!str flow.run_tag} title {!!str {Run Tag}}}} {!!map {metric {!!str flow.step.tcl} title {!!str {Step TCL}}}}}} hide_footers {!!true 1} hide_graph_footers {!!true 1}}}}} {!!map {flow_cpu {!!map {type {!!str header} title {!!str Runtime}}}}} {!!map {flow_machine_t {!!map {type {!!str vertical_table} hide_footers {!!true 1} hide_graph_footers {!!true 1} ar_metric {!!seq {{!!map {metric {!!str flow.machine.hostname} title {!!str Host}}} {!!map {metric {!!str flow.machine.cpu.model} title {!!str Model}}} {!!map {metric {!!str flow.machine.cpu.frequency} title {!!str Cpu}}} {!!map {metric {!!str flow.machine.cpu.number} title {!!str Cpus}}} {!!map {metric {!!str flow.machine.os} title {!!str OS}}} {!!map {metric {!!str flow.machine.memory.free} title {!!str Free} group {!!str Memory}}} {!!map {metric {!!str flow.machine.memory.total} title {!!str Total} group {!!str Memory}}} {!!map {metric {!!str flow.machine.swap.free} title {!!str Free} group {!!str Swap}}} {!!map {metric {!!str flow.machine.swap.total} title {!!str Total} group {!!str Swap}}}}}}}}} {!!map {flow_runtime_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str flow.cputime} title {!!str CPU} group {!!str Runtime}}} {!!map {metric {!!str flow.cputime.total} title {!!str {Total CPU}} group {!!str Runtime}}} {!!map {metric {!!str flow.realtime} title {!!str Wall} group {!!str Runtime}}} {!!map {metric {!!str flow.realtime.total} title {!!str {Total Wall}} group {!!str Runtime}}} {!!map {metric {!!str flow.memory} title {!!str Resi+Virtual} group {!!str Memory}}} {!!map {metric {!!str flow.memory.resident} title {!!str Resident} group {!!str Memory}}} {!!map {metric {!!str flow.memory.resident.peak} title {!!str {Peak Resident}} group {!!str Memory}}}}}}}}}}}}}}}} text {HUDDLE {!!seq {{!!map {{} {!!seq {{!!map {summary_qor_t {!!map {type {!!str table} per_snapshot {!!true 1} ar_metric {!!seq {{!!map {metric {!!str timing.setup.wns} title {!!str WNS}}} {!!map {metric {!!str timing.setup.tns} title {!!str TNS}}} {!!map {metric {!!str timing.setup.feps} title {!!str FEPS}}} {!!map {metric {!!str timing.setup.wns.path_group:reg2reg} title {!!str WNS_R2R}}} {!!map {metric {!!str timing.setup.tns.path_group:reg2reg} title {!!str TNS_R2R}}} {!!map {metric {!!str timing.setup.feps.path_group:reg2reg} title {!!str FEPS_R2R}}} {!!map {metric {!!str timing.drv.max_tran.total} title {!!str Tran} group {!!str DRV(T)}}} {!!map {metric {!!str timing.drv.max_cap.total} title {!!str Load} group {!!str DRV(C)}}} {!!map {metric {!!str power.leakage} title {!!str Leakage} group {!!str POWER(L)}}} {!!map {metric {!!str design.density} title {!!str Density} group {!!str UTIL}}} {!!map {metric {!!str design.instances.logical} title {!!str INSTS}}} {!!map {metric {!!str design.area.logical} title {!!str AREA}}} {!!map {metric {!!str route.drc} title {!!str DRC}}} {!!map {metric {!!str flow.realtime} title {!!str WALL}}}}}}}}}}}}}}}}}
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
set pegEnableDualViewForTQuantus 1
set ptngPAMaxRouteLayer 5
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set report_inactive_arcs_format {from to when arc_type sense reason}
set soceUseIdealDelayForClkInAllMode 1
set spgEnableMacroLayerMaskShift 1
set spgLimitedSearchRadius 1
set spgUnflattenIlmInCheckPlace 2
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set timing_enable_latch_borrow_mode_for_si_snalysis 1
set timing_library_ca_derate_data_consistency 0
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set timing_remove_data_path_pessimism_min_slack_threshold -1.70141e+38
set trgGlbOverflowPctH 0.441064
set trgGlbOverflowPctV 0.219207
set defStreamOutCheckUncolored false
set init_lef_check_antenna 1
set init_verilog_tolerate_port_mismatch 0
set lefdefInputCheckColoredShape 0
set load_netlist_ignore_undefined_cell 1
init_design
floorPlan -coreMarginsBy io -r 1.00 0.71 40 40 40 40
loadIoFile Multi_Row_IO_PAD.io
floorPlan -coreMarginsBy io -r 1.00 0.71 40 40 40 40
loadIoFile Multi_Row_IO_PAD.io
floorPlan -coreMarginsBy io -r 1.00 0.71 40 40 40 40
loadIoFile Multi_Row_IO_PAD.io
floorPlan -coreMarginsBy io -r 1.00 0.71 40 40 40 40
floorPlan -coreMarginsBy io -r 1.00 0.71 40 40 40 40
loadIoFile Multi_Row_IO_PAD.io
floorPlan -coreMarginsBy io -r 1.00 0.71 40 40 40 40
loadIoFile Multi_Row_IO_PAD.io
floorPlan -coreMarginsBy io -r 1.00 0.71 40 40 40 40
loadIoFile Multi_Row_IO_PAD.io
floorPlan -coreMarginsBy io -r 1.00 0.71 40 40 40 40
checkDesign -floorplan
setDesignMode -process 130
globalNetConnect P_CORE -type pgpin -pin vdd -override -verbose -netlistOverride
globalNetConnect G_CORE -type pgpin -pin gnd -override -verbose -netlistOverride
globalNetConnect AMUXBUS_A -type pgpin -pin AMUXBUS_A -override -verbose -netlistOverride
globalNetConnect AMUXBUS_B -type pgpin -pin AMUXBUS_B -override -verbose -netlistOverride
globalNetConnect VSSA -type pgpin -pin VSSA -override -verbose -netlistOverride
globalNetConnect VDDA -type pgpin -pin VDDA -override -verbose -netlistOverride
globalNetConnect VSWITCH -type pgpin -pin VSWITCH -override -verbose -netlistOverride
globalNetConnect VDDIO_Q -type pgpin -pin VDDIO_Q -override -verbose -netlistOverride
globalNetConnect VCCHIB -type pgpin -pin VCCHIB -override -verbose -netlistOverride
globalNetConnect VDDIO -type pgpin -pin VDDIO -override -verbose -netlistOverride
globalNetConnect VCCD -type pgpin -pin VCCD -override -verbose -netlistOverride
globalNetConnect VSSIO -type pgpin -pin VSSIO -override -verbose -netlistOverride
globalNetConnect VSSD -type pgpin -pin VSSD -override -verbose -netlistOverride
globalNetConnect VSSIO_Q -type pgpin -pin VSSIO_Q -override -verbose -netlistOverride
globalNetConnect P_CORE -type pgpin -pin P_CORE -override -verbose -netlistOverride
globalNetConnect G_CORE -type pgpin -pin G_CORE -override -verbose -netlistOverride
addRing -nets {P_CORE G_CORE} -type core_rings -follow core -layer {top met5 bottom met5 left met4 right met4} -width {top 4 bottom 4 left 4 right 4} -spacing {top 4 bottom 4 left 4 right 4} -offset {top 10 bottom 10 left 10 right 10} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
sroute -connect { corePin floatingStripe } -layerChangeRange { met1(1) met5(5) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { met1(1) met5(5) } -nets { P_CORE G_CORE } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { met1(1) met5(5) }
sroute -connect { padRing } -layerChangeRange { met1(1) met5(5) } -blockPinTarget { nearestTarget } -allowJogging 1 -crossoverViaLayerRange { met1(1) met5(5) } -nets { AMUXBUS_A AMUXBUS_B VCCD VCCHIB VDDA VDDIO VDDIO_Q VSSA VSSD VSSIO VSSIO_Q VSWITCH } -allowLayerChange 1 -targetViaLayerRange { met1(1) met5(5) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { padPin } -layerChangeRange { met1(1) met5(5) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -allowJogging 1 -crossoverViaLayerRange { met1(1) met5(5) } -nets { G_CORE P_CORE } -allowLayerChange 1 -targetViaLayerRange { met1(1) met5(5) }
addStripe -nets {P_CORE G_CORE} -layer met4 -direction vertical -width 5 -spacing 5 -set_to_set_distance 120 -start_from left -start_offset 110 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit met5 -padcore_ring_bottom_layer_limit met1 -block_ring_top_layer_limit met5 -block_ring_bottom_layer_limit met1 -use_wire_group 0 -snap_wire_center_to_grid None
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 0 -ignoreSpare 0 -placeIOPins 0 -moduleAwareSpare 0 -maxRouteLayer 5 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setMultiCpuUsage -localCpu 8 -cpuPerRemoteHost 1 -remoteHost 0 -keepLicense true
setPlaceMode -fp false
place_design
timeDesign -preCTS
optDesign -preCTS
set_ccopt_property buffer_cells {sky130_osu_sc_18T_hs__buf_1 sky130_osu_sc_18T_hs__buf_2 sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_6 sky130_osu_sc_18T_hs__buf_8 sky130_osu_sc_18T_hs__buf_l}
create_ccopt_clock_tree_spec
ccopt_design
optDesign -postCTS
setNanoRouteMode -quiet -drouteFixAntenna 1
setNanoRouteMode -quiet -routeInsertAntennaDiode 0
setNanoRouteMode -quiet -routeWithTimingDriven 0
setNanoRouteMode -quiet -routeWithEco 0
setNanoRouteMode -quiet -routeWithLithoDriven 0
setNanoRouteMode -quiet -droutePostRouteLithoRepair 0
setNanoRouteMode -quiet -routeWithSiDriven 0
setNanoRouteMode -quiet -drouteAutoStop 0
setNanoRouteMode -quiet -routeSelectedNetOnly 0
setNanoRouteMode -quiet -routeTopRoutingLayer 5
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 1
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
fit
zoomBox -22.17200 -6.97100 1610.98800 1455.05600
zoomBox 98.25500 53.55900 1486.44100 1296.28200
zoomBox 342.87300 198.38900 1195.39400 961.57700
zoomBox 493.10000 287.33300 1016.65400 756.02600
zoomBox 528.96300 308.56600 973.98400 706.95500
zoomBox 607.38100 354.99500 880.68000 599.65600
zoomBox 626.10200 366.07900 858.40600 574.04100
zoomBox 642.01400 375.50000 839.47300 552.26800
zoomBox 607.38000 354.99400 880.68000 599.65600
zoomBox 493.09600 287.33100 1016.65400 756.02700
zoomBox 401.26600 232.96100 1125.91300 881.67500
zoomBox 274.16500 157.70900 1277.13700 1055.58300
zoomBox 98.24700 53.55300 1486.44400 1296.28600
zoomBox -13.62400 -12.68200 1619.54900 1449.35600
zoomBox -145.23700 -90.60600 1776.14300 1629.43900
zoomBox 404.08400 1189.48500 1206.93700 1052.77600
zoomBox 499.58500 810.53100 1182.01000 1421.44700
zoomBox 580.76100 851.98000 1160.82200 1371.25800
zoomBox 758.26200 942.61300 1114.49200 1261.51500
zoomBox 867.27000 998.27200 1086.04000 1194.11800
fit
zoomBox -30.53200 74.31800 1149.42600 1130.63200
zoomBox 29.61800 142.09300 882.13800 905.28000
zoomBox 53.10900 168.56200 777.75100 817.27100
zoomBox 73.07600 191.06000 689.02200 742.46300
zoomBox 90.04800 210.18300 613.60200 678.87600
zoomBox 518.78000 386.28200 175.38800 415.40600
zoomBox 182.58700 304.73500 393.47300 493.52300
zoomBox 184.30600 318.48500 363.55900 478.95500
zoomBox 185.76600 330.17200 338.13200 466.57200
zoomBox 188.06400 348.55000 298.14800 447.09900
zoomBox 190.37200 367.01400 257.97800 427.53600
zoomBox 192.41300 383.36100 222.41100 410.21600
zoomBox 192.65700 385.31700 218.15600 408.14400
zoomBox 193.80000 387.23200 215.47400 406.63500
zoomBox 196.29900 391.41900 209.61000 403.33500
zoomBox 191.31000 383.06200 221.31200 409.92000
zoomBox 185.67600 373.62400 234.52900 417.35800
zoomBox 180.06800 364.22900 247.68600 424.76200
zoomBox 172.30600 351.22600 265.89600 435.00900
zoomBox 161.56200 333.22900 291.10000 449.19300
zoomBox 126.11400 273.84200 374.27000 495.99500
zoomBox 33.13600 118.07600 592.42100 618.75500
zoomBox -242.88200 -344.34200 1240.04500 983.19400
zoomBox 123.01400 26.46100 897.11200 719.44400
zoomBox 318.64000 220.47400 722.72400 582.21500
zoomBox 423.83500 322.42000 634.77000 511.25200
zoomBox 479.92000 376.28900 590.03000 474.86100
zoomBox 513.96400 406.92800 571.44300 458.38400
zoomBox 531.73400 422.99200 561.74000 449.85400
zoomBox 540.71900 431.33300 556.38400 445.35700
zoomBox 542.13200 432.66700 555.44800 444.58800
zoomBox 544.35000 434.76500 553.97100 443.37800
zoomBox 546.52700 436.95000 552.43600 442.24000
zoomBox 548.13000 438.68700 551.21600 441.45000
zoomBox 548.74600 439.49200 550.64300 441.19000
zoomBox 549.13600 439.97900 550.30200 441.02300
selectMarker 549.6500 440.6800 549.9500 440.8750 3 1 6
deselectAll
selectVia 549.6350 440.5250 549.9650 440.8950 3 pad_clk/tie_hi_esd
zoomBox 548.86900 439.76800 550.48400 441.21400
deselectAll
selectMarker 549.6500 440.6800 549.9500 440.8750 3 1 6
deselectAll
fit
zoomBox 1078.94700 1127.33000 1165.94300 1022.93500
zoomBox 1101.85200 1087.20100 1123.42500 1074.07600
zoomBox 1112.26200 1081.05600 1113.68500 1077.93100
zoomBox 1112.73600 1080.45500 1113.65300 1079.18200
fit
zoomBox 1066.51900 498.47500 1006.86500 573.04300
zoomBox 1003.15800 502.14400 1073.96000 565.52700
zoomBox 1010.05500 505.26200 1070.23700 559.13800
zoomBox 1025.13500 512.08100 1062.09500 545.16800
zoomBox 1022.03000 509.45700 1065.51200 548.38300
zoomBox 1018.37700 506.37000 1069.53200 552.16500
zoomBox 1023.25400 518.83200 1054.67000 546.95600
zoomBox 1026.42100 526.34300 1045.71500 543.61500
zoomBox 1028.67400 530.84000 1040.52400 541.44800
zoomBox 1029.54800 531.90900 1039.62000 540.92600
zoomBox 1030.34100 532.83300 1038.90300 540.49800
zoomBox 1032.07500 534.85400 1037.33400 539.56200
zoomBox 1032.83500 535.74700 1036.63500 539.14900
zoomBox 1033.38200 536.39200 1036.12800 538.85000
zoomBox 1033.59600 536.64400 1035.93000 538.73300
zoomBox 1034.06300 537.19400 1035.49700 538.47800
zoomBox 1034.47800 537.68300 1035.11400 538.25200
selectMarker 1034.6400 537.9500 1034.9600 538.0900 1 1 6
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
zoomBox 1034.52500 537.72600 1035.06600 538.21000
zoomBox 1034.56500 537.76300 1035.02500 538.17500
zoomBox 1034.59900 537.79500 1034.99000 538.14500
zoomBox 1034.62700 537.82200 1034.96000 538.12000
zoomBox 1034.65200 537.84500 1034.93500 538.09800
zoomBox 1034.69100 537.88000 1034.89600 538.06400
zoomBox 1034.70500 537.89400 1034.88000 538.05100
zoomBox 1034.71700 537.90600 1034.86700 538.04000
zoomBox 1034.72800 537.91500 1034.85600 538.03000
zoomBox 1034.73700 537.92400 1034.84600 538.02200
zoomBox 1034.70200 537.89300 1034.88000 538.05200
zoomBox 1034.59000 537.78700 1034.99400 538.14900
zoomBox 1034.40500 537.61500 1035.18200 538.31100
zoomBox 1034.16200 537.39000 1035.42900 538.52400
zoomBox 1033.92100 537.16600 1035.67500 538.73600
zoomBox 1033.58800 536.85600 1036.01600 539.03000
zoomBox 1033.37600 536.65900 1036.23300 539.21700
zoomBox 1032.48700 535.83400 1037.14100 540.00000
zoomBox 1033.13200 536.37100 1036.49500 539.38200
zoomBox 1033.59700 536.76000 1036.02800 538.93600
zoomBox 1033.77900 536.91100 1035.84500 538.76100
deselectAll
selectWire 1034.7300 537.9050 1034.8700 539.5700 2 {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0/frac_lut6_0_sram[32]}
zoomBox 1034.02600 537.26600 1035.52000 538.60300
zoomBox 1034.12300 537.40400 1035.39300 538.54100
zoomBox 1033.91100 537.10200 1035.66900 538.67600
fit
violationBrowserClose
zoomBox 1004.37900 563.10000 1066.51900 505.93200
zoomBox 1035.73800 540.87700 1043.33800 535.67300
zoomBox 1037.07000 535.71300 1042.56300 540.63000
zoomBox 1038.41100 536.55700 1041.78400 539.57700
zoomBox 1038.73100 536.75900 1041.59800 539.32600
zoomBox 1039.00300 536.93000 1041.44000 539.11200
zoomBox 1039.23400 537.07500 1041.30600 538.93000
zoomBox 1039.43000 537.19900 1041.19200 538.77600
zoomBox 1039.59700 537.30400 1041.09500 538.64500
deselectAll
selectWire 1040.4900 538.0200 1040.6300 538.4600 1 {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0/frac_lut6_0_sram[34]}
deselectAll
selectMarker 1040.4900 537.9500 1040.6300 538.0900 1 1 6
deselectAll
selectMarker 1040.4900 537.9500 1040.6300 538.0900 1 1 6
fit
deselectAll
zoomBox 977.03800 1172.07100 1195.77000 995.59400
zoomBox 1091.35600 1123.44700 1142.85600 1049.87600
fit
zoomBox 994.43700 1338.60600 1223.11100 1075.13300
zoomBox 940.72100 1048.52500 1286.97200 1358.49400
zoomBox 916.13700 1017.22200 1323.49200 1381.89200
zoomBox 847.92500 945.97500 1411.74000 1450.71000
zoomBox 1001.09600 1340.57300 1375.27100 1102.06400
zoomBox 1363.17000 1109.98500 1142.44000 1332.65100
zoomBox 948.91600 982.84800 1509.49300 1484.68400
zoomBox 653.41200 773.67100 1727.30200 1735.03200
zoomBox 264.96700 498.70400 2013.61700 2064.11900
zoomBox 51.22700 358.81800 2471.50500 2525.48300
selectWire 861.4500 944.2100 876.4700 944.3500 1 {grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_10_[0]}
fit
zoomBox 102.78800 114.60200 1282.74600 1170.91600
zoomBox 305.62800 261.26000 921.57400 812.66300
zoomBox 411.51200 337.81600 733.04000 625.65200
zoomBox 466.78400 377.77700 634.62400 528.03000
zoomBox 490.04100 394.22600 611.30600 502.78400
zoomBox 506.84400 406.11000 594.45800 484.54300
zoomBox 513.40600 410.75100 587.87800 477.41900
zoomBox 527.75500 420.89900 573.49000 461.84200
zoomBox 536.56700 427.13000 564.65500 452.27500
zoomBox 538.67100 428.61800 562.54600 449.99100
zoomBox 540.45900 429.88300 560.75300 448.05000
zoomBox 541.97900 430.95800 559.22900 446.40000
zoomBox 543.27100 431.87100 557.93400 444.99800
zoomBox 544.19200 433.22800 556.65600 444.38600
zoomBox 546.22400 436.15800 553.88000 443.01200
zoomBox 542.16300 430.31000 559.41700 445.75600
zoomBox 547.46800 434.36600 558.06400 443.85200
zoomBox 551.49000 437.40500 557.02200 442.35700
zoomBox 552.53000 438.28400 556.52800 441.86300
zoomBox 552.93600 438.62700 556.33500 441.67000
zoomBox 553.28100 438.91900 556.17100 441.50600
zoomBox 553.57500 439.16700 556.03100 441.36600
zoomBox 553.30500 438.97700 556.19600 441.56500
zoomBox 552.98800 438.75400 556.38900 441.79900
zoomBox 551.05300 437.39100 557.57000 443.22500
zoomBox 547.34600 434.78100 559.83200 445.95900
zoomBox 540.24400 429.78000 564.16600 451.19500
setDelayCalMode -SIAware false
setAnalysisMode -analysisType onChipVariation
timeDesign -postRoute
optDesign -postRoute
fit
zoomBox -52.74400 -47.98300 1580.41500 1414.04300
zoomBox 41.69600 -22.31300 1429.88100 1220.40900
zoomBox 121.96900 -0.49400 1301.92700 1055.82000
zoomBox 191.57600 26.98200 1194.54000 924.84900
zoomBox 437.25100 123.95900 815.51900 462.59000
zoomBox 498.05300 150.77100 730.35800 358.73400
zoomBox 536.34700 169.82100 679.01200 297.53700
zoomBox 565.63300 184.55200 640.10700 251.22200
zoomBox 571.41400 187.25400 634.71700 243.92400
zoomBox 580.91000 191.30500 626.64800 232.25000
zoomBox 584.94800 192.65300 623.82600 227.45700
zoomBox 576.15700 189.71700 629.96800 237.88900
zoomBox 563.99000 185.65200 638.47100 252.32800
zoomBox 547.15100 180.02600 650.23900 272.31200
zoomBox 536.44200 176.44900 657.72300 285.02100
zoomBox 523.84400 172.24000 666.52800 299.97300
zoomBox 491.58500 161.46300 689.07300 338.25700
fit
optDesign -postRoute
zoomBox -51.99800 -6.59800 1581.16100 1455.42800
zoomBox 43.07600 54.24900 1431.26100 1296.97100
zoomBox 522.56600 463.70100 585.42000 406.23400
zoomBox 547.05900 447.00900 561.25900 431.89500
selectWire 547.8950 440.6800 566.3500 440.9800 3 {clk[0]}
deselectAll
selectWire 554.8700 439.6100 555.1700 440.8600 3 pad_clk/tie_lo_esd
deselectAll
selectWire 549.6500 439.6100 549.9500 440.8600 3 pad_clk/tie_hi_esd
zoomBox 544.66900 431.27500 564.53100 449.05600
zoomBox 543.43500 430.54500 566.80300 451.46400
zoomBox 540.27700 428.67600 572.62000 457.63000
zoomBox 535.90400 426.08800 580.67100 466.16400
zoomBox 529.85300 422.50700 591.81500 477.97600
zoomBox 521.47800 417.54900 607.24000 494.32400
zoomBox 516.15200 414.39600 617.04900 504.72000
zoomBox 520.20500 416.86300 605.96700 493.63800
zoomBox 511.38400 411.49300 630.08600 517.75700
zoomBox 499.17400 404.06100 663.46900 551.14000
zoomBox 482.27600 393.77500 709.67400 597.34500
zoomBox 444.01400 370.48500 814.29400 701.96500
zoomBox 405.92900 347.30300 918.42800 806.09900
zoomBox 353.21700 315.21700 1062.55800 950.22900
zoomBox 319.69600 294.81300 1154.21500 1041.88600
zoomBox 233.86300 242.56700 1388.90600 1276.57700
zoomBox 115.06300 170.25400 1713.74000 1601.41100
zoomBox -153.93000 6.51900 2449.24800 2336.91900
zoomBox 32.03800 17.73300 1912.83500 1701.44800
zoomBox 227.32400 39.32500 1382.37000 1073.33800
zoomBox 380.88200 100.03400 983.82500 639.79700
zoomBox 445.59400 125.61700 815.87700 457.09900
zoomBox 462.62300 136.25100 777.36400 418.01100
zoomBox 477.09800 145.29000 744.62800 384.78600
zoomBox 489.40100 152.97300 716.80200 356.54500
zoomBox 499.85900 159.50300 693.15000 332.54000
zoomBox 508.74800 165.05400 673.04600 312.13600
zoomBox 499.85800 159.46500 693.15000 332.50300
zoomBox 462.62000 136.05400 777.36500 417.81800
zoomBox 425.55500 112.75200 861.18900 502.73700
zoomBox 401.98500 97.93400 914.49500 556.74000
zoomBox 440.25400 194.34200 810.54300 525.83000
zoomBox 467.90400 263.99800 735.43700 503.49700
zoomBox 495.68200 333.97800 659.98100 481.06100
zoomBox 520.27600 395.93500 593.17700 461.19700
zoomBox 523.21800 403.34700 585.18400 458.82000
zoomBox 530.09100 414.53500 574.86200 454.61500
zoomBox 539.20900 425.03900 566.70500 449.65400
zoomBox 541.92900 429.16000 561.79600 446.94500
zoomBox 544.47800 433.28600 556.67900 444.20800
zoomBox 545.84800 435.82500 553.34200 442.53400
zoomBox 546.68800 437.38400 551.29100 441.50500
zoomBox 546.45200 436.94600 551.86700 441.79400
zoomBox 546.17300 436.43100 552.54400 442.13400
deselectAll
selectWire 547.8950 440.6800 566.3500 440.9800 3 {clk[0]}
zoomBox 545.18200 435.13600 554.00000 443.03000
zoomBox 544.55200 434.31300 554.92600 443.60000
zoomBox 543.81000 433.34400 556.01500 444.27000
zoomBox 542.93800 432.20400 557.29700 445.05800
zoomBox 546.50500 434.53400 556.87900 443.82100
zoomBox 549.92300 436.71800 556.29500 442.42200
zoomBox 550.71800 437.18800 556.13400 442.03600
zoomBox 551.96800 437.92600 555.88100 441.42900
zoomBox 548.98500 436.16300 556.48400 442.87600
zoomBox 547.88400 435.51200 556.70700 443.41000
zoomBox 546.58900 434.74600 556.96900 444.03800
zoomBox 544.42800 432.79500 558.79500 445.65700
zoomBox 543.05300 431.55500 559.95600 446.68700
fit
deselectAll
optDesign -postRoute
selectInst grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0/frac_lut6_0_/frac_lut6_mux_0_/FE_OFC3827_logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out_1
zoomBox 239.34000 202.74500 1091.86000 965.93200
zoomBox 286.48800 238.64300 1011.13000 887.35200
zoomBox 326.56400 269.15700 942.50900 820.55900
zoomBox 360.62800 295.09300 884.18200 763.78600
zoomBox 435.11300 351.80600 756.64200 639.64300
zoomBox 501.05900 401.95100 643.72400 529.66700
zoomBox 530.42100 423.61300 593.72300 480.28200
zoomBox 540.01000 431.20600 573.05500 460.78800
zoomBox 542.91500 433.50700 566.79100 454.88100
zoomBox 544.05000 434.40600 564.34500 452.57400
deselectAll
selectWire 547.8950 440.6800 566.3500 440.9800 3 {clk[0]}
deselectAll
selectWire 547.8950 439.6100 548.1950 440.9800 3 {clk[0]}
zoomBox 539.56200 432.17600 567.65300 457.32300
zoomBox 530.83900 428.86800 569.71900 463.67400
zoomBox 542.96900 433.46800 566.84600 454.84300
zoomBox 550.41700 436.29200 565.08200 449.42000
zoomBox 552.19600 436.96600 564.66100 448.12500
zoomBox 554.86200 438.07100 563.86900 446.13400
deselectAll
selectWire 547.8950 440.6800 566.3500 440.9800 3 {clk[0]}
uiSetTool move
editResize -direction y -offset 0.595 -side low -no_conn 1 -keep_center_line 0
zoomBox 553.91400 437.50500 564.51000 446.99100
zoomBox 548.12600 434.05200 568.42700 452.22600
zoomBox 540.51700 429.51400 573.57500 459.10800
zoomBox 537.03800 427.43800 575.93000 462.25500
zoomBox 528.12800 422.12300 581.96000 470.31400
undo
zoomBox 532.05600 424.88100 577.81300 465.84300
zoomBox 535.39400 427.22500 574.28800 462.04300
zoomBox 542.57800 432.31100 566.46400 453.69400
zoomBox 544.29200 433.52500 564.59600 451.70100
zoomBox 548.39600 436.34200 560.86600 447.50500
zoomBox 550.91700 438.07100 558.57500 444.92700
zoomBox 552.46400 439.13400 557.16800 443.34500
zoomBox 552.83400 439.38900 556.83200 442.96800
zoomBox 553.41400 439.78900 556.30400 442.37600
editMove -dx -0.019 -dy 0.311
zoomBox 552.82100 439.26500 556.82100 442.84600
zoomBox 552.00000 438.53900 557.53700 443.49600
zoomBox 551.47800 438.07800 557.99200 443.90900
zoomBox 550.14200 436.89700 559.15700 444.96700
zoomBox 548.29100 435.26100 560.77000 446.43200
zoomBox 549.31800 436.07600 559.92500 445.57200
zoomBox 550.19000 436.76900 559.20700 444.84100
zoomBox 552.06300 438.14200 557.60000 443.09900
zoomBox 551.53600 437.75600 558.05100 443.58800
zoomBox 549.33200 436.14000 559.94200 445.63800
zoomBox 545.74300 433.50800 563.02100 448.97500
zoomBox 546.41900 435.61600 558.90300 446.79200
zoomBox 546.68200 436.43200 557.29400 445.93200
zoomBox 546.89000 437.11600 555.91000 445.19100
deselectAll
selectWire 547.8950 439.6100 548.1950 440.9800 3 {clk[0]}
zoomBox 547.27800 438.61100 552.81700 443.57000
zoomBox 547.54100 439.50600 550.94500 442.55300
editResize -direction y -offset 0.287 -side high -no_conn 1 -keep_center_line 0
zoomBox 547.45400 439.20300 551.45900 442.78800
zoomBox 547.35300 438.84700 552.06400 443.06400
zoomBox 547.60100 439.77500 550.49500 442.36600
zoomBox 547.79000 440.48400 549.30100 441.83700
zoomBox 547.87100 440.78200 548.79900 441.61300
zoomBox 547.82000 440.59900 549.10600 441.75000
deselectAll
selectWire 547.8750 441.2900 566.3300 441.5900 3 {clk[0]}
editMove -dx -0.029 -dy -0.012
undo
deselectAll
selectWire 547.8950 439.6100 548.1950 441.2650 3 {clk[0]}
editResize -direction y -offset 0.009 -side high -no_conn 1 -keep_center_line 0
zoomBox 547.86800 440.86600 548.65800 441.57300
zoomBox 547.89900 441.03000 548.38400 441.46400
editResize -direction y -offset 0.012 -side high -no_conn 1 -keep_center_line 0
zoomBox 547.94400 441.15200 548.19900 441.38000
zoomBox 547.95700 441.18800 548.14200 441.35400
zoomBox 547.97100 441.22300 548.08700 441.32700
editResize -direction y -offset 0.005 -side high -no_conn 1 -keep_center_line 0
fit
zoomBox 164.06400 140.42600 1167.02900 1038.29400
zoomBox 314.26500 241.56100 930.21200 792.96500
zoomBox 449.90400 342.94700 723.20500 587.61000
zoomBox 497.89900 386.88600 640.56400 514.60200
zoomBox 505.76100 394.08400 627.02700 502.64300
zoomBox 522.51400 418.63000 585.81700 475.30000
zoomBox 530.26400 428.55500 569.14100 463.35800
zoomBox 535.35800 431.97400 563.44700 457.12000
zoomBox 537.46700 433.25500 561.34300 454.62900
zoomBox 535.35800 431.97400 563.44700 457.12000
zoomBox 540.78400 435.26900 558.03500 450.71200
zoomBox 545.45000 438.24700 553.10600 445.10100
zoomBox 545.98600 438.65400 552.49400 444.48000
zoomBox 546.44200 439.00000 551.97400 443.95200
zoomBox 546.83000 439.29400 551.53200 443.50300
zoomBox 546.23200 438.29600 552.74000 444.12200
zoomBox 545.85200 437.66200 553.50800 444.51600
zoomBox 543.53000 433.78900 558.19700 446.91900
zoomBox 540.47800 428.69800 564.36100 450.07800
zoomBox 539.08200 426.36900 567.18000 451.52300
zoomBox 535.50700 420.40700 574.39800 455.22300
fit
optDesign -postRoute
zoomBox 238.52100 201.12700 1091.04200 964.31500
zoomBox 362.36200 287.09200 885.91700 755.78500
zoomBox 417.05600 325.05700 795.32400 663.68800
zoomBox 472.00400 363.20000 704.30900 571.16300
zoomBox 496.27200 380.04600 664.11200 530.29900
uiSetTool select
zoomBox 517.80400 404.59500 620.87900 496.86900
zoomBox 530.71800 419.25800 594.02000 475.92700
zoomBox 540.97300 429.66900 574.01800 459.25100
zoomBox 544.08100 432.82400 567.95600 454.19700
zoomBox 544.96000 434.02800 565.25500 452.19600
zoomBox 545.70800 435.05200 562.95900 450.49500
zoomBox 547.34400 437.29100 557.93800 446.77500
zoomBox 545.70700 435.05100 562.95900 450.49500
selectWire 545.6100 440.6400 555.0850 440.7800 1 pad_clk/tie_lo_esd
zoomBox 546.06100 435.75700 560.72600 448.88500
zoomBox 546.36800 436.39300 558.83400 447.55300
zoomBox 547.26900 438.27400 553.77600 444.09900
zoomBox 547.65500 439.06600 551.65100 442.64300
zoomBox 547.76400 439.26100 551.16000 442.30100
deselectAll
selectWire 547.8950 440.6800 549.1300 440.9800 3 {clk[0]}
zoomBox 547.27600 438.45400 552.80600 443.40500
zoomBox 546.78900 437.65100 554.44400 444.50400
zoomBox 546.48000 437.14100 555.48600 445.20300
zoomBox 545.25800 435.32800 557.72300 446.48700
zoomBox 544.48000 434.17500 559.14600 447.30400
zoomBox 543.56600 432.81900 560.82000 448.26500
zoomBox 542.49100 431.22400 562.78900 449.39500
zoomBox 541.22600 429.34700 565.10600 450.72500
zoomBox 537.98500 424.54100 571.03900 454.13100
zoomBox 533.50100 417.88900 579.25100 458.84500
zoomBox 523.34700 402.82700 597.84500 469.51900
zoomBox 506.81400 378.30100 628.12400 486.89900
zoomBox 467.58100 320.09900 699.97600 528.14200
zoomBox 416.00900 243.59300 794.42700 582.35800
zoomBox 446.66200 356.61400 644.20000 533.45300
zoomBox 459.57900 404.24100 580.89400 512.84400
zoomBox 467.51200 433.49100 542.01500 500.18700
zoomBox 472.38300 451.45400 518.13800 492.41400
zoomBox 476.08800 465.11700 499.97400 486.50000
zoomBox 478.02300 472.25100 490.49200 483.41300
zoomBox 476.69400 467.35400 497.00000 485.53200
zoomBox 476.08700 465.11500 499.97600 486.50100
zoomBox 473.69300 456.16000 512.59300 490.98400
zoomBox 469.80300 441.67800 533.14600 498.38400
zoomBox 460.57100 407.30900 581.92100 515.94300
zoomBox 442.88900 341.47200 675.35800 549.58100
zoomBox 457.04500 395.31700 599.81100 523.12300
zoomBox 469.57600 442.98800 532.92500 499.69900
zoomBox 475.13800 464.41400 503.24600 489.57700
zoomBox 477.62400 473.96100 490.09700 485.12700
zoomBox 479.06300 478.04300 484.59900 482.99900
zoomBox 479.57600 479.15700 482.97600 482.20100
zoomBox 479.95000 479.75100 482.03900 481.62100
deselectAll
selectMarker 475.6400 475.6700 485.6400 485.6700 -1 0 0
deselectAll
selectMarker 475.6400 475.6700 485.6400 485.6700 -1 0 0
fit
zoomBox 17.55400 92.87500 1405.74000 1335.59800
zoomBox 332.58500 276.07400 1057.22800 924.78400
zoomBox 497.03200 371.96300 875.30300 710.59600
zoomBox 566.89800 418.60200 799.20600 626.56700
zoomBox 620.04700 452.01700 741.31400 560.57700
zoomBox 642.44400 465.51600 716.91800 532.18600
zoomBox 656.23600 474.28900 701.97400 515.23400
zoomBox 662.32700 478.22900 695.37300 507.81200
zoomBox 669.94900 483.54200 687.20000 498.98500
zoomBox 673.16000 485.77900 683.75600 495.26500
zoomBox 675.15300 487.22700 681.66200 493.05400
zoomBox 676.40000 488.19800 680.39800 491.77700
zoomBox 677.16600 488.79400 679.62200 490.99300
zoomBox 677.34800 488.93600 679.43700 490.80600
zoomBox 677.50300 489.05700 679.27900 490.64700
deselectAll
selectMarker 678.6150 489.4350 678.7100 489.6650 1 1 6
deselectAll
selectWire 678.5700 484.6800 678.7100 489.6200 2 {prog_clk[0]}
deselectAll
selectMarker 678.6150 489.4350 678.7100 489.6650 1 1 6
deselectAll
selectMarker 678.2000 489.8500 678.3400 489.9900 1 1 6
zoomBox 676.92100 488.67500 679.81300 491.26400
zoomBox 676.65400 488.50000 680.05700 491.54600
zoomBox 676.34000 488.29400 680.34400 491.87800
zoomBox 675.97200 488.05200 680.68200 492.26800
zoomBox 676.67000 488.47700 680.07400 491.52400
zoomBox 677.40000 488.89300 679.49100 490.76500
zoomBox 677.84700 489.14800 679.13300 490.29900
deselectAll
selectWire 678.5700 489.8500 685.3600 489.9900 1 {prog_clk[0]}
deselectAll
selectMarker 678.6150 489.4350 678.7100 489.6650 1 1 6
zoomBox 677.70200 489.08400 679.21500 490.43800
zoomBox 676.48800 488.54900 679.89900 491.60300
zoomBox 675.11600 487.94500 680.67300 492.92000
zoomBox 671.86200 486.51600 682.50900 496.04700
zoomBox 667.58600 484.63700 684.92400 500.15800
zoomBox 660.62400 481.57800 688.85600 506.85200
zoomBox 653.69400 478.53400 692.77000 513.51500
zoomBox 644.10200 474.31900 698.18700 522.73700
zoomBox 622.38300 464.77800 710.45400 543.62000
zoomBox 587.01700 449.24200 730.42700 577.62500
zoomBox 523.01800 398.99900 756.53900 608.05000
zoomBox 586.43300 453.67100 729.84500 582.05500
zoomBox 625.23400 483.16600 713.30700 562.01000
zoomBox 649.06200 501.27900 703.15100 549.70000
zoomBox 663.69400 512.40200 696.91300 542.14000
zoomBox 674.82600 520.80300 692.16700 536.32700
zoomBox 680.63600 525.18700 689.69000 533.29200
zoomBox 683.67000 527.47600 688.39700 531.70800
zoomBox 684.52900 528.14500 687.94600 531.20400
zoomBox 684.86500 528.40600 687.77000 531.00700
zoomBox 685.15000 528.62900 687.62000 530.84000
zoomBox 685.39300 528.81800 687.49300 530.69800
zoomBox 685.60000 528.97900 687.38500 530.57700
deselectAll
selectMarker 685.4750 529.8100 688.3450 529.9500 1 1 6
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
zoomBox 932.115 1070.25 933.405 1071.39
zoomBox 931.96200 1070.16200 933.48000 1071.52100
zoomBox 931.78200 1070.06800 933.56800 1071.66700
zoomBox 931.57100 1069.95800 933.67200 1071.83900
deselectAll
selectMarker 932.6150 1070.7500 932.9050 1070.8900 1 1 6
deselectAll
selectWire 932.7550 1070.3800 932.8950 1070.7400 1 {grid_io_right_0_left_width_0_height_0_subtile_1__pin_inpad_0_[0]}
zoomBox 931.34900 1069.83500 933.82100 1072.04800
zoomBox 931.08800 1069.69000 933.99700 1072.29400
zoomBox 931.50100 1069.95500 933.60300 1071.83700
zoomBox 931.66200 1070.05800 933.44900 1071.65800
deselectAll
selectWire 927.7600 1070.7500 938.3200 1070.8900 1 {prog_clk[0]}
zoomBox 932.03500 1070.33700 933.13300 1071.32000
zoomBox 932.27600 1070.51000 932.95100 1071.11400
zoomBox 931.92200 1070.25700 933.21600 1071.41500
zoomBox 931.45800 1069.92400 933.56600 1071.81100
zoomBox 931.24600 1069.77200 933.72600 1071.99200
zoomBox 930.99600 1069.59400 933.91400 1072.20600
zoomBox 930.35600 1069.13600 934.39500 1072.75200
zoomBox 929.47000 1068.50400 935.06100 1073.50900
zoomBox 928.90700 1068.10100 935.48500 1073.99000
zoomBox 928.24500 1067.62800 935.98400 1074.55600
zoomBox 928.90300 1068.13500 935.48100 1074.02400
zoomBox 929.46100 1068.56600 935.05300 1073.57200
zoomBox 930.97500 1069.73300 933.89500 1072.34700
zoomBox 931.61300 1070.14700 933.40700 1071.75300
zoomBox 932.00800 1070.40200 933.11100 1071.38900
zoomBox 932.18400 1070.51500 932.98000 1071.22800
deselectAll
selectObject Pin sb_1__0_/mux_top_track_12/g3/A1
zoomBox 931.74600 1070.25000 933.27200 1071.61600
zoomBox 931.39500 1070.03600 933.50700 1071.92700
zoomBox 931.17100 1069.90000 933.65600 1072.12500
deselectAll
selectWire 932.7550 1070.3800 933.1100 1070.5200 1 {grid_io_right_0_left_width_0_height_0_subtile_1__pin_inpad_0_[0]}
zoomBox 931.39500 1069.98200 933.50800 1071.87400
zoomBox 931.58600 1070.05200 933.38200 1071.66000
zoomBox 931.24300 1069.86300 933.73000 1072.08900
zoomBox 930.76800 1069.60000 934.21100 1072.68200
zoomBox 930.11100 1069.23600 934.87700 1073.50300
deselectAll
selectWire 927.7600 1070.7500 938.3200 1070.8900 1 {prog_clk[0]}
zoomBox 929.85100 1068.96000 935.45900 1073.98000
zoomBox 929.18700 1068.25100 936.95100 1075.20100
zoomBox 928.26900 1067.27000 939.01500 1076.89000
zoomBox 927.68400 1066.64700 940.32700 1077.96500
zoomBox 925.23800 1064.03600 945.82500 1082.46600
zoomBox 925.74100 1065.99500 940.61500 1079.31000
zoomBox 926.31200 1067.83600 935.44700 1076.01400
zoomBox 926.74700 1069.23100 931.51700 1073.50100
zoomBox 927.02800 1069.94700 929.51900 1072.17700
zoomBox 927.17500 1070.32100 928.47600 1071.48600
zoomBox 927.03500 1070.02400 929.15400 1071.92100
zoomBox 926.89600 1069.72900 929.82900 1072.35500
zoomBox 926.79200 1069.56300 930.24300 1072.65200
zoomBox 926.67000 1069.36700 930.73000 1073.00200
zoomBox 926.35600 1068.86600 931.97700 1073.89800
zoomBox 925.92300 1068.17300 933.70300 1075.13800
zoomBox 925.32400 1067.21500 936.09200 1076.85500
zoomBox 926.49200 1067.73100 935.64500 1075.92500
zoomBox 928.99200 1068.88700 934.61300 1073.91900
zoomBox 930.50600 1069.61700 933.95900 1072.70800
zoomBox 930.86700 1069.79100 933.80300 1072.41900
zoomBox 931.65500 1070.17200 933.45800 1071.78600
zoomBox 932.09200 1070.41000 933.20100 1071.40300
zoomBox 932.24700 1070.51900 933.04900 1071.23700
zoomBox 932.30800 1070.56100 932.99000 1071.17200
zoomBox 932.35800 1070.59700 932.93900 1071.11700
zoomBox 932.47100 1070.67600 932.82800 1070.99600
zoomBox 932.54100 1070.72400 932.76100 1070.92100
zoomBox 932.57200 1070.74600 932.73100 1070.88800
zoomBox 932.55700 1070.73600 932.74400 1070.90300
zoomBox 932.46400 1070.67500 932.82300 1070.99600
zoomBox 932.28600 1070.55700 932.97300 1071.17200
zoomBox 931.94500 1070.33100 933.26200 1071.51000
zoomBox 931.49700 1070.03400 933.64300 1071.95500
zoomBox 931.05100 1069.73700 934.02200 1072.39700
zoomBox 930.43300 1069.32700 934.54600 1073.00900
zoomBox 929.57800 1068.76100 935.27100 1073.85700
zoomBox 928.39600 1067.97700 936.27500 1075.03000
zoomBox 927.64400 1067.47800 936.91300 1075.77600
zoomBox 925.71800 1066.20100 938.54800 1077.68700
zoomBox 929.00300 1068.01600 936.88300 1075.07000
zoomBox 931.02000 1069.13100 935.86100 1073.46500
zoomBox 932.49700 1070.03400 935.02600 1072.29800
deselectAll
selectWire 933.3350 1071.1200 935.0300 1071.2600 1 sb_1__0_/mux_top_track_12/n_6
zoomBox 932.20500 1069.83200 935.18000 1072.49500
zoomBox 931.45700 1069.31400 935.57400 1073.00000
zoomBox 930.98000 1068.98500 935.82500 1073.32200
deselectAll
selectInst sb_1__0_/mux_top_track_12/g3
zoomBox 929.92600 1068.72700 936.63200 1074.73000
zoomBox 928.46500 1068.37000 937.74800 1076.68000
zoomBox 921.86900 1066.75800 942.79200 1085.48900
zoomBox 907.00400 1063.12500 954.16100 1105.34100
zoomBox 873.50200 1054.93900 979.78500 1150.08500
zoomBox 850.37200 1049.28900 997.47600 1180.97800
fit
zoomBox 1078.94700 1099.98900 1158.48600 1042.82000
fit
zoomBox 728.47800 993.10800 788.13200 928.48300
zoomBox 733.16400 944.73500 777.49800 984.42300
zoomBox 740.46700 954.29500 767.69400 978.66900
zoomBox 746.02300 961.56600 760.23600 974.29000
zoomBox 747.95300 963.71800 758.22300 972.91200
zoomBox 748.72600 964.54100 757.45600 972.35600
zoomBox 750.58600 966.37000 755.94800 971.17000
zoomBox 752.14400 967.81800 754.94300 970.32400
zoomBox 752.84500 968.43500 754.56500 969.97500
zoomBox 753.27600 968.81500 754.33300 969.76100
zoomBox 753.54200 969.04800 754.19100 969.62900
deselectAll
selectMarker 753.8850 969.3700 754.0550 969.5100 1 1 6
deselectAll
selectMarker 753.8850 969.3700 754.0550 969.5100 1 1 6
zoomBox 958.405 982.19 959.695 983.33
zoomBox 932.115 1070.25 933.405 1071.39
zoomBox 931.18200 1069.80800 933.65300 1072.02000
zoomBox 930.83800 1069.64800 933.74500 1072.25000
zoomBox 739.465 524.13 740.635 525.27
zoomBox 738.80400 523.67400 741.24600 525.86000
zoomBox 738.00500 523.07600 741.98200 526.63600
zoomBox 736.70500 522.10200 743.18200 527.90000
zoomBox 736.11100 521.65600 743.73100 528.47800
zoomBox 734.58800 520.51500 745.13600 529.95800
zoomBox 733.61900 519.79000 746.02900 530.90000
zoomBox 732.47900 518.93700 747.08000 532.00800
zoomBox 734.58600 520.51400 745.13500 529.95800
zoomBox 737.20600 522.47600 742.71500 527.40800
zoomBox 738.06500 523.08800 742.04700 526.65300
deselectAll
selectWire 736.2400 524.6300 745.3600 524.7700 1 {prog_clk[0]}
uiSetTool copy
uiSetTool move
editMove -dx -0.016 -dy 0.243
violationBrowser -all -no_display_false -displayByLayer
zoomBox 737.60600 522.76800 742.29100 526.96200
zoomBox 737.06600 522.39200 742.57800 527.32600
zoomBox 736.43100 521.94900 742.91500 527.75400
zoomBox 735.68300 521.42700 743.31200 528.25700
zoomBox 733.76800 520.09300 744.32800 529.54600
optDesign -postRoute
violationBrowser -all -no_display_false -displayByLayer
uiSetTool select
fit
zoomBox 190.28100 131.49300 1370.23900 1187.80700
zoomBox 455.34100 261.07700 1179.98400 909.78700
zoomBox 517.35200 292.85600 1133.29900 844.26000
zoomBox 614.42300 343.04900 1059.44500 741.43900
zoomBox 458.51400 256.95500 1183.15900 905.66700
zoomBox 303.32900 171.26100 1306.29900 1069.13300
zoomBox 204.64200 116.76500 1384.60700 1173.08600
zoomBox 684.04 528.375 689.78 531.385
zoomBox 685.38300 528.55500 688.38100 531.23900
zoomBox 685.79000 528.93200 687.95700 530.87200
zoomBox 685.94900 529.08000 687.79100 530.72900
zoomBox 685.03600 528.49600 688.56600 531.65600
zoomBox 684.69900 528.28100 688.85200 531.99900
zoomBox 684.30300 528.02800 689.18900 532.40200
zoomBox 683.83700 527.73000 689.58500 532.87600
zoomBox 680.99100 525.91200 692.00300 535.77000
zoomBox 679.94000 525.24100 692.89500 536.83800
zoomBox 681.88400 526.48300 691.24400 534.86200
zoomBox 682.64300 526.96800 690.59900 534.09000
zoomBox 684.69900 528.28100 688.85200 531.99900
selectWire 682.3300 529.7400 712.3900 530.0400 3 {prog_clk[0]}
zoomBox 682.44300 527.36600 689.20700 533.42100
zoomBox 681.41200 526.94800 689.36900 534.07100
zoomBox 678.77100 525.87700 689.78400 535.73600
zoomBox 681.41200 526.94800 689.36900 534.07100
zoomBox 684.69800 528.28000 688.85200 531.99900
zoomBox 685.69300 528.68400 688.69500 531.37100
zoomBox 686.08200 528.84100 688.63400 531.12600
deselectAll
selectInst grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/mux_frac_logic_out_0/g1
deselectAll
selectMarker 685.4750 529.8100 688.3450 529.9500 1 1 6
zoomBox 685.04300 528.21200 689.20100 531.93400
zoomBox 683.35300 527.18700 690.12400 533.24800
zoomBox 680.13800 525.61700 691.16400 535.48800
zoomBox 676.94300 524.05500 692.20500 537.71800
zoomBox 672.98400 521.95400 694.10900 540.86500
zoomBox 670.46600 520.61700 695.31900 542.86600
zoomBox 667.50300 519.04500 696.74300 545.22100
pan 9.87300 -148.79800
zoomBox 668.09100 509.38600 724.10800 559.53300
deselectAll
selectWire 679.4500 529.7400 682.6300 530.0400 3 {prog_clk[0]}
zoomBox 656.74300 490.67300 764.05500 586.74000
zoomBox 641.82700 466.07300 816.56700 622.50300
zoomBox 626.98000 441.58900 868.83500 658.10100
zoomBox 606.43000 407.70100 941.17800 707.37200
zoomBox 577.98600 360.79600 1041.30700 775.56700
zoomBox 559.89900 330.96800 1104.98200 818.93400
zoomBox 593.36000 386.14900 987.18300 738.70500
zoomBox 635.00200 454.82200 840.58100 638.85900
zoomBox 641.82400 466.07200 816.56600 622.50300
zoomBox 678.115 488.935 679.21 490.165
zoomBox 684.04 528.375 689.78 531.385
deselectAll
selectMarker 685.4750 529.8100 688.3450 529.9500 1 1 6
uiSetTool move
editMove -dx 1.262 -dy 0.156
editMove -dx -2.636 -dy 0.023
deselectAll
selectWire 682.3300 529.7400 712.3900 530.0400 3 {prog_clk[0]}
editMove -dx 0.297 -dy 2.079
violationBrowser -all -no_display_false -displayByLayer
zoomBox 684.04 528.375 689.78 531.385
zoomBox 684.04 528.375 689.78 531.385
uiSetTool select
deselectAll
selectMarker 685.4750 529.8100 688.3450 529.9500 1 1 6
optDesign -postRoute
violationBrowser -all -no_display_false -displayByLayer
zoomBox 684.04 528.375 689.78 531.385
zoomBox 684.04 528.375 689.78 531.385
selectInst grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/mux_frac_logic_out_0/g1
zoomBox 683.60400 526.99000 690.35800 533.03600
zoomBox 683.09200 526.61400 691.03800 533.72700
zoomBox 682.48900 526.17100 691.83800 534.54000
zoomBox 680.94600 525.03700 693.88600 536.62100
zoomBox 678.115 488.935 679.21 490.165
zoomBox 684.04 528.375 689.78 531.385
deselectAll
selectInst grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/mux_frac_logic_out_0/g1
zoomBox 682.95400 526.52200 690.89900 533.63400
zoomBox 682.26500 526.03100 691.61200 534.39900
zoomBox 679.37600 523.97900 694.59900 537.60700
zoomBox 676.50100 521.93700 697.57200 540.80000
zoomBox 674.67300 520.63800 699.46300 542.83000
zoomBox 672.52200 519.10900 701.68700 545.21800
zoomBox 678.05400 523.04000 695.96500 539.07400
zoomBox 682.95200 526.51900 690.89900 533.63300
zoomBox 685.12500 528.06200 688.65200 531.21900
zoomBox 685.79400 528.53600 687.96000 530.47500
zoomBox 685.38400 528.24500 688.38300 530.93000
zoomBox 685.12300 528.06000 688.65200 531.21900
zoomBox 684.81700 527.84200 688.96900 531.55900
zoomBox 684.03300 527.28500 689.78000 532.43000
deselectAll
selectWire 682.4100 529.8100 693.0400 529.9500 1 {prog_clk[0]}
deselectAll
selectInst grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/mux_frac_logic_out_0/g1
zoomBox 683.44400 526.89100 690.20600 532.94400
zoomBox 682.75200 526.42700 690.70800 533.54900
zoomBox 680.98000 525.24100 691.99200 535.09900
zoomBox 676.97000 522.55500 694.90100 538.60700
deselectAll
selectWire 688.7200 530.1800 695.5100 530.3200 1 {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_ccff_tail[0]}
zoomBox 679.73200 524.38300 692.68700 535.98000
zoomBox 680.81000 525.09600 691.82200 534.95400
zoomBox 682.50600 526.21900 690.46200 533.34100
deselectAll
selectWire 682.4100 529.8100 693.0400 529.9500 1 {prog_clk[0]}
uiSetTool move
editMove -dx 0.039 -dy -0.319
violationBrowser -all -no_display_false -displayByLayer
editMove -dx 0.02 -dy 0.535
violationBrowser -all -no_display_false -displayByLayer
editMove -dx -0.001 -dy -0.402
violationBrowser -all -no_display_false -displayByLayer
optDesign -postRoute
violationBrowser -all -no_display_false -displayByLayer
uiSetTool select
selectInst grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/mux_frac_logic_out_0/g1
deselectAll
selectMarker 686.3950 529.4400 686.5650 529.5800 1 1 6
zoomBox 680.97200 524.96900 691.98400 534.82700
zoomBox 679.34200 522.55100 697.27400 538.60400
zoomBox 683.17900 524.41200 696.13500 536.01000
zoomBox 684.67700 525.13800 695.69000 534.99700
zoomBox 685.95100 525.75600 695.31200 534.13600
zoomBox 687.03400 526.28100 694.99100 533.40400
deselectAll
selectInst grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mem_fabric_out_0/sky130_osu_sc_18T_hs__dffr_1_1_
deselectAll
selectWire 692.0100 529.4400 692.1500 529.9500 1 {prog_clk[0]}
deselectAll
selectWire 692.5600 529.4400 693.5900 529.5800 1 {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mux_tree_size2_0_sram[0]}
deselectAll
selectMarker 688.1150 529.4400 688.2850 529.5800 1 1 6
deselectAll
selectMarker 688.1150 529.4400 688.2850 529.5800 1 1 6
zoomBox 687.615 528.94 688.785 530.08
zoomBox 687.615 528.94 688.785 530.08
deselectAll
selectInst grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/mux_frac_logic_out_0/g1
zoomBox 687.28000 528.77800 689.04300 530.35600
zoomBox 686.00700 528.04400 689.98100 531.60200
zoomBox 685.12800 527.53800 690.62900 532.46300
zoomBox 684.56800 527.21600 691.04100 533.01100
zoomBox 683.13600 526.39200 692.09600 534.41300
zoomBox 682.22500 525.86800 692.76700 535.30500
zoomBox 676.66800 522.67000 696.86300 540.74900
zoomBox 674.61600 521.49000 698.37500 542.75900
zoomBox 679.69000 523.56200 696.85700 538.93000
zoomBox 684.85700 525.83200 695.40100 535.27100
zoomBox 688.79400 527.56500 694.29900 532.49300
zoomBox 690.90000 528.53100 693.77400 531.10400
zoomBox 690.53100 528.36800 693.91200 531.39500
zoomBox 690.09700 528.17600 694.07500 531.73700
deselectAll
selectInst grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/mem_fabric_out_0/sky130_osu_sc_18T_hs__dffr_1_1_
fit
zoomBox 686.755 528.94 687.925 530.08
zoomBox 686.35400 528.64000 688.42800 530.49700
zoomBox 686.00400 528.34300 688.87500 530.91300
zoomBox 685.78100 528.15400 689.15900 531.17800
zoomBox 685.20800 527.67000 689.88400 531.85600
zoomBox 684.41500 527.00000 690.88700 532.79400
pan -1.89300 -157.35700
deselectAll
selectWire 644.4100 527.9100 685.0300 528.2100 3 {grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[0]}
zoomBox 683.30700 527.57500 687.98400 531.76200
zoomBox 683.61300 527.77700 687.58900 531.33600
zoomBox 683.87400 527.95200 687.25300 530.97700
zoomBox 684.09600 528.10100 686.96800 530.67200
zoomBox 683.25200 527.51300 687.93000 531.70100
zoomBox 682.36900 526.18800 689.98800 533.00900
zoomBox 681.96500 525.58200 690.92900 533.60700
zoomBox 680.93100 524.03100 693.33900 535.13900
zoomBox 680.27300 523.04500 694.87100 536.11300
zoomBox 681.00400 524.00800 693.41200 535.11600
zoomBox 681.62500 524.82700 692.17200 534.26900
deselectAll
selectWire 683.8500 529.4400 692.1500 529.5800 1 {prog_clk[0]}
zoomBox 681.00300 524.00800 693.41200 535.11700
zoomBox 682.94900 525.48300 691.91500 533.50900
zoomBox 684.87800 526.99600 690.38400 531.92500
zoomBox 685.33800 527.35700 690.01900 531.54700
uiSetTool move
editMove -dx -0.024 -dy 0.242
violationBrowser -all -no_display_false -displayByLayer
optDesign -postRoute
violationBrowser -all -no_display_false -displayByLayer
uiSetTool select
selectInst grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/mux_frac_logic_out_0/g1
zoomBox 684.62800 526.76800 691.10700 532.56800
zoomBox 684.17700 526.39400 691.79900 533.21700
zoomBox 683.02200 525.43600 693.57100 534.88000
zoomBox 682.28800 524.82700 694.69800 535.93700
zoomBox 682.63900 525.40700 693.18800 534.85100
zoomBox 682.93700 525.90000 691.90500 533.92800
zoomBox 683.19100 526.31900 690.81400 533.14300
deselectAll
selectWire 683.8500 529.8100 693.0400 529.9500 1 {prog_clk[0]}
deselectAll
selectWire 683.8500 529.8100 693.0400 529.9500 1 {prog_clk[0]}
zoomBox 544.15 822.35 545.29 823.49
zoomBox 687.615 529.31 688.785 530.45
zoomBox 686.755 529.31 687.925 530.45
zoomBox 686.02900 528.97100 688.47000 531.15600
zoomBox 685.78000 528.84600 688.65200 531.41700
zoomBox 685.48700 528.69900 688.86600 531.72400
zoomBox 685.17100 528.54200 689.14700 532.10100
zoomBox 684.80000 528.35800 689.47700 532.54500
zoomBox 683.84900 527.88500 690.32300 533.68100
zoomBox 680.71200 526.32800 693.11500 537.43100
deselectAll
selectInst grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/mux_frac_logic_out_0/g1
fit
zoomBox 1073.97600 950.85300 1123.68800 851.42900
zoomBox 1059.00900 865.46300 1139.25200 937.29800
zoomBox 1065.14400 870.94400 1133.35100 932.00400
zoomBox 1081.76100 885.79000 1117.36600 917.66400
zoomBox 1091.85600 894.80900 1107.65400 908.95200
zoomBox 1095.70300 898.24800 1103.95000 905.63100
zoomBox 1097.71100 900.04200 1102.01700 903.89700
zoomBox 1098.08000 900.43000 1101.74100 903.70700
deselectAll
selectMarker 1100.0100 902.7700 1100.1500 902.9100 1 1 6
zoomBox 1097.67100 900.13400 1101.97800 903.99000
zoomBox 1098.03000 900.50300 1101.69200 903.78100
zoomBox 1098.33600 900.81600 1101.44900 903.60300
deselectAll
selectWire 1098.5700 902.7700 1106.3200 902.9100 1 {prog_clk[0]}
uiSetTool addWire
setEditMode -type regular
setEditMode -status ROUTED -nets {prog_clk[0]} -layer_horizontal met1 -width_horizontal 0.140 -width_vertical 0.140 -shape None
setEditMode -spacing_horizontal 0.140
setEditMode -spacing_vertical 0.140
setEditMode -spacing 0.140
editAddRoute 1099.48 902.854
editAddRoute 1099.32 902.906
editAddRoute 1099.63 902.882
editAddRoute 1099.67 902.089
uiSetTool select
zoomBox 1098.09600 900.50300 1101.75800 903.78100
zoomBox 1097.81300 900.13400 1102.12200 903.99100
zoomBox 1096.63000 898.59000 1103.64500 904.87000
zoomBox 1096.08900 897.88400 1104.34200 905.27200
zoomBox 1095.32800 897.06600 1105.03700 905.75800
zoomBox 1093.37800 894.97200 1106.81700 907.00300
zoomBox 1092.13800 893.64100 1107.94900 907.79500
zoomBox 1094.43800 896.09900 1105.86200 906.32600
zoomBox 1096.34400 897.87800 1104.59900 905.26800
zoomBox 1097.12900 898.61600 1104.14600 904.89800
uiSetTool move
editMove -dx 0.036 -dy -0.871
violationBrowser -all -no_display_false -displayByLayer
zoomBox 687.615 529.31 688.785 530.45
zoomBox 687.615 529.31 688.785 530.45
optDesign -postRoute
violationBrowser -all -no_display_false -displayByLayer
selectMarker 685.4750 529.8100 688.3450 529.9500 1 1 6
uiSetTool select
zoomBox 687.46700 529.20500 688.96600 530.54700
zoomBox 687.35400 529.08200 689.11800 530.66100
zoomBox 687.22200 528.93700 689.29700 530.79500
zoomBox 686.41400 528.05100 690.39100 531.61100
zoomBox 685.76500 527.33700 691.27100 532.26600
zoomBox 684.29500 525.72100 693.26200 533.74800
zoomBox 683.01900 524.14700 695.43200 535.25900
zoomBox 683.34200 525.00700 693.89300 534.45200
zoomBox 683.61600 525.73700 692.58500 533.76600
zoomBox 684.04700 526.88200 690.52800 532.68400
zoomBox 684.35900 527.71100 689.04100 531.90200
deselectAll
selectMarker 685.4750 529.8100 688.3450 529.9500 1 1 6
deselectAll
selectInst grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/mux_frac_logic_out_0/g1
zoomBox 683.30300 527.08500 689.78300 532.88600
zoomBox 682.63100 526.68700 690.25500 533.51200
zoomBox 681.84100 526.21900 690.81000 534.24800
zoomBox 682.36800 526.69600 689.99200 533.52100
zoomBox 682.81600 527.10100 689.29700 532.90300
zoomBox 683.19700 527.44700 688.70600 532.37900
deselectAll
selectWire 683.8500 529.8100 693.0400 529.9500 1 {prog_clk[0]}
zoomBox 682.82500 527.02400 689.30700 532.82700
zoomBox 682.38800 526.52700 690.01400 533.35400
zoomBox 680.55900 524.44400 692.97700 535.56100
zoomBox 677.58100 521.05200 697.80200 539.15400
zoomBox 679.72200 523.49100 694.33200 536.57000
zoomBox 680.55800 524.44300 692.97700 535.56100
zoomBox 682.38700 526.52600 690.01400 533.35400
zoomBox 683.19500 527.44500 688.70600 532.37900
zoomBox 681.50100 526.87900 689.13000 533.70900
zoomBox 680.42400 526.52000 689.40100 534.55600
zoomBox 675.91400 525.01600 690.53300 538.10300
zoomBox 668.58100 522.54200 692.38800 543.85400
zoomBox 665.22800 521.41100 693.23600 546.48400
zoomBox 661.28200 520.08100 694.23300 549.57900
zoomBox 669.58700 522.59800 689.82400 540.71400
zoomBox 674.68900 524.14300 687.11700 535.26900
zoomBox 673.31800 523.61200 687.94000 536.70200
zoomBox 671.70500 522.98800 688.90800 538.38800
zoomBox 661.86000 519.17500 694.81800 548.67900
zoomBox 648.92100 514.16500 702.58700 562.20800
zoomBox 643.00200 511.87300 706.14000 568.39500
zoomBox 636.04000 509.17800 710.32000 575.67400
zoomBox 627.86600 505.92100 715.25500 584.15300
zoomBox 618.25000 502.09000 721.06100 594.12800
zoomBox 593.62700 492.28100 735.92700 619.67000
zoomBox 577.96900 486.04400 745.38100 635.91300
zoomBox 559.54700 478.55200 756.50300 654.87000
zoomBox 537.87400 469.73900 769.58700 677.17200
zoomBox 447.08900 432.82300 824.39600 770.59300
zoomBox 299.26200 372.40400 913.64400 922.40700
zoomBox 58.55100 274.02100 1058.96900 1169.60900
zoomBox -181.04300 176.09500 1203.62000 1415.66400
zoomBox 13.49000 236.01300 1190.45400 1289.64700
zoomBox 178.84300 286.94400 1179.26300 1182.53300
zoomBox 319.39400 330.23500 1169.75100 1091.48600
zoomBox 438.86100 367.03200 1161.66500 1014.09600
zoomBox 344.80400 336.01000 1195.16200 1097.26200
zoomBox -49.18900 206.06100 1335.47900 1445.63400
zoomBox -441.35300 76.71500 1475.14400 1792.38900
zoomBox -984.14000 -102.30900 1668.45200 2272.32700
deselectAll
fit
