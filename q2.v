module q2(a, b, c, d, f,g);
input a, b, c, d;
output f,g;
nand(r, a, b);
nor(g,b,c,d);
xor(f,d,c,r);
endmodule
