`timescale 1ns/1ns
`include "q4.v" 

module ex();

    reg a0, a1, b0, b1;

    wire p3, p2, p1, p0;

    q4 ex1(a0, a1, b0, b1, p3, p2, p1, p0);

    initial begin

        $dumpfile("q4_tb.vcd");
        $dumpvars(0, ex1); 


        a0 = 0; a1 = 0; b0 = 0; b1 = 0; #20;
        a0 = 0; a1 = 0; b0 = 0; b1 = 1; #20;
        a0 = 0; a1 = 0; b0 = 1; b1 = 0; #20;
        a0 = 0; a1 = 0; b0 = 1; b1 = 1; #20;
        a0 = 0; a1 = 1; b0 = 0; b1 = 0; #20;
        a0 = 0; a1 = 1; b0 = 0; b1 = 1; #20;
        a0 = 0; a1 = 1; b0 = 1; b1 = 0; #20;
        a0 = 0; a1 = 1; b0 = 1; b1 = 1; #20;
        a0 = 1; a1 = 0; b0 = 0; b1 = 0; #20;
        a0 = 1; a1 = 0; b0 = 0; b1 = 1; #20;
        a0 = 1; a1 = 0; b0 = 1; b1 = 0; #20;
        a0 = 1; a1 = 0; b0 = 1; b1 = 1; #20;
        a0 = 1; a1 = 1; b0 = 0; b1 = 0; #20;
        a0 = 1; a1 = 1; b0 = 0; b1 = 1; #20;
        a0 = 1; a1 = 1; b0 = 1; b1 = 0; #20;
        a0 = 1; a1 = 1; b0 = 1; b1 = 1; #20;


        $display("Test complete");
        end
endmodule

