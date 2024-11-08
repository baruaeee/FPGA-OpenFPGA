(globals
	version = 3
	io_order = clockwise
	space = 20
	total_edge = 12
)
(iopad
	(topleft
		(inst name="Corner_TL"	cell=sky130_fd_io__corner_bus_overlay offset=0 orientation=R180)
	)


	(topright
		(inst name="Corner_TR"	cell=sky130_fd_io__corner_bus_overlay offset=0 orientation=R90)
	)

	(bottomright
		(inst name="Corner_BR"	cell=sky130_fd_io__corner_bus_overlay offset=0 orientation=R0)
	)
	(bottomleft
		(inst name="Corner_BL"	cell=sky130_fd_io__corner_bus_overlay offset=0 orientation=R270)
	)

	(left
		(inst name="pad_pReset"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_prog_clk"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_set"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_reset"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_clk"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_ccff_head"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_ccff_tail"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_0"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_1"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_2"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_3"	cell=sky130_fd_io__top_ground_hvc_wpad)
	)

	(top
		(inst name="pad_GPIO_4"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_5"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_6"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_7"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_8"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_9"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_10"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_11"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_12"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_13"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_14"	cell=sky130_fd_io__top_ground_hvc_wpad)
	)

	(right
		(inst name="pad_GPIO_15"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_16"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_17"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_18"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_19"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_20"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_21"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_22"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_23"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_24"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_25"	cell=sky130_fd_io__top_ground_hvc_wpad)
	)

	(bottom
		(inst name="pad_GPIO_26"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_27"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_28"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_29"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_30"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_GPIO_31"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_gnd"	cell=sky130_fd_io__top_ground_hvc_wpad)
		(inst name="pad_pwr"	cell=sky130_fd_io__top_ground_hvc_wpad)
	)
)
