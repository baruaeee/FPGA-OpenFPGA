
// Generated by Cadence Genus(TM) Synthesis Solution 22.13-s093_1
// Generated on: Nov  3 2024 01:29:11 CET (Nov  3 2024 00:29:11 UTC)

// Verification Directory fv/GPIO 

module GPIO(A, Y, PAD, DIR);
  input A, DIR;
  output Y;
  inout PAD;
  wire A, DIR;
  wire Y;
  wire PAD;
  wire n_0, n_1;
  sky130_osu_sc_18T_hs__tbufi_l g1__2398(.A (n_1), .OE (DIR), .Y (Y));
  sky130_osu_sc_18T_hs__inv_l g5(.A (PAD), .Y (n_1));
  sky130_osu_sc_18T_hs__tnbufi_l g2__5107(.A (n_0), .OE (DIR), .Y
       (PAD));
  sky130_osu_sc_18T_hs__inv_l g6(.A (A), .Y (n_0));
endmodule

