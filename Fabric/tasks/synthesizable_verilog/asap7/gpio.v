//-----------------------------------------------------
// Design Name : General Purpose I/Os
// File Name   : gpio.v
// Coder       : Xifan TANG
//-----------------------------------------------------

//-----------------------------------------------------
// Function    : A minimum general purpose I/O
//-----------------------------------------------------
module gpio (
  input A, // Data output
  output Y, // Data input
  inout PAD, // bi-directional pad
  input DIR // direction control
);
  //----- when direction enabled, the signal is propagated from PAD to data input
  assign Y = DIR ? PAD : 1'bz;
  //----- when direction is disabled, the signal is propagated from data out to pad
  assign PAD = DIR ? 1'bz : A;
endmodule

module GPIO (
    input wire A,       // Data output
    output reg Y,       // Data input
    output reg PAD,     // Bi-directional pad
    input wire DIR      // Direction control
);

    // Always block to control the direction and the data flow
    always @(*) begin
        if (DIR) begin
            // When direction is enabled, output from PAD to Y
            Y = PAD;  // Read data from PAD
            PAD = 1'b0; // Set PAD to a default value (e.g., logic low)
        end else begin
            // When direction is disabled, output from A to PAD
            Y = 1'b0;  // Set Y to a default value (e.g., logic low)
            PAD = A;   // Drive PAD with data from A
        end
    end
endmodule