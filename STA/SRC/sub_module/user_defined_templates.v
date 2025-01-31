//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Template for user-defined Verilog modules
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Nov 21 16:42:28 2024
//-------------------------------------------
// ----- Template Verilog module for INVX1 -----
//----- Default net type -----
// `default_nettype none

// ----- Verilog module for INVX1 -----
module INVX1(A,
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
// ----- END Verilog module for INVX1 -----

//----- Default net type -----
// `default_nettype wire


// ----- Template Verilog module for BUFX4 -----
//----- Default net type -----
// `default_nettype none

// ----- Verilog module for BUFX4 -----
module BUFX4(A,
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
// ----- END Verilog module for BUFX4 -----

//----- Default net type -----
// `default_nettype wire


// ----- Template Verilog module for INVX4 -----
//----- Default net type -----
// `default_nettype none

// ----- Verilog module for INVX4 -----
module INVX4(A,
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
// ----- END Verilog module for INVX4 -----

//----- Default net type -----
// `default_nettype wire


// ----- Template Verilog module for OR2X1 -----
//----- Default net type -----
// `default_nettype none

// ----- Verilog module for OR2X1 -----
module OR2X1(A,
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
// ----- END Verilog module for OR2X1 -----

//----- Default net type -----
// `default_nettype wire


// ----- Template Verilog module for MX2X1 -----
//----- Default net type -----
// `default_nettype none

// ----- Verilog module for MX2X1 -----
module MX2X1(B,
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
// ----- END Verilog module for MX2X1 -----

//----- Default net type -----
// `default_nettype wire


// ----- Template Verilog module for DFFSRX1 -----
//----- Default net type -----
// `default_nettype none

// ----- Verilog module for DFFSRX1 -----
module DFFSRX1(SN,
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
// ----- END Verilog module for DFFSRX1 -----

//----- Default net type -----
// `default_nettype wire


// ----- Template Verilog module for DFFRX1 -----
//----- Default net type -----
// `default_nettype none

// ----- Verilog module for DFFRX1 -----
module DFFRX1(RN,
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
// ----- END Verilog module for DFFRX1 -----

//----- Default net type -----
// `default_nettype wire


// ----- Template Verilog module for GPIO -----
//----- Default net type -----
// `default_nettype none

// ----- Verilog module for GPIO -----
module GPIO(PAD,
            A,
            DIR,
            Y);
//----- GPIO PORTS -----
inout [0:0] PAD;
//----- INPUT PORTS -----
input [0:0] A;
//----- INPUT PORTS -----
input [0:0] DIR;
//----- OUTPUT PORTS -----
output [0:0] Y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for GPIO -----

//----- Default net type -----
// `default_nettype wire


