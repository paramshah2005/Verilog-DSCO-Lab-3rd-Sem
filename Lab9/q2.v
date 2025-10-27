module q2 (input clk, input reset, input in, output reg A, output reg B);
    reg next_A, next_B;
    always @(*) begin
        next_A = A;
        next_B = B;
        case ({A, B})
            2'b00: begin
                if (in == 1'b0) {next_A, next_B} = 2'b01;
                else             {next_A, next_B} = 2'b00;
            end
            2'b01: begin
                if (in == 1'b0) {next_A, next_B} = 2'b11;
                else             {next_A, next_B} = 2'b10;
            end
            2'b10: begin
                if (in == 1'b0) {next_A, next_B} = 2'b11;
                else             {next_A, next_B} = 2'b10;
            end
            2'b11: begin
                if (in == 1'b0) {next_A, next_B} = 2'b00;
                else             {next_A, next_B} = 2'b11;
            end
            default: {next_A, next_B} = 2'b00;
        endcase
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

