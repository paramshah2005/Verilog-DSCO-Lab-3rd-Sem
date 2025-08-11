`timescale 1ns / 1ns
`include "q4.v"

module ex();
    reg a, b, c, d;
    wire f;
    q4 example(a, b, c, d, f);
    
    // Test sequence
    initial begin
        $dumpfile("q4.vcd");
        $dumpvars(0, ex);
        
        a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0; #20;
        a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1; #20;
        a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0; #20;
        a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1; #20;
        a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0; #20;
        a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1; #20;
        a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0; #20;
        a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1; #20;
        a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0; #20;
        a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1; #20;
        a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0; #20;
        a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1; #20;
        a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0; #20;
        a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1; #20;
        a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0; #20;
        a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1; #20;
        
        $display("Test complete");
    end
endmodule

