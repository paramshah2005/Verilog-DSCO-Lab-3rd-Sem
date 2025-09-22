`timescale 1ns/1ns
`include "4bitcomp.v"
module q1_tb;
    reg a3, a2, a1, a0;  
    reg b3, b2, b1, b0; 
    wire a_greater_b;
    wire a_less_b;      
    wire a_equal_b;      
    q1 ex (
        a3, a2, a1, a0,
        b3, b2, b1, b0,
        a_greater_b,
        a_less_b,
        a_equal_b
    );
    initial begin
	$dumpfile("4bitcomp_tb.vcd");
	$dumpvars(0,q1_tb);
        a3 = 0; a2 = 0; a1 = 0; a0 = 0; b3 = 0; b2 = 0; b1 = 0; b0 = 0; 
        #20;
        a3 = 0; a2 = 1; a1 = 0; a0 = 0; b3 = 0; b2 = 0; b1 = 1; b0 = 0; 
        #20;
        a3 = 1; a2 = 0; a1 = 1; a0 = 0; b3 = 0; b2 = 1; b1 = 0; b0 = 1; 
        #20;
        a3 = 1; a2 = 1; a1 = 1; a0 = 1; b3 = 1; b2 = 1; b1 = 1; b0 = 0; 
        #20;
        a3 = 1; a2 = 0; a1 = 1; a0 = 1; b3 = 1; b2 = 0; b1 = 1; b0 = 1; 
        #20;
        $display("Test Completed");
    end
endmodule

