## Specify floorplan
floorPlan -coreMarginsBy io -r 0.987149575973 0.7 8 8 8 8

## Add Power Ring
addRing -nets {VPWR VGND} \
	-type core_rings \
	-follow core \
	-layer {top met4 bottom met4 left met5 right met5} \
	-width {top 1.8 bottom 1.8 left 1.8 right 1.8} \
	-spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} \
	-offset {top 1.8 bottom 1.8 left 1.8 right 1.8} \
	-center 0 \
	-threshold 0 \
	-jog_distance 0 \
	-snap_wire_center_to_grid None

## Add Power Stripes
addStripe -nets {VPWR VGND} \
	-layer met4 \
	-direction vertical \
	-width 1.8 -spacing 1.8 \
	-set_to_set_distance 70 \
	-start_from left \
	-start_offset 60 \
	-switch_layer_over_obs false \
	-max_same_layer_jog_length 2 \
	-padcore_ring_top_layer_limit met5 \
	-padcore_ring_bottom_layer_limit li1 \
	-block_ring_top_layer_limit met5 \
	-block_ring_bottom_layer_limit li1 \
	-use_wire_group 0 \
	-snap_wire_center_to_grid None


## Add Special Route
sroute -connect { blockPin padPin padRing corePin floatingStripe } \
	-layerChangeRange { li1(1) met5(6) } -blockPinTarget { nearestTarget } \
	-padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } \
	-corePinTarget { firstAfterRowEnd } \
	-floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } \
	-allowJogging 1 \
	-crossoverViaLayerRange { li1(1) met5(6) } \
	-nets { VGND VPWR } \
	-allowLayerChange 1 \
	-blockPin useLef \
	-targetViaLayerRange { li1(1) met5(6) }

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
	-maxRouteLayer 6 \
	-preserveRouting 1 \
	-rmAffectedRouting 0 \
	-checkRoute 0 -swapEEQ 0

## config cpu
#setMultiCpuUsage -localCpu 8 -cpuPerRemoteHost 1 -remoteHost 0 -keepLicense true
#setDistributeHost -local

## Place STD cells
#setPlaceMode -fp false
#place_design
