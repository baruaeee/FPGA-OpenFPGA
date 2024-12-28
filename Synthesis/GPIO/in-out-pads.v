module GPIO_IN(Y, PAD);
  output Y;
  inout PAD;
  wire Y;
  wire PAD;
  wire tie_hi_esd, tie_lo_esd;
  sky130_fd_io__top_gpio_ovtv2 gpio(.IN (Y), .INP_DIS (tie_lo_esd),
       .ENABLE_INP_H (tie_hi_esd), .TIE_HI_ESD (tie_hi_esd),
       .TIE_LO_ESD (tie_lo_esd), .VTRIP_SEL (tie_lo_esd), .HYS_TRIM
       (tie_lo_esd), .IB_MODE_SEL (2'b0), .OE_N (tie_hi_esd), .HLD_H_N
       (tie_hi_esd), .ENABLE_H (tie_hi_esd), .ENABLE_VDDA_H
       (tie_lo_esd), .ENABLE_VDDIO (tie_hi_esd), .ENABLE_VSWITCH_H
       (tie_lo_esd), .SLOW (tie_lo_esd), .HLD_OVR (tie_lo_esd),
       .ANALOG_EN (tie_lo_esd), .ANALOG_SEL (1'b0), .ANALOG_POL (1'b0),
       .DM (3'b110), .PAD (PAD));
endmodule

module GPIO_OUT(A, PAD);
  input A;
  inout PAD;
  wire A;
  wire PAD;
  wire tie_hi_esd, tie_lo_esd;
  sky130_fd_io__top_gpio_ovtv2 gpio(.INP_DIS (tie_hi_esd),
       .ENABLE_INP_H (tie_hi_esd), .TIE_HI_ESD (tie_hi_esd),
       .TIE_LO_ESD (tie_lo_esd), .VTRIP_SEL (tie_lo_esd), .HYS_TRIM
       (tie_lo_esd), .IB_MODE_SEL (2'b0), .OUT (A), .OE_N (tie_lo_esd),
       .HLD_H_N (tie_hi_esd), .ENABLE_H (tie_hi_esd), .ENABLE_VDDA_H
       (tie_lo_esd), .ENABLE_VDDIO (tie_hi_esd), .ENABLE_VSWITCH_H
       (tie_lo_esd), .SLOW (tie_lo_esd), .HLD_OVR (tie_lo_esd),
       .ANALOG_EN (tie_lo_esd), .ANALOG_SEL (1'b0), .ANALOG_POL (1'b0),
       .DM (3'b110), .PAD (PAD));
endmodule

// pReset, prog_clk, set, reset, clk, gfpga_pad_GPIO_PAD, ccff_head, ccff_tail

module PADS_INnOUT(pReset, prog_clk, set, reset, clk, gfpga_pad_GPIO_PAD, ccff_head, ccff_tail);
  GPIO_IN pad_pReset(Y, PAD)
