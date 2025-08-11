module q2(a,b,c,d,f);
input a,b,c,d;
output f;
nor(x1,d,d);
nor(x2,b,d);
nor(x3,b,c);
nor(x4,a,c,x1);
nor(x5,x2,x3,x4);
nor(f,x5,x5);
endmodule

