module reg6bit (input Clock, input SI, output [5:0] A);
    dflipflop s0 (SI, Clock, A[0]);
    dflipflop s1 (A[0], Clock, A[1]);
    dflipflop s2 (A[1], Clock, A[2]);
    dflipflop s3 (A[2], Clock, A[3]);
    dflipflop s4 (A[3], Clock, A[4]);
    dflipflop s5 (A[4], Clock, A[5]);
endmodule


module dflipflop (input D, input Clock, output reg Q);
    always @(posedge Clock)
        Q <= D;
endmodule

