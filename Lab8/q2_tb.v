`timescale 1ns / 1ns
`include "q2.v"

module q2_tb();
    reg clk;
    reg [7:0] D;
    wire [7:0] Q;

    regNbit #(8) ex(clk, D, Q);

    initial begin
        clk = 1'b0;
        forever #20 clk = ~clk;
    end

    initial begin
        $dumpfile("q2_tb.vcd");
        $dumpvars(0, q2_tb);
        D = 8'b00000000; #40;     
        D = 8'b10101010; #40;    
        D = 8'b11110000; #40;                
        D = 8'b00001111; #40;            
        D = 8'b11001100; #40;    
        D = 8'b00110011; #40;             
        $display("Test complete.");
        $finish;
    end
endmodule

