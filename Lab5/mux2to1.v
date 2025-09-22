module mux2to1 (a,b,sel,y);
    input a, b, sel;
    output y;
    reg y;
    always @ (a or b or sel)
    begin
        if (sel == 0)
            y = a;
        else
            y = b;
    end
endmodule

module mux4to1 (a, b, c, d, sel0, sel1,y);
    input a, b, c, d, sel0, sel1;
    wire y0, y1;
    output y;
    mux2to1 mux1 (a, b, sel0, y0);
    mux2to1 mux2 (c, d, sel0, y1);
    mux2to1 mux3 (y0, y1, sel1, y);
endmodule

