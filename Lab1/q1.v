module example2(a, b, c, d, f);
input a, b, c, d;
output f;
and (r, a, b);
or (s,r,c);
not (t, s);
and (u, t, d);
or(v,s,d);
and(f,v,u);
endmodule
