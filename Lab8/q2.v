module regNbit #(parameter N = 8)(input clk, input [N-1:0] D, output reg [N-1:0] Q);
    always @(posedge clk)
    begin
        Q <= D;  
    end
endmodule

