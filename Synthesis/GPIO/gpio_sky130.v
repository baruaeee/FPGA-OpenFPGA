//-----------------------------------------------------
// Design Name : General Purpose I/Os
// File Name   : gpio_sky130.v
// Coder       : Sajib Barua
//-----------------------------------------------------

//-----------------------------------------------------
// Function    : A typical general purpose I/O
//-----------------------------------------------------
module GPIO (
  input A, // Data output => write to external/PAD  || direction A to PAD
  output Y, // Data input => read from external/PAD || direction PAD to Y
  inout PAD, // bi-directional pad
  input DIR //----- when direction enabled(1), the signal is propagated from PAD to data input(Y)
);
  wire tie_hi_esd;

  sky130_fd_io__top_gpio_ovtv2 gpio(
    // Direction PAD to IN => input buffer enable
    // REF. assign IN   = (x_on_in_lv ===1 || pwr_good_inpbuff_lv===0) ? 1'bx : (disable_inp_buff_lv===1 ? 0 : (^PAD===1'bx ? 1'bx : PAD));
    .IN(Y),
    .INP_DIS(~DIR), // when DIR==1(INP_DIS==0), the signal is propagated from PAD to Y(IN)||input buffer enbled (active low)
    .ENABLE_INP_H(tie_hi_esd), // enable input buffer powr on/off. hard-tie to either tie_hi_esd or tie_lo_esd and should not be register controlled.
    .TIE_HI_ESD(tie_hi_esd), // connected to VDDIO/Logic High
    .VTRIP_SEL(1'b0), // define input buffer voltage 30%/70% of Vddio.
    .HYS_TRIM(1'b0), // input buffer ref. signaling voltage < 2.2v selected
    .IB_MODE_SEL(2'b00), // input buffer mode CMOS selected
//  .VINREF // only used when IB_MODE_SEL(10/11) selected

    // Direction OUT to PAD => Output buffer enable
    // REF. out_final  	<= (^out_buf  === 1'bx  || !pwr_good_hold_ovr_mode) ? 1'bx   : out_buf;
    // if (^ENABLE_H===1'bx || !pwr_good_hold_mode || (ENABLE_H===1 && (^hld_h_n_buf===1'bx ||(hld_h_n_buf===0 &&  hld_ovr_final===1'bx)||(hld_h_n_buf===1 &&  hld_ovr_final===1'bx)))) ------- this conditions restrict output buffer flow
    .OUT(A),
    .OE_N(DIR), //when DIR==0, the signal is propagated from OUT to pad|| outpu buffer enabled (active low)
    .HLD_H_N(1'b1), // When hld_h_n=1, HLD_OVR signal is ignored (active low)
    .ENABLE_H(1'b1), // The enable_h signal takes priority over the hld_h_n signal|| PAD I/O enable
    .ENABLE_VDDA_H(1'b0), // The master enable signal to the I/O-cell’s analog section (1'b0 =>disabled)
    .ENABLE_VDDIO(1'b1), // I/O pwr supply enabled
    .ENABLE_VSWITCH_H(1'b0), // vswitch disabled
    .SLOW(1'b0), // output slew rate default selected
//  .SLEW_CTL, // needed only for I2C config
    .HLD_OVR(1'b0), // // No hold override (normal)
    .ANALOG_EN(1'b0), // Analog mode disabled
    .ANALOG_SEL(1'bx), //  Analog mode disabled
    .ANALOG_POL(1'bx), //  Analog mode disabled
    .DM(3'b110), // Strong pull-up/down mode

    .PAD(PAD)
);
endmodule


