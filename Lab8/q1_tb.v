`timescale 1ns / 1ns
`include "q1.v"

module q1_tb();
    reg Clock, SI;
    wire [5:0] A;

    reg6bit ex (Clock, SI, A);

    initial begin
        Clock = 1'b0;
        forever #20 Clock = ~Clock;
    end

    initial begin
        $dumpfile("q1_tb.vcd");
        $dumpvars(0, q1_tb);

        SI = 0;
        #10 SI = 1;   
        #40 SI = 0;   
        #40 SI = 0;   
        #40 SI = 1;   
        #40 SI = 0;  
        #40 SI = 1; 
        #100;

        $display("Test complete.");
        $finish;
    end
endmodule

