module q4(a,b,c,d,f,g);
input a,b,c,d;
output f,g;
assign g = (~a|~d)&(~b|d);
nand(x1,d,d);
nand(x2,a,d);
nand(x3,x1,b);
nand(x4,x2,x3);
nand(f,x4,x4);
endmodule

