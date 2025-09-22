`timescale 1ns/1ns
`include "mux2to1.v"

module mux2to1_tb;

    reg a, b, c, d, sel0, sel1;
    wire y;

    mux4to1 ex1 (a,b,c,d,sel0,sel1,y);

    initial begin
    	$dumpfile("mux2to1_tb.vcd");
	$dumpvars(0,mux2to1_tb);
        a = 0; b = 0; c = 0; d = 0; sel0 = 0; sel1 = 0; #20;
        a = 0; b = 1; c = 0; d = 1; sel0 = 0; sel1 = 0; #20;
        a = 1; b = 0; c = 1; d = 0; sel0 = 0; sel1 = 0; #20;
        a = 1; b = 1; c = 1; d = 1; sel0 = 0; sel1 = 0; #20;
        a = 0; b = 0; c = 0; d = 0; sel0 = 1; sel1 = 0; #20;
        a = 0; b = 1; c = 0; d = 1; sel0 = 1; sel1 = 0; #20;
        a = 1; b = 0; c = 1; d = 0; sel0 = 1; sel1 = 0; #20;
        a = 1; b = 1; c = 1; d = 1; sel0 = 1; sel1 = 0; #20;
        a = 0; b = 0; c = 0; d = 0; sel0 = 0; sel1 = 1; #20;
        a = 0; b = 1; c = 0; d = 1; sel0 = 0; sel1 = 1; #20;
        a = 1; b = 0; c = 1; d = 0; sel0 = 0; sel1 = 1; #20;
        a = 1; b = 1; c = 1; d = 1; sel0 = 0; sel1 = 1; #20;
        a = 0; b = 0; c = 0; d = 0; sel0 = 1; sel1 = 1; #20;
        a = 0; b = 1; c = 0; d = 1; sel0 = 1; sel1 = 1; #20;
        a = 1; b = 0; c = 1; d = 0; sel0 = 1; sel1 = 1; #20;
        a = 1; b = 1; c = 1; d = 1; sel0 = 1; sel1 = 1; #20;
        
        $display("Test Completed");
    end

endmodule

