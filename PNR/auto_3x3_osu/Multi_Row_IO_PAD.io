(globals
  version = 3
  io_order = clockwise
  space = 20
  total_edge = 4
)
(row_margin
  (top
    (io_row ring_number=1 margin=0)
    (io_row ring_number=2 margin=240)
  )
  (right
    (io_row ring_number=1 margin=0)
    (io_row ring_number=2 margin=240)
  )
  (bottom
    (io_row ring_number=1 margin=0)
    (io_row ring_number=2 margin=240)
  )
  (left
    (io_row ring_number=1 margin=0)
    (io_row ring_number=2 margin=240)
  )
)
(iopad
  (topleft
    (locals ring_number=2)
    (inst name="Corner_TL2" cell=sky130_fd_io__corner_bus_overlay offset=0 orientation=R90 place_status = softfixed)
    (locals ring_number=1)
    (endspace gap=20)
    (inst name="Corner_TL1" cell=sky130_fd_io__corner_bus_overlay offset=0 orientation=R90 space=20 place_status = softfixed)
  )

  (topright
    (locals ring_number=2)
    (inst name="Corner_TR2" cell=sky130_fd_io__corner_bus_overlay offset=0 orientation=R0 place_status = softfixed)
    (locals ring_number=1)
    (endspace gap=20)
    (inst name="Corner_TR1" cell=sky130_fd_io__corner_bus_overlay offset=0 orientation=R0 space=20 place_status = softfixed)
  )

  (bottomright
    (locals ring_number=2)
    (inst name="Corner_BR2" cell=sky130_fd_io__corner_bus_overlay orientation=R270 place_status = softfixed)
    (locals ring_number=1)
    (endspace gap=20)
    (inst name="Corner_BR1" cell=sky130_fd_io__corner_bus_overlay orientation=R270 place_status = softfixed)
  )
  (bottomleft
    (locals ring_number=2)
    (inst name="Corner_BL2" cell=sky130_fd_io__corner_bus_overlay orientation=R180 place_status = softfixed)
    (locals ring_number=1)
    (endspace gap=20)
    (inst name="Corner_BL1" cell=sky130_fd_io__corner_bus_overlay orientation=R180 place_status = softfixed)
  )

  (left
    (locals ring_number=2)
    (inst name="pad_pwr1" cell=sky130_fd_io__top_power_hvc_wpadv2 place_status = softfixed orientation=R90 skip=37)
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R90 skip=37)
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R90 skip=37)
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R90 skip=37)

    (locals ring_number=1)
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R90)
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R90)
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R90)
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R90)
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R90)
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R90)
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R90)
  )

  (top
    (locals ring_number=2)
    (inst name="pad_gnd1" cell=sky130_fd_io__top_ground_hvc_wpad place_status = softfixed orientation=R0 skip=33)
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R0 skip=33)
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R0 skip=33)
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R0 skip=33)


    (locals ring_number=1)
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R0)
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R0)
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R0)
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R0)
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R0)
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R0)
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=R0)
  )

  (right
    (locals ring_number=2)
    (inst name="pad_pwr2" cell=sky130_fd_io__top_power_hvc_wpadv2 place_status = softfixed orientation=MX90)
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=MX90 skip=37)
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=MX90 skip=37)
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=MX90 skip=37)


    (locals ring_number=1)
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=MX90)
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=MX90)
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=MX90)
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=MX90)
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=MX90)
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=MX90)
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=MX90)
  )

 (bottom
    (locals ring_number=2)
#### PG pins start
    (inst name="pad_gnd2" cell=sky130_fd_io__top_ground_hvc_wpad place_status = softfixed orientation=MX skip=30)
    (inst name="pad_pwr3" cell=sky130_fd_io__top_power_hvc_wpadv2 place_status = softfixed orientation=MX skip=35)
#### PG pins end
    (inst name="pad_prog_clk/gpio" place_status = softfixed orientation=MX skip=35)
    (inst name="pad_clk/gpio" place_status = softfixed orientation=MX skip=35)



    (locals ring_number=1)
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=MX skip=30)
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/GPIO_0_/gpio" place_status = softfixed orientation=MX skip=30)
    (inst name="pad_pReset/gpio" place_status = softfixed orientation=MX)
    (inst name="pad_set/gpio" place_status = softfixed orientation=MX)
    (inst name="pad_reset/gpio" place_status = softfixed orientation=MX)
    (inst name="pad_ccff_head/gpio" place_status = softfixed orientation=MX)
    (inst name="pad_ccff_tail/gpio" place_status = softfixed orientation=MX)
 )

)