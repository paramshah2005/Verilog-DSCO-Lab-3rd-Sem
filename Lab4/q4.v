module halfAdder(a,b,carry,sum);
	input a,b;
	output sum,carry;
	assign sum = a^b;
	assign carry = a&b;
endmodule

module q4(a0,a1,b0,b1,p0,p1,p2,p3);
	input a0,a1,b0,b1;
	output p3,p2,p1,p0;

	
	assign p0 = a0 & b0 ;
	halfAdder ha1(a0 & b1, a1 & b0, c1, p1);
	halfAdder ha2(p0, c1, c2, p2);
	halfAdder ha3(a1 & b1, p1, p3, s3);

endmodule

