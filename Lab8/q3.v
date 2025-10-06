module johnson ( input clk, input reset, output reg  [4:0] out);
    always @(posedge clk or posedge reset) begin
        if (reset)
            out <= 5'b00000;
        else
            out <= {out[3:0], ~out[4]};
    end
endmodule

