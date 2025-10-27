`timescale 1ns / 1ns
`include "q2.v"

module q2_tb();
    reg clk, reset, in;
    wire A, B;
    q2 ex (clk, reset, in, A, B);
    initial begin
        clk = 1'b0;
        forever #20 clk = ~clk;
    end
    initial begin
        $dumpfile("q2_tb.vcd");
        $dumpvars(0, q2_tb);
        reset = 1'b1; in = 1'b0;
        #10 reset = 1'b0;

        #40 in = 1'b0;
        #80 in = 1'b1;
        #80 in = 1'b0;
        #80 in = 1'b1;
        #100;
        $display("Simulation complete.");
        $finish;
    end
endmodule

