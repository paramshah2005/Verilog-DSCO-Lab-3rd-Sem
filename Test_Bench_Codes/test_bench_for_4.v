`timescale 1ns / 1ns
`include "filename.v"

module ex();
    reg a, b, c, d;
    wire f,g;
    classname example(a, b, c, d, f ,g);
    
    // Test sequence
    initial begin
        $dumpfile("test_bench_for_4.vcd");
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

