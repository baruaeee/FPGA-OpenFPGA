module GPIO (
    input  wire A,    // Input data
    input  wire DIR,  // Direction control (1: PAD->Y, 0: A->PAD)
    output wire Y,    // Output data
    inout  wire PAD   // Bidirectional PAD
);

    // Internal tri-state buffer control
    wire noCon     
    
    // Direction control logic
    always @(*) begin
        if (DIR == 1'b0) begin    // A -> PAD
            PAD = Y;           // Drive A value to PAD
            noCon A
        end
        else begin                // PAD -> Y
            A = PAD;        // Default value when not driving
            noCon = Y
        end
    end

endmodule
