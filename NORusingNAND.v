module NANDgate (A, B, Q); // creates functionality of NAND gate

    input A, B; // input variables
    output Q; // output variables

    assign Q = !(A&B); // output equals not the output of A and B

endmodule // close off module

module NORusingNAND (A, B, Q); // creates functionality of NOR gate using only NAND gates

    input A, B; // input variables
    output Q; // output variables

    wire C, D, E, F; // output wires used to make new NOR gates

    NANDgate u1(A, A, C); // use NORgate to output to C
    NANDgate u2(B, B, D); // use NORgate to output to D
    NANDgate u3(C, D, E); // use NORgate to output to E
    NANDgate u4(E, E, F); // use NORgate to output to F

    assign Q = F; // Q equals final output

endmodule // close off module