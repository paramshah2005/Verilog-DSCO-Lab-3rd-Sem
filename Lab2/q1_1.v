module q1_1(a,b,c,d,f);
input a,b,c,d;
output f;
assign f = (~a & b) | (~b & c) | (b & ~c & ~d) | (c & d);
endmodule
