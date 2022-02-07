`timescale 1ns / 1ps
module top(
    input CLK100MHZ,//clk
    input [15:0]SW,
    input  BTNC,
    output reg [5:0]LED
    );
    
    wire [3:0] a, b, c, d;
    reg [5:0] sum;
    assign a = SW[3:0];
    assign b = SW[7:4];
    assign c = SW[11:8];
    assign d = SW[15:12];

    /*****your design******/
    always @(posedge CLK100MHZ) begin
        LED <= sum;
        if (BTNC) begin 
            sum <= a + b + c + d;
        end
    end

    /**********************/
endmodule
