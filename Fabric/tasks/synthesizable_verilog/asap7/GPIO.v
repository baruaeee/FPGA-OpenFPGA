module GPIO (
    input wire A,    // Data output
    output wire Y,   // Data input
    inout wire PAD,  // bi-directional pad
    input wire DIR   // direction control
);
    wire pad_driver;
    wire pad_receiver;
    wire dir_n;

    // Invert DIR using ASAP7 standard cell
    INVx1_ASAP7_75t_SL u_inv (
        .A(DIR),
        .Y(dir_n)
    );

    // When direction is enabled, propagate PAD to data input
    AND2x2_ASAP7_75t_SL u_and1 (
        .A(DIR),
        .B(PAD),
        .Y(pad_receiver)
    );

    // When direction is disabled, propagate data output to PAD
    AND2x2_ASAP7_75t_SL u_and2 (
        .A(dir_n),
        .B(A),
        .Y(pad_driver)
    );

    // Tri-state the PAD based on direction
    OAI22x1_ASAP7_75t_SL u_oai (
        .A1(DIR),
        .A2(pad_driver),
        .B1(dir_n),
        .B2(pad_receiver),
        .Y(PAD)
    );

    // Drive the data input Y
    BUFx2_ASAP7_75t_SL (
        .A(pad_receiver),
        .Y(Y)
    );
endmodule
