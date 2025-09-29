`timescale 1ns / 1ns
`include "q1.v"

module q1_tb();
    reg D, Clock, Reset;
    wire Q;

    dflipflop ex(D, Clock, Reset, Q);

    initial begin
        Clock = 1'b0;
        forever #20 Clock = ~Clock;
    end

    initial begin
        $dumpfile("q1_tb.vcd");
        $dumpvars(0, q1_tb);
        D = 1; Reset = 1; #40;
        Reset = 0; D = 1; #40;
        D = 0; #40;
        D = 1; #40;
        D = 0; #40;
        Reset = 1; #30	;
        Reset = 0; #40;
        D = 1; #40;
        D = 0; #40;
        $display("Test complete");
        $finish;
    end
endmodule

