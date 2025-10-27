`timescale 1ns/1ns
`include "q1.v"

module q1_tb();
    reg clk, reset;
    wire [3:0] q;
    ring_counter ex (clk, reset,q);
	initial begin
		clk=0;
    	forever #5 clk = ~clk;
    end
    initial begin
    	$dumpfile("q1_tb.vcd");
    	$dumpvars(0,q1_tb);
        reset = 1;
        #10 reset = 0;
        #50 $finish;
    end
endmodule

