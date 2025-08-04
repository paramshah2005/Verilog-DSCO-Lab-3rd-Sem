module q2_2(a,b,c,d,f);
input a,b,c,d;
output f;
assign f = (b | c | d) & (~a | ~b | ~c) & (a | ~d);
endmodule
