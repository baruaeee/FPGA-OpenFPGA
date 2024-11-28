(globals
  version = 3
  io_order = clockwise
  space = 10
  total_edge = 4
)
(iopad
  (topleft
    (inst name="Corner_TL" cell=padIORINGCORNER offset=0 orientation=R270)
  )

  (topright
    (inst name="Corner_TR" cell=padIORINGCORNER offset=0 orientation=R180)
  )

  (bottomright
    (inst name="Corner_BR" cell=padIORINGCORNER offset=0 orientation=R90)
  )
  (bottomleft
    (inst name="Corner_BL" cell=padIORINGCORNER offset=0 orientation=R0)
  )

  (left
    (inst name="pwr1" cell=PADVDD)
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (endspace gap=10)
  )

  (top
    (inst name="gnd1" cell=PADVSS)
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (endspace gap=10)
  )

  (right
    (inst name="pwr2" cell=PADVDD)
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (endspace gap=10)
  )

  (bottom
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="gnd2" cell=PADVSS)
    (inst name="pwr3")
    (inst name="pad_pReset")
    (inst name="pad_prog_clk")
    (inst name="pad_set")
    (inst name="pad_reset")
    (inst name="pad_clk")
    (inst name="pad_ccff_head")
    (inst name="pad_ccff_tail")
    (endspace gap=10)
  )

)
