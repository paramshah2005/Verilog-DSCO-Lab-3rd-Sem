module async_up_counter (input clk, reset, output wire [3:0] q);
    T_FF tff0 (clk,  reset, q[0]); 
    T_FF tff1 (~q[0], reset, q[1]);
    T_FF tff2 (~q[1], reset, q[2]);  
    T_FF tff3 (~q[2], reset, q[3]); 
endmodule


module T_FF (input clk, reset, output reg q);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;      
        else
            q <= ~q;        
    end
endmodule

