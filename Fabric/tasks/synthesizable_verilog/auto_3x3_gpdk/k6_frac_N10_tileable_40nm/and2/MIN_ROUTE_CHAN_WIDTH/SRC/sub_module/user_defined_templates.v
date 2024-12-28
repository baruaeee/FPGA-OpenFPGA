//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Template for user-defined Verilog modules
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Nov 27 19:26:12 2024
//-------------------------------------------
// ----- Template Verilog module for INVX1LVT -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for INVX1LVT -----
module INVX1LVT(A,
                Y);
//----- INPUT PORTS -----
input [0:0] A;
//----- OUTPUT PORTS -----
output [0:0] Y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for INVX1LVT -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for BUFX4LVT -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for BUFX4LVT -----
module BUFX4LVT(A,
                Y);
//----- INPUT PORTS -----
input [0:0] A;
//----- OUTPUT PORTS -----
output [0:0] Y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for BUFX4LVT -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for INVX4LVT -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for INVX4LVT -----
module INVX4LVT(A,
                Y);
//----- INPUT PORTS -----
input [0:0] A;
//----- OUTPUT PORTS -----
output [0:0] Y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for INVX4LVT -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for OR2X1LVT -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for OR2X1LVT -----
module OR2X1LVT(A,
                B,
                Y);
//----- INPUT PORTS -----
input [0:0] A;
//----- INPUT PORTS -----
input [0:0] B;
//----- OUTPUT PORTS -----
output [0:0] Y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for OR2X1LVT -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for MX2X1LVT -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for MX2X1LVT -----
module MX2X1LVT(B,
                A,
                S0,
                Y);
//----- INPUT PORTS -----
input [0:0] B;
//----- INPUT PORTS -----
input [0:0] A;
//----- INPUT PORTS -----
input [0:0] S0;
//----- OUTPUT PORTS -----
output [0:0] Y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for MX2X1LVT -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for DFFSRHQX1LVT -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for DFFSRHQX1LVT -----
module DFFSRHQX1LVT(SN,
                    RN,
                    CK,
                    D,
                    Q);
//----- GLOBAL PORTS -----
input [0:0] SN;
//----- GLOBAL PORTS -----
input [0:0] RN;
//----- GLOBAL PORTS -----
input [0:0] CK;
//----- INPUT PORTS -----
input [0:0] D;
//----- OUTPUT PORTS -----
output [0:0] Q;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for DFFSRHQX1LVT -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for DFFRX1LVT -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for DFFRX1LVT -----
module DFFRX1LVT(RN,
                 CK,
                 D,
                 Q,
                 QN);
//----- GLOBAL PORTS -----
input [0:0] RN;
//----- GLOBAL PORTS -----
input [0:0] CK;
//----- INPUT PORTS -----
input [0:0] D;
//----- OUTPUT PORTS -----
output [0:0] Q;
//----- OUTPUT PORTS -----
output [0:0] QN;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for DFFRX1LVT -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for PADDB -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for PADDB -----
module PADDB(PAD,
             A,
             OEN,
             Y);
//----- GPIO PORTS -----
inout [0:0] PAD;
//----- INPUT PORTS -----
input [0:0] A;
//----- INPUT PORTS -----
input [0:0] OEN;
//----- OUTPUT PORTS -----
output [0:0] Y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for PADDB -----

//----- Default net type -----
`default_nettype wire


