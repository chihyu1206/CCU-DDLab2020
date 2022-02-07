module adder4bit(A, B, sum);
input [5:0] A, B;
output [6:0] sum;
assign sum = A + B;

endmodule