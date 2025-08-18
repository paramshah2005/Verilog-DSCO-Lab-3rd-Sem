`timescale 1ns/1ns
`include "q1.v"

module ex();
    reg x1, x2;
    wire carry, sum;
    halfAdder ex1(x1, x2, carry, sum);

    initial begin
        $dumpfile("q1_tb.vcd");
        $dumpvars(0, ex1);

        x1 = 1'b0; x2 = 1'b0;
        #20;
        x1 = 1'b0; x2 = 1'b1;
        #20;
        x1 = 1'b1; x2 = 1'b0;
        #20;
        x1 = 1'b1; x2 = 1'b1;
        #20;

        $display("Test complete");
    end
endmodule

