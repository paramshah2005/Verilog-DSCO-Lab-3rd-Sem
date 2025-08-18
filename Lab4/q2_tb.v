`timescale 1ns/1ns
`include "q2.v"

module ex();
    reg cin, x, y;
    wire cout, s;
    fullAdder ex1(cin, x, y, s, cout);

    initial begin
        $dumpfile("q2.vcd");
        $dumpvars(0, ex1);

        cin = 1'b0; x = 1'b0; y = 1'b0;
        #20;
        cin = 1'b0; x = 1'b0; y = 1'b1;
        #20;
        cin = 1'b0; x = 1'b1; y = 1'b0;
        #20;
        cin = 1'b0; x = 1'b1; y = 1'b1;
        #20;
        cin = 1'b1; x = 1'b0; y = 1'b0;
        #20;
        cin = 1'b1; x = 1'b0; y = 1'b1;
        #20;
        cin = 1'b1; x = 1'b1; y = 1'b0;
        #20;
        cin = 1'b1; x = 1'b1; y = 1'b1;
        #20;

        $display("Test complete");
    end
endmodule

