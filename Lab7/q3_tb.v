`timescale 1ns / 1ns
`include "q3.v"

module q3_tb();
    reg J, K, Clock, Reset;
    wire Q;

    jkflipflop ex(J, K, Clock, Reset, Q);

    initial begin
        Clock = 1'b0;
        forever #20 Clock = ~Clock;
    end

    initial begin
        $dumpfile("q3_tb.vcd");
        $dumpvars(0, q3_tb);

        J = 0; K = 0; Reset = 1; #40;
        Reset = 0; J = 0; K = 0; #40;
        J = 1; K = 0; #40;
        J = 0; K = 1; #40;
        J = 1; K = 1; #40;
        Reset = 1; #30;
        Reset = 0; J = 1; K = 1; #40;
        J = 1; K = 0; #40;
        J = 0; K = 1; #40;
        J = 0; K = 0; #40;

        $display("Test complete");
        $finish;
    end
endmodule

