`timescale 1ns / 1ns
`include "q1.v"
module q1_tb();

    reg [2:0] a;
    reg en;
    wire [7:0] out;

    dec3to8 uut (a,en,out);

    initial begin
        $dumpfile("q1_tb.vcd");
        $dumpvars(0, q1_tb);
        
        a = 3'b000; en = 1'b0; #20;
        a = 3'b000; en = 1'b1; #20;
        a = 3'b001; en = 1'b1; #20;
        a = 3'b010; en = 1'b1; #20;
        a = 3'b011; en = 1'b1; #20;
        a = 3'b100; en = 1'b1; #20;
        a = 3'b101; en = 1'b1; #20;
        a = 3'b110; en = 1'b1; #20;
        a = 3'b111; en = 1'b1; #20;

        $display("Test complete");
    end
endmodule

