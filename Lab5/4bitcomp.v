module q1 (
    input a3, a2, a1, a0,
    input b3, b2, b1, b0,
    output a_greater_b, 
    output a_less_b,
    output a_equal_b 
);
    assign a_greater_b = (a3 > b3) | ((a3 == b3) & (a2 > b2)) |
                         ((a3 == b3) & (a2 == b2) & (a1 > b1)) |
                         ((a3 == b3) & (a2 == b2) & (a1 == b1) & (a0 > b0));

    assign a_less_b = (a3 < b3) | ((a3 == b3) & (a2 < b2)) |
                      ((a3 == b3) & (a2 == b2) & (a1 < b1)) |
                      ((a3 == b3) & (a2 == b2) & (a1 == b1) & (a0 < b0));

    assign a_equal_b = (a3 == b3) & (a2 == b2) & (a1 == b1) & (a0 == b0);

endmodule

