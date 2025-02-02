
// Generated by Cadence Genus(TM) Synthesis Solution 22.13-s093_1
// Generated on: Nov  8 2024 00:54:51 CET (Nov  7 2024 23:54:51 UTC)

// Verification Directory fv/GPIO 

module GPIO(A, DIR, Y, PAD);
  input A, DIR;
  output Y;
  inout PAD;
  wire A, DIR;
  wire Y;
  wire PAD;
  wire n_0;
  INVxp33_ASAP7_75t_SL g22(.A (A), .Y (n_0));
  AND2x2_ASAP7_75t_SL g27__2398(.A (DIR), .B (PAD), .Y (Y));
  NOR2xp33_ASAP7_75t_SL g28__5107(.A (DIR), .B (n_0), .Y (PAD));
endmodule

