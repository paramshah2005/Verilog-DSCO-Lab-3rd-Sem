`timescale 1ns/1ns
`include "q2.v"

module q2_tb();
    reg clk;
    reg reset;
    wire [3:0] q;
    async_up_counter ex (clk, reset, q);
	initial begin
		clk=0;
    	forever #5 clk = ~clk;
    end

    initial begin
		$dumpfile("q2_tb.vcd");
    	$dumpvars(0,q2_tb);
        reset = 1;
        #10 reset = 0;
        #160 $finish;
    end
endmodule

