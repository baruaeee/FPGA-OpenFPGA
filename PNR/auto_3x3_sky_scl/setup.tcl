source fabric_comb_test.globals
#source fabric_comb_test_IO.globals
init_design

#loadIoFile IO_PAD.io
#loadIoFile IO_PAD_corner_edited.io
loadIoFile Multi_Row_IO_PAD.io


## Specify floorplan
#floorPlan -coreMarginsBy io -r 1.00 0.71 40.02 40.02 40.02 40.02
floorPlan -site CoreSite -b 0.0 0.0 1584.24 1596.2 440.12 440.12 1144.12 1156.08 479.32 479.32 1104.92 1116.42
#floorPlan -site CoreSite -noSnapToGrid -d 2118.665 2118.665 80 80 80 80
#floorPlan -site CoreSite -d 1584.24 1596.2 39.4 39.4 39.86 39.86
#floorPlan -site CoreSite -b 0 0 1584.24 1596.2 440.22 447.58 1144.02 1148.62 480.24 487.6 1104 1108.6

## Check Floorplan
checkDesign -floorplan


## IO filler
# no IO filler cell in sky 130

setDesignMode -process 130

## P/G connect
globalNetConnect VDD -type pgpin -pin VDD -override -verbose -netlistOverride
globalNetConnect VSS -type pgpin -pin VSS -override -verbose -netlistOverride

globalNetConnect P_CORE -type pgpin -pin VDD -override -verbose -netlistOverride
globalNetConnect G_CORE -type pgpin -pin VSS -override -verbose -netlistOverride

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

## Add Power Ring
addRing -nets {P_CORE G_CORE} \
	-type core_rings \
	-follow core \
	-layer {top met5 bottom met5 left met4 right met4} \
	-width {top 4 bottom 4 left 4 right 4} \
	-spacing {top 4 bottom 4 left 4 right 4} \
	-offset {top 10 bottom 10 left 10 right 10} \
	-center 0 \
	-threshold 0 \
	-jog_distance 0 \
	-snap_wire_center_to_grid None

## Add Special Route in Core
sroute -connect { corePin floatingStripe } \
	-layerChangeRange { met1(1) met5(5) } -blockPinTarget { nearestTarget } \
	-padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } \
	-corePinTarget { firstAfterRowEnd } \
	-floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } \
	-allowJogging 1 \
	-crossoverViaLayerRange { met1(1) met5(5) } \
	-nets { P_CORE G_CORE } \
	-allowLayerChange 1 \
	-blockPin useLef \
	-targetViaLayerRange { met1(1) met5(5) }

## Add Special Route in PAD Ring
sroute -connect { padRing } -layerChangeRange { met1(1) met5(5) } -blockPinTarget { nearestTarget } -allowJogging 1 -crossoverViaLayerRange { met1(1) met5(5) } -nets { AMUXBUS_A AMUXBUS_B VCCD VCCHIB VDDA VDDIO VDDIO_Q VSSA VSSD VSSIO VSSIO_Q VSWITCH } -allowLayerChange 1 -targetViaLayerRange { met1(1) met5(5) }

## Add Special Route between PADs and Power Ring
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { padPin } -layerChangeRange { met1(1) met5(5) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -allowJogging 1 -crossoverViaLayerRange { met1(1) met5(5) } -nets { G_CORE P_CORE } -allowLayerChange 1 -targetViaLayerRange { met1(1) met5(5) }


## Add Power Stripes
addStripe -nets {P_CORE G_CORE} \
	-layer met4 \
	-direction vertical \
	-width 5 -spacing 5 \
	-set_to_set_distance 130 \
	-start_from left \
	-start_offset 110 \
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
	-maxRouteLayer 5 \
	-preserveRouting 1 \
	-rmAffectedRouting 0 \
	-checkRoute 0 -swapEEQ 0

## config cpu
setMultiCpuUsage -localCpu 8 -cpuPerRemoteHost 1 -remoteHost 0 -keepLicense true

## Place STD cells
setPlaceMode -fp false
place_design

## Pre-CTS optimization
timeDesign -preCTS
optDesign -preCTS

## CTS
##without specification file
#set_ccopt_property buffer_cells "BUFX16 BUFX2 BUFX4 BUFX8 CLKBUFX2 CLKBUFX4 CLKBUFX8"
## create specification file from SDC file
#create_ccopt_clock_tree_spec
#get_ccopt_clock_trees * 
#ccopt_design
#clock_ccopt_design

## Post CTS Optimization
#timeDesign -postCTS
#optDesign -postCTS
#timeDesign -postCTS

## Routing
#setNanoRouteMode -quiet -drouteFixAntenna 1
#setNanoRouteMode -quiet -routeInsertAntennaDiode 0
#setNanoRouteMode -quiet -routeWithTimingDriven 1
#setNanoRouteMode -quiet -routeWithEco 0
#setNanoRouteMode -quiet -routeWithLithoDriven 0
#setNanoRouteMode -quiet -droutePostRouteLithoRepair 0
#setNanoRouteMode -quiet -routeWithSiDriven 0
#setNanoRouteMode -quiet -drouteAutoStop 1
#setNanoRouteMode -quiet -routeSelectedNetOnly 0
#setNanoRouteMode -quiet -routeTopRoutingLayer 5
#setNanoRouteMode -quiet -routeBottomRoutingLayer 1
#setNanoRouteMode -quiet -drouteEndIteration 1
#setNanoRouteMode -quiet -routeWithTimingDriven true
#setNanoRouteMode -quiet -routeWithSiDriven false
#routeDesign -globalDetail

## Post Routing
#setDelayCalMode -SIAware false
#setAnalysisMode -analysisType onChipVariation
#timeDesign -postRoute
#optDesign -postRoute
#exit
