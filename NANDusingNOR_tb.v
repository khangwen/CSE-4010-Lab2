`timescale 1ns/1ns // sets time segments to 1ns
`include "NANDusingNOR.v" // include functions from file "NANDusingNOR.v"

module NANDusingNOR_tb; // create module for testing functionality

reg A; // register variable A created
reg B; // registervariable B created
wire Q; // wire variable Q created

NANDusingNOR uut(A, B, Q); //NANDusingNOR instantiated w/ variables A, B, Q

initial begin // block statement begin
    
    $dumpfile("NANDusingNOR_tb.vcd"); // dump changes into new vcd file
    $dumpvars(0, NANDusingNOR_tb); // dumps all variables from test bench

    A = 0; B = 0; #20 // A, B initially set to 0, wait 20ns
    A = 0; B = 1; #20 // B set to 1, wait 20ns
    A = 1; B = 0; #20 // A set to 1, B set to 0, wait 20ns
    A = 1; B = 1; #20 // B set to 1, wait 20ns

    $display("Complete!"); // outputs to terminal when vvp run time engine completed
end // block statement end

endmodule // close off module  