`timescale 1ns/1ns
`include "mux4to1.v"

module mux16to1_tb;

    reg a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;
    reg sel0, sel1, sel2, sel3;
    wire y;

    mux16to1 ex1 (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,sel0,sel1,sel2,sel3,y);

    initial begin
        $dumpfile("mux16to1_tb.vcd");
        $dumpvars(0, mux16to1_tb);


        a=1; b=0; c=0; d=0; e=0; f=0; g=0; h=0; 
        i=0; j=0; k=0; l=0; m=0; n=0; o=0; p=0;
        sel0=0; sel1=0; sel2=0; sel3=0; #20;

        a=0; b=0; c=0; d=0; e=0; f=1; g=0; h=0;
        i=0; j=0; k=0; l=0; m=0; n=0; o=0; p=0;
        sel0=1; sel1=0; sel2=0; sel3=1; #20;

        a=0; b=0; c=0; d=0; e=0; f=0; g=0; h=0;
        i=0; j=0; k=1; l=0; m=0; n=0; o=0; p=0;
        sel0=0; sel1=1; sel2=1; sel3=0; #20;

        a=0; b=0; c=0; d=0; e=0; f=0; g=0; h=0;
        i=0; j=0; k=0; l=0; m=0; n=0; o=0; p=1;
        sel0=1; sel1=1; sel2=1; sel3=1; #20;

        $display("Test Completed");
    end

endmodule

