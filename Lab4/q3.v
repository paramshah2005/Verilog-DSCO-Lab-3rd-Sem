module q3(carryin, x3, x2, x1, x0, y3, y2, y1, y0, s3, s2, s1, s0, carryout);
    input carryin;
    input x3, x2, x1, x0;
    input y3, y2, y1, y0;
    output s3, s2, s1, s0;
    output carryout;
    wire y_xor0, y_xor1, y_xor2, y_xor3;

    assign y_xor0 = y0 ^ carryin;
    assign y_xor1 = y1 ^ carryin;
    assign y_xor2 = y2 ^ carryin;
    assign y_xor3 = y3 ^ carryin;

    fourbitadder adder_sub (carryin,x3, x2, x1, x0,y_xor3, y_xor2, y_xor1, y_xor0,s3, s2, s1, s0,carryout);
endmodule



module fourbitadder (carryin, x3, x2, x1, x0, y3, y2, y1, y0, s3, s2, s1, s0, carryout);
	input carryin, x3, x2, x1, x0, y3, y2, y1, y0;
	output s3, s2, s1, s0, carryout;
	fullAdder stage0 (carryin, x0, y0, s0, c1);
	fullAdder stage1 (c1, x1, y1, s1, c2);
	fullAdder stage2 (c2, x2, y2, s2, c3);
	fullAdder stage3 (c3, x3, y3, s3, carryout);
endmodule

module fullAdder (cin, x, y, s, cout);
	input cin, x, y;
	output s, cout;
	assign s = x ^ y ^ cin;
	assign cout = (x & y) | (x & cin) | (y & cin);
endmodule


