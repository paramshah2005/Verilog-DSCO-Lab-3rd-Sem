module q1 (input clk, input reset, input E, input x, output reg A, output reg B);
    reg next_A, next_B;
    always @(*) begin
        next_A = A;
        next_B = B;
        if (E == 1'b1) begin
            if (x == 1'b1) begin
                case ({A, B})
                    2'b00: {next_A, next_B} = 2'b01;
                    2'b01: {next_A, next_B} = 2'b10;
                    2'b10: {next_A, next_B} = 2'b11;
                    2'b11: {next_A, next_B} = 2'b00;
                    default: {next_A, next_B} = 2'b00;
                endcase
            end
            else begin
                case ({A, B})
                    2'b00: {next_A, next_B} = 2'b11;
                    2'b11: {next_A, next_B} = 2'b10;
                    2'b10: {next_A, next_B} = 2'b01;
                    2'b01: {next_A, next_B} = 2'b00;
                    default: {next_A, next_B} = 2'b00;
                endcase
            end
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            A <= 1'b0;
            B <= 1'b0;
        end
        else begin
            A <= next_A;
            B <= next_B;
        end
    end

endmodule

