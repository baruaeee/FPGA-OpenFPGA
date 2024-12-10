loadIoFile IO_PAD.io

## Specify floorplan
floorPlan -coreMarginsBy io -r 0.99 0.71 40 40 40 40
#floorPlan -site 18T -b 0 0 1468.665 1468.665 199.856 200.098 1265 1265 220.016 220.078 1245 1245
#floorPlan -site 18T -noSnapToGrid -d 1468.665 1468.665 80 80 80 80
# 0 0 1468.665 1468.665 199.856 200.098 1265 1265 220.016 220.078 1245 1245


## IO filler
# no IO filler cell in sky 130

setDesignMode -process 45

## P/G connect
globalNetConnect VDD -type pgpin -pin VDD -override -verbose -netlistOverride
globalNetConnect VSS -type pgpin -pin VSS -override -verbose -netlistOverride
globalNetConnect VSSIOR -type pgpin -pin VSSIOR -override -verbose -netlistOverride
globalNetConnect VDDIOR -type pgpin -pin VDDIOR -override -verbose -netlistOverride

globalNetConnect VDD -type pgpin -pin VDD -singleInstance pwr3

## Add Power Ring
addRing -nets {VDD VSS} \
	-type core_rings \
	-follow core \
	-layer {top Metal11 bottom Metal11 left Metal10 right Metal10} \
	-width {top 3 bottom 3 left 3 right 3} \
	-spacing {top 3 bottom 3 left 3 right 3} \
	-offset {top 3 bottom 3 left 3 right 3} \
	-center 0 \
	-threshold 0 \
	-jog_distance 0 \
	-snap_wire_center_to_grid None

## Add Special Route
sroute -connect { blockPin padPin corePin floatingStripe } \
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
#addStripe -nets {VDD VSS} \
#	-layer Metal10 \
#	-direction vertical \
#	-width 3 -spacing 3 \
#	-set_to_set_distance 100 \
#	-start_from left \
#	-start_offset 100 \
#	 -stop_offset 0 \
#	-switch_layer_over_obs false \
#	-max_same_layer_jog_length 2 \
#	-padcore_ring_top_layer_limit Metal11 \
#	-padcore_ring_bottom_layer_limit Metal1 \
#	-block_ring_top_layer_limit Metal11 \
#	-block_ring_bottom_layer_limit Metal1 \
#	-use_wire_group 0 \
#	-snap_wire_center_to_grid None

## config place mode
#setPlaceMode -congEffort auto \
#	-timingDriven 1 \
#	-clkGateAware 1 \
#	-powerDriven 0 \
#	-ignoreScan 1 \
#	-reorderScan 0 \
#	-ignoreSpare 0 \
#	-placeIOPins 0 \
#	-moduleAwareSpare 0 \
#	-maxRouteLayer 6 \
#	-preserveRouting 1 \
#	-rmAffectedRouting 0 \
#	-checkRoute 0 -swapEEQ 0

## config cpu
#setMultiCpuUsage -localCpu 16 -cpuPerRemoteHost 1 -remoteHost 0 -keepLicense true

## Place STD cells
#setPlaceMode -fp false
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


