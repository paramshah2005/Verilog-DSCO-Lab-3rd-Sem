`timescale 1ns / 1ns
`include "q2.v"

module q2_tb();
    reg [3:0] a;
    wire [15:0] out;

    dec4to16 ex(a, out);

    initial begin

        $dumpfile("q2_tb.vcd");
        $dumpvars(0, q2_tb);


        a = 4'b0000; #20;
        a = 4'b0001; #20;
        a = 4'b0010; #20;
        a = 4'b0011; #20;
        a = 4'b0100; #20;
        a = 4'b0101; #20;
        a = 4'b0110; #20;
        a = 4'b0111; #20;
        a = 4'b1000; #20;
        a = 4'b1001; #20;
        a = 4'b1010; #20;
        a = 4'b1011; #20;
        a = 4'b1100; #20;
        a = 4'b1101; #20;
        a = 4'b1110; #20;
        a = 4'b1111; #20;

        $display("Test complete");
    end
endmodule

