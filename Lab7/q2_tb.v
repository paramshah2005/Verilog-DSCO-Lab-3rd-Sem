`timescale 1ns / 1ns
`include "q2.v"

module q2_tb();
    reg T, Clock, Reset;
    wire Q;

    tflipflop ex(T, Clock, Reset, Q);

    initial begin
        Clock = 1'b0;
        forever #20 Clock = ~Clock;
    end

    initial begin
        $dumpfile("q2_tb.vcd");
        $dumpvars(0, q2_tb);

        T = 0; Reset = 0; #40;
        Reset = 1; T = 1; #40;
        T = 1; #40;
        T = 0; #40;
        T = 1; #40;
        Reset = 0; #30;
        Reset = 1; #40;
        T = 1; #40;
        T = 0; #40;
        T = 1; #40;

        $display("Test complete");
        $finish;
    end
endmodule

