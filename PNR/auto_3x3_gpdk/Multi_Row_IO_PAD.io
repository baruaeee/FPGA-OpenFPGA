(globals
  version = 3
  io_order = clockwise
  space = 10
  total_edge = 4
)
(row_margin
  (top
    (io_row ring_number=1 margin=0)
    (io_row ring_number=2 margin=260)
  )
  (right
    (io_row ring_number=1 margin=0)
    (io_row ring_number=2 margin=260)
  )
  (bottom
    (io_row ring_number=1 margin=0)
    (io_row ring_number=2 margin=260)
  )
  (left
    (io_row ring_number=1 margin=0)
    (io_row ring_number=2 margin=260)
  )
)
(iopad
  (topleft
    (locals ring_number=1)
    (inst name="Corner_TL" cell=padIORINGCORNER offset=0 orientation=R180)
  )

  (topright
    (locals ring_number=1)
    (inst name="Corner_TR" cell=padIORINGCORNER offset=0 orientation=R90)
  )

  (bottomright
    (locals ring_number=1)
    (inst name="Corner_BR" cell=padIORINGCORNER offset=0 orientation=R0)
  )
  (bottomleft
    (locals ring_number=1)
    (inst name="Corner_BL" cell=padIORINGCORNER offset=0 orientation=R270)
  )

  (left
    (locals ring_number=2)
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (locals ring_number=1)
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_left_0__1_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
  (endspace gap=10)
  )

  (bottom
    (locals ring_number=1)
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (locals ring_number=2)
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_bottom_1__0_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
  (endspace gap=10)
  )

  (right
    (locals ring_number=1)
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (locals ring_number=2)
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_right_2__1_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
  (endspace gap=10)
  )

  (locals ring_number=1)
  (top
    (locals ring_number=1)
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
  )
  (locals ring_number=2)
  (top
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
    (inst name="grid_io_top_1__2_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/PADDB_0_")
  (endspace gap=10)
  )
)
