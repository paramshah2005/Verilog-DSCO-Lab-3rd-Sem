`timescale 1ns / 1ns
`include "q1.v"

module q1_tb();

    reg Clock, Reset, E, x;
    wire A, B;
    q1 ex (Clock, Reset, E, x, A, B);

    initial begin
        Clock = 1'b0;
        forever #20 Clock = ~Clock;
    end

    initial begin
        $dumpfile("q1_tb.vcd");
        $dumpvars(0, q1_tb);

        Reset = 1'b1;  E = 1'b0;  x = 1'b0;
        #10  Reset = 1'b0; 
        #40;
        E = 1'b1; x = 1'b1;
        #160;
        x = 1'b0;
        #160;
        E = 1'b0;
        #80;

        $display("Simulation complete.");
        $finish;
    end
endmodule

