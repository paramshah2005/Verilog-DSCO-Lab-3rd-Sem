module q3(a,b,c,d,f,g);
input a,b,c,d;
output f,g;
assign g = (~a&d)|(~c&d);
nor(x1,d,d);
nor(x2,a,x1);
nor(x3,c,x1);
nor(x4,x2,x3);
nor(f,x4,x4);
endmodule

