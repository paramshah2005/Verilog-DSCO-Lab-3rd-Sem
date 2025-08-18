`timescale 1ns/1ns
`include "q3.v"

module ex();
	reg carryin, x3, x2, x1, x0, y3, y2, y1, y0;
	wire s3, s2, s1, s0, carryout;
	q3 ex1(carryin, x3, x2, x1, x0, y3, y2, y1, y0, s3, s2, s1, s0, carryout);
	initial begin
		$dumpfile("q3_tb.vcd");
		$dumpvars(0, ex1);
		carryin=1'b0;
		x0=1'b1; x1=1'b0; x2=1'b1; x3=1'b0; 
		y0=1'b1; y1=1'b0; y2=1'b1; y3=1'b0; 
		#20;
		carryin=1'b0;
		x0=1'b1; x1=1'b1; x2=1'b1; x3=1'b0;
		y0=1'b0; y1=1'b0; y2=1'b0; y3=1'b1;
		#20;
		carryin=1'b1;
		x0=1'b1; x1=1'b0; x2=1'b1; x3=1'b0; 
		y0=1'b1; y1=1'b0; y2=1'b1; y3=1'b0; 
		#20;
		carryin=1'b1;
		x0=1'b1; x1=1'b1; x2=1'b1; x3=1'b0;
		y0=1'b0; y1=1'b0; y2=1'b0; y3=1'b1;
		#20;
	$display("Test complete");
end
endmodule
