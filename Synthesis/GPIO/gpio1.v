//-----------------------------------------------------
// Design Name : General Purpose I/Os
// File Name   : gpio.v
// Coder       : Xifan TANG
//-----------------------------------------------------

//-----------------------------------------------------
// Function    : A minimum general purpose I/O
//-----------------------------------------------------
module GPIO (
  input A, // Data output
  output Y, // Data input
  inout PAD, // bi-directional pad
  input DIR // direction control
);
  
  
  //----- when direction is disabled, the signal is propagated from data out to pad
  //assign PAD = DIR ? 1'bz : A;
  wire inp_dis, slow, vtrip_sel, hys_trm, oe_n;
  wire [2:0] dm;
  wire [1:0] ibm_sel;
  
  sky130_fd_io__top_gpio_ovtv2 pad (
  .OE_N(oe_n), // when OE_N = 0 output buffer enabled
  // ref. https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_io/docs/user_guide.html
  // section: Independent control of input and output buffer enables//
  // "https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_io/docs/user_guide.html#id76" 
  .INP_DIS(inp_dis),
  .DM(dm),
  .SLOW(slow),
  .VTRIP_SEL(1'b0),	// VTRIP_SEL = 0 => logic low= 0.3*vddio, high = 0.7*vddio
  .HYS_TRIM(1'b0),	// HYS_TRIM = 1 => input signal(V)> 2.2V for otherwise => 0
  .IB_MODE_SEL(2'b00),	// IB_MODE_SEL[1:0] = 00 => CMOS mode
  .IN(Y),
  .OUT(A),
  .PAD(PAD),
  .HLD_H_N(1'b1),
  .ENABLE_H(1'b1),
  .ENABLE_VDDIO(1'b1),
  .ANALOG_EN(1'b0)
);


//----- Input configuration -----//
// for GPIO PAD (SKY130) Input denoted as "OUT"
// because it is input to the internal core output
// for this GPIO module it is equivanelt of "A"
// as "A" corresponds data from core to PAD it controlled by
// output buffer
// OE_N, DM[2], DM[1], DM[0], SLOW, SLEW_CTL[1], SLEW_CTL[0]


  // ref. https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_io/docs/user_guide.html
  // section: Independent control of input and output buffer enables//
  // "https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_io/docs/user_guide.html#id76" 
  assign inp_dis = DIR; // when INP_DIS = 1 input buffer disabled
  assign oe_n = ~DIR;
  assign dm[2:0] = DIR ? 3'b110 : 3'b010; // DM(110) => strong pullup/pulldown; DM(001) => input only
  assign slow = 0; // slow = 1 => slew rate slower/ = 0 => default


//----- Output configuration -----//
// for GPIO PAD (SKY130) Outout denoted as "IN"
// because it is input to the internal core inpuput
// for this GPIO module it is equivanelt of "Y"
// as "Y" corresponds data from PAD to core it controlled by
// input buffer

endmodule


