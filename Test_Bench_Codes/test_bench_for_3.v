`timescale 1ns/1ns
`include "filename.v"

module ex();
reg x1, x2, x3;
wire f;
classname ex1(x1, x2, x3, f);
initial
	begin
		$dumpfile("test_bench_for_3.vcd");
		$dumpvars(0, ex);
		x1=1'b0; x2=1'b0; x3=1'b0;
		#20;
		x1=1'b0; x2=1'b0; x3=1'b1;
		#20;
		x1=1'b0; x2=1'b1; x3=1'b0;
		#20;
		x1=1'b0; x2=1'b1; x3=1'b1;
		#20;
		x1=1'b1; x2=1'b0; x3=1'b0;
		#20;
		x1=1'b1; x2=1'b0; x3=1'b1;
		#20;
		x1=1'b1; x2=1'b1; x3=1'b0;
		#20;
		x1=1'b1; x2=1'b1; x3=1'b1;
		#20;
		$display("Test complete");
	end
endmodule
