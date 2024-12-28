`timescale 1ns / 1ps

`include "/home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/sky130_osu_sc_18T_hs.v"
`include "/home/cae1/Desktop/FPGA-OpenFPGA/Synthesis/GPIO/outputs/gpio_netlist.v"

module tb_GPIO;

    // Parameters
    reg A;          // Register for input A
    reg DIR;        // Register for direction control
    wire Y;        // Wire for output Y
    wire PAD;      // Bidirectional PAD
    
    // Instantiate the GPIO module
    GPIO uut (
        .A(A),
        .Y(Y),
        .PAD(PAD),
        .DIR(DIR)
    );
    
    // For bidirectional PAD testing
    reg pad_drive;
    reg pad_drive_en;
    assign PAD = pad_drive_en ? pad_drive : 1'bz;
    
    // Initial block for stimulus
    initial begin
        // Initialize inputs
        A = 1'b0;
        DIR = 1'b0;
	pad_drive = 0;
        pad_drive_en = 0;

	///--------------

	// Test output mode (DIR = 0, A -> PAD)
        #10;
        DIR = 0;
        pad_drive_en = 0;
        A = 1;
        #10;
        A = 0;
        #10;
        
        // Test input mode (DIR = 1, PAD -> Y)
        DIR = 1;
        pad_drive_en = 1;
        #10;
	$display("Test Case 1: DIR=%b, A=%b -> Y=%b, PAD=%b", DIR, A, Y, PAD);
        pad_drive = 1;
        #10;
	$display("Test Case 2: DIR=%b, A=%b -> Y=%b, PAD=%b", DIR, A, Y, PAD);
        pad_drive = 0;
        #10;
        $display("Test Case 3: DIR=%b, A=%b -> Y=%b, PAD=%b", DIR, A, Y, PAD);
        $finish;


	///--------------
	

        // Test Case 1: DIR = 0, A = 0
        //#10; // wait for 10 time units
        //$display("Test Case 1: DIR=%b, A=%b -> Y=%b, PAD=%b", DIR, A, Y, PAD);
        
        // Test Case 2: DIR = 0, A = 1
        //A = 1'b1;
        //#10; // wait for 10 time units
        //$display("Test Case 2: DIR=%b, A=%b -> Y=%b, PAD=%b", DIR, A, Y, PAD);
        
        // Test Case 3: DIR = 1, A = 0
        //DIR = 1'b1;
        //A = 1'b0;
        //#10; // wait for 10 time units
        //$display("Test Case 3: DIR=%b, A=%b -> Y=%b, PAD=%b", DIR, A, Y, PAD);
        
        // Test Case 4: DIR = 1, A = 1
        //A = 1'b1;
        //#10; // wait for 10 time units
        //$display("Test Case 4: DIR=%b, A=%b -> Y=%b, PAD=%b", DIR, A, Y, PAD);

        // Finish simulation
        //$finish;
    end

endmodule

