//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: frac_lut6
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Oct 21 21:53:04 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6 -----
module logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6(pReset,
                                                                                                                 prog_clk,
                                                                                                                 frac_lut6_in,
                                                                                                                 ccff_head,
                                                                                                                 frac_lut6_lut5_out,
                                                                                                                 frac_lut6_lut6_out,
                                                                                                                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:5] frac_lut6_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:1] frac_lut6_lut5_out;
//----- OUTPUT PORTS -----
output [0:0] frac_lut6_lut6_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
wire [0:5] frac_lut6_in;
wire [0:1] frac_lut6_lut5_out;
wire [0:0] frac_lut6_lut6_out;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] frac_lut6_0_mode;
wire [0:0] frac_lut6_0_mode_inv;
wire [0:63] frac_lut6_0_sram;
wire [0:63] frac_lut6_0_sram_inv;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	frac_lut6 frac_lut6_0_ (
		.in(frac_lut6_in[0:5]),
		.sram(frac_lut6_0_sram[0:63]),
		.sram_inv(frac_lut6_0_sram_inv[0:63]),
		.mode(frac_lut6_0_mode),
		.mode_inv(frac_lut6_0_mode_inv),
		.lut5_out(frac_lut6_lut5_out[0:1]),
		.lut6_out(frac_lut6_lut6_out));

	frac_lut6_DFFR_mem frac_lut6_DFFR_mem (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(ccff_tail),
		.mem_out({frac_lut6_0_sram[0:63], frac_lut6_0_mode}),
		.mem_outb({frac_lut6_0_sram_inv[0:63], frac_lut6_0_mode_inv}));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6 -----

//----- Default net type -----
`default_nettype wire



