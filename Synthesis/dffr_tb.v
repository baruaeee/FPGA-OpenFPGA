`timescale 1ns / 1ps

module tb_DFFR;

//------------Inputs--------------
reg RST;
reg CK;
reg D;

//------------Outputs-------------
wire Q;
wire QN;

//------------Instantiate the Unit Under Test (UUT)--------------
DFFR uut (
    .RST(RST),
    .CK(CK),
    .D(D),
    .Q(Q),
    .QN(QN)
);

//------------Clock Generation--------------
initial begin
    CK = 0;
    forever #5 CK = ~CK; // Toggle clock every 5 time units
end

//------------Test Sequence--------------
initial begin
    // Initialize Inputs
    RST = 0;
    D = 0;

    // Create a VCD file for GTKWave
    $dumpfile("DFFR.vcd");
    $dumpvars(0, tb_DFFR);

    // Wait for global reset to finish
    #10;

    // Apply Reset
    RST = 1;
    #10; // Keep reset active for 10 time units
    RST = 0;

    // Test 1: Set D to 1
    D = 1;
    #10; // Wait for one clock cycle
    $display("Time: %0t | D: %b | Q: %b | QN: %b", $time, D, Q, QN);

    // Test 2: Set D to 0
    D = 0;
    #10; // Wait for one clock cycle
    $display("Time: %0t | D: %b | Q: %b | QN: %b", $time, D, Q, QN);

    // Test 3: Apply Reset again
    RST = 1;
    #10; // Keep reset active for 10 time units
    RST = 0;
    $display("Time: %0t | After Reset | Q: %b | QN: %b", $time, Q, QN);

    // Finish simulation
    #20;
    $finish;
end

endmodule // End of Testbench
