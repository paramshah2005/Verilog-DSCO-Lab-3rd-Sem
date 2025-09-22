module dec2to4 (input [1:0]a, input en, output reg [3:0] out);
    always @ (*) begin
            if (a == 2'b00 && en == 1'b1) 
                out = 4'b0001;
            else if (a == 2'b01 && en == 1'b1) 
                out = 4'b0010;
            else if (a == 2'b10 && en == 1'b1) 
                out = 4'b0100;
            else if (a == 2'b11 && en == 1'b1) 
                out = 4'b1000;
            else 
                out = 4'b0000;
    end
endmodule

module dec3to8 (input [2:0] a, input en, output reg [7:0] out);
    wire [3:0]out0,out1;		
    dec2to4 decoder0 (a[1:0],(a[2] & en),out0);
    dec2to4 decoder1 (a[1:0],(~a[2] & en),out1);

    always @(*) begin
        out = 8'b00000000;
	if (a[2] == 1'b0) begin
            out = {4'b0000, out1};
        end else begin
            out = {out0, 4'b0000}; 
        end
    end

endmodule

