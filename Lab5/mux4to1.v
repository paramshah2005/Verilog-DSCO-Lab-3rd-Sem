module mux4to1 (a, b, c, d, sel0, sel1, y);
    input a, b, c, d, sel0, sel1;
    output y;
    
    assign y = (sel1 == 0) ? ((sel0 == 0) ? a : b) : ((sel0 == 0) ? c :d);
endmodule

module mux16to1 (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, sel0, sel1, sel2, sel3, y);
    input a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;
    input sel0, sel1, sel2, sel3;
    output y;
    
    wire y0, y1, y2, y3;

    mux4to1 mux1 (a, b, c, d, sel0, sel1, y0);
    mux4to1 mux2 (e, f, g, h, sel0, sel1, y1);
    mux4to1 mux3 (i, j, k, l, sel0, sel1, y2);
    mux4to1 mux4 (m, n, o, p, sel0, sel1, y3);
    mux4to1 mux5 (y0, y1, y2, y3, sel2, sel3, y);
endmodule

