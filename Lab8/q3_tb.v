`timescale 1ns/1ns
`include "q3.v"

module q3_tb();
 	reg clk;
  	reg reset;
  	wire [4:0] out;

  	johnson ex (clk,reset,out);
    initial begin
        clk = 1'b0;
        forever #20 clk = ~clk;
    end
    initial begin
        $dumpfile("q3_tb.vcd");
        $dumpvars(0, q3_tb);
			reset = 1; 
			#10;
			
			reset = 0; 
			#310;

    	$finish; 
  	end
endmodule

