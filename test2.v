module NANDgate (A, B, Q); // creates functionality of NAND gate

    input A, B; // input variables
    output Q; // output variables

    assign Q = !(A&B); // output equals not the output of A and B

endmodule // close off module

module NORusingNAND (A, B, Q); // creates functionality of NOR gate using only NAND gates

    input A, B; // input variables
    output Q; // output variables

    wire C, D, E, F; // output wires used to make new NOR gates

    NANDgate u1(A, A, C); // use NANDgate to output to C
    NANDgate u2(B, B, D); // use NANDgate to output to D
    NANDgate u3(C, D, E); // use NANDgate to output to E
    NANDgate u4(E, E, F); // use NANDgate to output to F

    assign Q = F; // Q equals final output

endmodule // close off module

module ORusingNAND (A, B, Q); // creates functionality of OR gate using only NAND gates

    input A, B; // input variables
    output Q; // output variables

    wire C, D, E; // output wires used to make new NOR gates

    NANDgate u1(A, A, C); // use NANDgate to output to C
    NANDgate u2(B, B, D); // use NANDgate to output to D
    NANDgate u3(C, D, E); // use NANDgate to output to E

    assign Q = E; // Q equals final output

endmodule // close off module

module ANDusingNAND (A, B, Q); // creates functionality of AND gate using only NAND gates

    input A, B; // input variables
    output Q; // output variables

    wire C, D; // output wires used to make new NOR gates

    NANDgate u1(A, B, C); // use NANDgate to output to C
    NANDgate u2(C, C, D); // use NANDgate to output to D

    assign Q = D; // Q equals final output

endmodule // close off module

module XNORusingNAND (A, B, Q); // creates functionality of XNOR gate using only NAND gates

    input A, B; // input variables
    output Q; // output variables

    wire C, D, E, F, G; // output wires used to make new NOR gates

    NANDgate u1(A, B, C); // use NANDgate to output to C
    NANDgate u2(A, C, D); // use NANDgate to output to D
    NANDgate u3(B, C, E); // use NANDgate to output to E
    NANDgate u4(D, E, F); // use NANDgate to output to F
    NANDgate u5(F, F, G); // use NANDgate to output to G

    assign Q = G; // Q equals final output

endmodule // close off module

module NOTusingNAND (A, B, Q); // creates functionality of NOT gate using only NAND gates

    input A, B; // input variables
    output Q; // output variables

    wire C; // output wires used to make new NOR gates

    NANDgate u1(A, A, C); // use NANDgate to output to C
   
    assign Q = C; // Q equals final output

endmodule // close off module

module XORusingNAND (A, B, Q); // creates functionality of XOR gate using only NAND gates

    input A, B; // input variables
    output Q; // output variables

    wire C, D, E, F; // output wires used to make new NOR gates

    NANDgate u1(A, B, C); // use NANDgate to output to C
    NANDgate u2(A, C, D); // use NANDgate to output to D
    NANDgate u3(B, C, E); // use NANDgate to output to E
    NANDgate u4(D, E, F); // use NANDgate to output to F

    assign Q = F; // Q equals final output

endmodule // close off module