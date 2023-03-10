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