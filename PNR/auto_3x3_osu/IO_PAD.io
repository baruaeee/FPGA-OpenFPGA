(globals
	version = 3
	io_order = clockwise
	space = 20
	total_edge = 13
)
(iopad
	(topleft
		(inst name="Corner_TL"	cell=sky130_fd_io__corner_bus_overlay offset=0 orientation=R180 place_status = fixed)
	)
	(topright
		(inst name="Corner_TR"	cell=sky130_fd_io__corner_bus_overlay offset=0 orientation=R90 place_status = fixed)
	)
	(bottomright
		(inst name="Corner_BR"	cell=sky130_fd_io__corner_bus_overlay offset=0 orientation=R0 place_status = fixed)
	)
	(bottomleft
		(inst name="Corner_BL"	cell=sky130_fd_io__corner_bus_overlay offset=0 orientation=R270 place_status = fixed)
	)
	
	(left
		(inst name="pad_pwr1"	cell=sky130_fd_io__top_power_hvc_wpadv2 place_status = fixed orientation=R90)
		(inst name="grid_io_left_0__1_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R90)
		(inst name="grid_io_left_0__1_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R90)
		(inst name="grid_io_left_0__1_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R90)
		(inst name="grid_io_left_0__1_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R90)
		(inst name="grid_io_left_0__1_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R90)
		(inst name="grid_io_left_0__1_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R90)
		(inst name="grid_io_left_0__1_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R90)
		(inst name="grid_io_left_0__1_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R90)
		(inst name="grid_io_top_1__2_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R90)
		(inst name="grid_io_top_1__2_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R90)
	)
	(top
		(inst name="pad_gnd1"	cell=sky130_fd_io__top_ground_hvc_wpad place_status = fixed orientation=R0)
		(inst name="grid_io_top_1__2_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R0)
		(inst name="grid_io_top_1__2_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R0)
		(inst name="grid_io_top_1__2_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R0)
		(inst name="grid_io_top_1__2_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R0)
		(inst name="grid_io_top_1__2_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R0)
		(inst name="grid_io_top_1__2_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R0)
		(inst name="grid_io_right_2__1_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R0)
		(inst name="grid_io_right_2__1_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R0)
		(inst name="grid_io_right_2__1_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R0)
		(inst name="grid_io_right_2__1_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=R0)
	)
	(right
		(inst name="pad_pwr2"	cell=sky130_fd_io__top_power_hvc_wpadv2 place_status = fixed orientation=MX90)
		(inst name="grid_io_right_2__1_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX90)
		(inst name="grid_io_right_2__1_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX90)
		(inst name="grid_io_right_2__1_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX90)
		(inst name="grid_io_right_2__1_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX90)
		(inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX90)
		(inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX90)
		(inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX90)
		(inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX90)
		(inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX90)
		(inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX90)	
	)
	(bottom
		(inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed offset=236.665 orientation=MX)
		(inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX)
		(inst name="pad_gnd2"	cell=sky130_fd_io__top_ground_hvc_wpad place_status = fixed offset=566.665 orientation=MX)
		(inst name="pad_pwr3"	cell=sky130_fd_io__top_power_hvc_wpadv2 place_status = fixed offset=671.665 orientation=MX)
		(inst name="pad_pReset/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed offset=776.665 orientation=MX)
		(inst name="pad_prog_clk/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX)
		(inst name="pad_set/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX)
		(inst name="pad_reset/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX)
		(inst name="pad_clk/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX)
		(inst name="pad_ccff_head/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX)
		(inst name="pad_ccff_tail/gpio" cell=sky130_fd_io__top_gpio_ovtv2 place_status = fixed orientation=MX)
	)
)
