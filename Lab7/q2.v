module tflipflop (input T, Clock, Reset, output reg Q);
	always @(negedge Clock or negedge Reset)
	begin
		if (~Reset)
			Q <= 1'b0;
		else
			if(T)
				Q <= ~Q;
			else
				Q <= Q;
	end
endmodule

