## Specify floorplan
#floorPlan -coreMarginsBy io -r 1.00 0.71 8 8 8 8
#floorPlan -site 18T -b 0 0 1468.665 1468.665 199.856 200.098 1265 1265 220.016 220.078 1245 1245
floorPlan -site CoreSite -noSnapToGrid -d 2118.665 2118.665 80 80 80 80
#floorPlan -site 18T -noSnapToGrid -d 1468.665 1468.665 80 80 80 80
# 0 0 1468.665 1468.665 199.856 200.098 1265 1265 220.016 220.078 1245 1245

loadIoFile IO_PAD.io

## IO filler
# no IO filler cell in sky 130

setDesignMode -process 130

## P/G connect
globalNetConnect VDD -type pgpin -pin vdd -override -verbose -netlistOverride
globalNetConnect VSS -type pgpin -pin gnd -override -verbose -netlistOverride

globalNetConnect VDD -type pgpin -pin VDDIO -override -verbose -netlistOverride
globalNetConnect VSS -type pgpin -pin VSSIO -override -verbose -netlistOverride

globalNetConnect VSS -type pgpin -pin VSSD -override -verbose -netlistOverride

globalNetConnect VDD -type pgpin -pin VSWITCH -override -verbose -netlistOverride

globalNetConnect VDD -type pgpin -pin VDDA -override -verbose -netlistOverride
globalNetConnect VSS -type pgpin -pin VSSA -override -verbose -netlistOverride

globalNetConnect VDD -type pgpin -pin VDDIO_Q -override -verbose -netlistOverride
globalNetConnect VSS -type pgpin -pin VSSIO_Q -override -verbose -netlistOverride

globalNetConnect VDD -type pgpin -pin P_CORE -override -verbose -netlistOverride
globalNetConnect VSS -type pgpin -pin G_CORE -override -verbose -netlistOverride

## Add Power Ring
addRing -nets {VDD VSS} \
	-type core_rings \
	-follow core \
	-layer {top met5 bottom met5 left met4 right met4} \
	-width {top 5 bottom 5 left 5 right 5} \
	-spacing {top 5 bottom 5 left 5 right 5} \
	-offset {top 20 bottom 20 left 20 right 20} \
	-center 0 \
	-threshold 0 \
	-jog_distance 0 \
	-snap_wire_center_to_grid None

## Add Special Route
sroute -connect { blockPin padPin corePin floatingStripe } \
	-layerChangeRange { met1(1) met5(5) } -blockPinTarget { nearestTarget } \
	-padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } \
	-corePinTarget { firstAfterRowEnd } \
	-floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } \
	-allowJogging 1 \
	-crossoverViaLayerRange { met1(1) met5(5) } \
	-nets { VSS VDD } \
	-allowLayerChange 1 \
	-blockPin useLef \
	-targetViaLayerRange { met1(1) met5(5) }

## Add Power Stripes
addStripe -nets {VDD VSS} \
	-layer met4 \
	-direction vertical \
	-width 5 -spacing 5 \
	-set_to_set_distance 120 \
	-start_from left \
	-start_offset 120 \
	-switch_layer_over_obs false \
	-max_same_layer_jog_length 2 \
	-padcore_ring_top_layer_limit met5 \
	-padcore_ring_bottom_layer_limit met1 \
	-block_ring_top_layer_limit met5 \
	-block_ring_bottom_layer_limit met1 \
	-use_wire_group 0 \
	-snap_wire_center_to_grid None


## config place mode
setPlaceMode -congEffort auto \
	-timingDriven 1 \
	-clkGateAware 1 \
	-powerDriven 0 \
	-ignoreScan 1 \
	-reorderScan 0 \
	-ignoreSpare 0 \
	-placeIOPins 0 \
	-moduleAwareSpare 0 \
	-maxRouteLayer 6 \
	-preserveRouting 1 \
	-rmAffectedRouting 0 \
	-checkRoute 0 -swapEEQ 0

## config cpu
setMultiCpuUsage -localCpu 8 -cpuPerRemoteHost 1 -remoteHost 0 -keepLicense true

## Place STD cells
setPlaceMode -fp false
#place_design

## Pre-CTS optimization
#optDesign -preCTS

## CTS
##without specification file
#create_ccopt_clock_tree_spec ## create specification file from SDC file
#ccopt_design

## Post CTS Optimization
#timeDesign -postCTS
#optDesign -postCTS
#timeDesign -postCTS

## Routing
setNanoRouteMode -quiet -drouteFixAntenna 1
setNanoRouteMode -quiet -routeInsertAntennaDiode 0
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithEco 0
setNanoRouteMode -quiet -routeWithLithoDriven 0
setNanoRouteMode -quiet -droutePostRouteLithoRepair 0
setNanoRouteMode -quiet -routeWithSiDriven 0
setNanoRouteMode -quiet -drouteAutoStop 1
setNanoRouteMode -quiet -routeSelectedNetOnly 0
setNanoRouteMode -quiet -routeTopRoutingLayer 5
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 1
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail

