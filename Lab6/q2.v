module dec3to8 (input [2:0] a, input en, output reg [7:0] out);
    integer k;
    always @(*) begin
        out = 8'b00000000;
        if (en) begin
            for (k = 0; k <= 7; k = k + 1) begin
                if (a == k) begin
                    out[k] = 1'b1;
                end
                else begin
                    out[k] = 1'b0;
                end
            end
        end
    end
endmodule


module dec4to16(input [3:0] a, output reg [15:0] out);
    wire [7:0] temp1, temp2;
    dec3to8 stage1(a[2:0], ~a[3], temp1); 
    dec3to8 stage2(a[2:0], a[3], temp2);

    always @(*) begin
        out = 16'b0000000000000000;
        out[7:0] = temp1;
        out[15:8] = temp2;
    end
endmodule

