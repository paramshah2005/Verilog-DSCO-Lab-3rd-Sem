module dflipflop (D, Clock, Reset, Q);
	input D, Clock, Reset;
	output reg Q;
	always @(posedge Clock or posedge Reset)
	begin
		if (Reset)
			Q <= 1'b0;
		else
			Q <= D;
	end
endmodule

