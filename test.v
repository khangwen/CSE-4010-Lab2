module NORgate (A, B, Q); // creates functionality of NOR gate

    input A, B; // input variables
    output Q; // output variable 

    assign Q = !(A|B); // output equals not the output of A or B

endmodule // closes off module

module NANDusingNOR (A, B, Q); // creates functionality of NAND gate using only NOR gates

    input A, B; // input variables
    output Q; // output variable

    wire C, D, E, F; // output wires used to make new NOR gates

    NORgate u1(A, A, C); // use NORgate to output to C
    NORgate u2(B, B, D); // use NORgate to output to D
    NORgate u3(C, D, E); // use NORgate to output to E
    NORgate u4(E, E, F); // use NORgate to output to F

    assign Q = F; // Q equals final output

endmodule // close off module

module ANDusingNOR (A, B, Q); // creates functionality of AND gate using only NOR gates

    input A, B; // input variables
    output Q; // output variable

    wire C, D, E; // output wires used to make new NOR gates

    NORgate u1(A, A, C); // use NORgate to output to C
    NORgate u2(B, B, D); // use NORgate to output to D
    NORgate u3(C, D, E); // use NORgate to output to E

    assign Q = E; // Q equals final output

endmodule // close off module

module ORusingNOR (A, B, Q); // creates functionality of OR gate using only NOR gates

    input A, B; // input variables
    output Q; // output variable

    wire C, D; // output wires used to make new NOR gates

    NORgate u1(A, B, C); // use NORgate to output to C
    NORgate u2(C, C, D); // use NORgate to output to D

    assign Q = D; // Q equals final output

endmodule // close off module

module XORusingNOR (A, B, Q); // creates functionality of XOR gate using only NOR gates

    input A, B; // input variables
    output Q; // output variable

    wire C, D, E, F, G; // output wires used to make new NOR gates

    NORgate u1(A, A, C); // use NORgate to output to C
    NORgate u2(B, B, D); // use NORgate to output to D
    NORgate u3(C, D, E); // use NORgate to output to E
    NORgate u4(A, B, F); // use NORgate to output to F
    NORgate u5(E, F, G); // use NORgate to output to G

    assign Q = G; // Q equals final output

endmodule // close off module

module XNORusingNOR (A, B, Q); // creates functionality of XNOR gate using only NOR gates

    input A, B; // input variables
    output Q; // output variable

    wire C, D, E, F; // output wires used to make new NOR gates

    NORgate u1(A, B, C); // use NORgate to output to C
    NORgate u2(A, C, D); // use NORgate to output to D
    NORgate u3(B, C, E); // use NORgate to output to E
    NORgate u4(D, E, F); // use NORgate to output to F

    assign Q = F; // Q equals final output

endmodule // close off module

module NOTusingNOR (A, B, Q); // creates functionality of NOT gate using only NOR gates

    input A, B; // input variables
    output Q; // output variable

    wire C; // output wires used to make new NOR gates

    NORgate u1(A, A, C); // use NORgate to output to C

    assign Q = C; // Q equals final output

endmodule // close off module

    