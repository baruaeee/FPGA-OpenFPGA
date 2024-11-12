## Specify floorplan
floorPlan -coreMarginsBy io -r 0.99 0.71 5 5 5 5
#floorPlan -site 18T -b 0 0 1468.665 1468.665 199.856 200.098 1265 1265 220.016 220.078 1245 1245
#floorPlan -site 18T -noSnapToGrid -d 1468.665 1468.665 80 80 80 80
# 0 0 1468.665 1468.665 199.856 200.098 1265 1265 220.016 220.078 1245 1245

#loadIoFile IO_PAD.io

## IO filler
# no IO filler cell in sky 130

setDesignMode -process 45

## P/G connect
globalNetConnect VDD -type pgpin -pin VDD -override -verbose -netlistOverride
globalNetConnect VSS -type pgpin -pin VSS -override -verbose -netlistOverride
#globalNetConnect VSSIO -type pgpin -pin VSSIO -override -verbose -netlistOverride
#globalNetConnect VDDIO -type pgpin -pin VDDIO -override -verbose -netlistOverride

## Add Power Ring
addRing -nets {VDD VSS} \
	-type core_rings \
	-follow core \
	-layer {top Metal11 bottom Metal11 left Metal10 right Metal10} \
	-width {top 1 bottom 1 left 1 right 1} \
	-spacing {top 1 bottom 1 left 1 right 1} \
	-offset {top 1 bottom 1 left 1 right 1} \
	-center 0 \
	-threshold 0 \
	-jog_distance 0 \
	-snap_wire_center_to_grid None

## Add Special Route
sroute -connect { blockPin padPin padRing corePin floatingStripe } \
	-layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } \
	-padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } \
	-corePinTarget { firstAfterRowEnd } \
	-floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } \
	-allowJogging 1 \
	-crossoverViaLayerRange { Metal1(1) Metal11(11) } \
	-nets { VSS VDD } \
	-allowLayerChange 1 \
	-blockPin useLef \
	-targetViaLayerRange { Metal1(1) Metal11(11) }

## Add Power Stripes
addStripe -nets {VDD VSS} \
	-layer Metal10 \
	-direction vertical \
	-width 1.8 -spacing 1.8 \
	-set_to_set_distance 29 \
	-start_from left \
	-start_offset 27 \
	 -stop_offset 0 \
	-switch_layer_over_obs false \
	-max_same_layer_jog_length 2 \
	-padcore_ring_top_layer_limit Metal11 \
	-padcore_ring_bottom_layer_limit Metal1 \
	-block_ring_top_layer_limit Metal11 \
	-block_ring_bottom_layer_limit Metal1 \
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


