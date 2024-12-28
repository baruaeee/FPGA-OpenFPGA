## Specify floorplan
floorPlan -coreMarginsBy io -r 0.987149575973 0.7 16 16 16 16

## Add Power Ring
addRing -nets {VDD VSS} \
	-type core_rings \
	-follow core \
	-layer {top met5 bottom met5 left met4 right met4} \
	-width {top 3 bottom 3 left 3 right 3} \
	-spacing {top 3 bottom 3 left 3 right 3} \
	-offset {top 3 bottom 3 left 3 right 3} \
	-center 0 \
	-threshold 0 \
	-jog_distance 0 \
	-snap_wire_center_to_grid None

## Add Power Stripes
addStripe -nets {VDD VSS} \
	-layer met4 \
	-direction vertical \
	-width 3 -spacing 3 \
	-set_to_set_distance 255 \
	-start_from left \
	-start_offset 255 \
	-switch_layer_over_obs false \
	-max_same_layer_jog_length 2 \
	-padcore_ring_top_layer_limit met5 \
	-padcore_ring_bottom_layer_limit met1 \
	-block_ring_top_layer_limit met5 \
	-block_ring_bottom_layer_limit met1 \
	-use_wire_group 0 \
	-snap_wire_center_to_grid None

## Add Special Route
sroute -connect { blockPin padPin padRing corePin floatingStripe } \
	-layerChangeRange { met1(1) met5(5) } \
	-blockPinTarget { nearestTarget } \
	-padPinPortConnect { allPort oneGeom } \
	-padPinTarget { nearestTarget } \
	-corePinTarget { firstAfterRowEnd } \
	-floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } \
	-allowJogging 1 \
	-crossoverViaLayerRange { met1(1) met5(5) } \
	-nets { VDD VSS } \
	-allowLayerChange 1 \
	-blockPin useLef \
	-targetViaLayerRange { met1(1) met5(5) }

## config place mode
setPlaceMode -congEffort auto \
	-timingDriven 1 \
	-clkGateAware 1 \
	-powerDriven 0 \
	-ignoreScan 1 \
	-reorderScan 0 \
	-ignoreSpare 0 \
	-placeIOPins 1 \
	-moduleAwareSpare 0 \
	-maxRouteLayer 5 \
	-preserveRouting 1 \
	-rmAffectedRouting 0 \
	-checkRoute 0 -swapEEQ 0

## config cpu
#setMultiCpuUsage -localCpu 8 -cpuPerRemoteHost 1 -remoteHost 0 -keepLicense true
#setDistributeHost -local

## Place STD cells
#setPlaceMode -fp false
#place_design
