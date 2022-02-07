module adder(a, b, c, d, sum, ov);

	input [3:0] a, b, c, d;
	output [3:0] sum;
	output ov;
    /* continuous assignment design begin */
	wire s5, s4;
    //15+15+15+15 = 60 <= 2^6 - 1
	assign {s5, s4, sum} = a + b + c + d; 
	assign ov = s5 || s4;
	/* continuous assignment disign end */		
endmodule

