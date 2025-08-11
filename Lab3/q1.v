module q1(a,b,c,d,f);
input a,b,c,d;
output f;
nand(x1,b,b);
nand(x2,d,d);
nand(x3,x1,a);
nand(x4,x2,c);
nand(x5,x3,x4);
nand(f,x5,x5);
endmodule

