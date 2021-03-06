`timescale 1ns/1ps
`define SIGNED
`include "sign_ext_mpy_32bit.v"
module tb;
    reg clk;
    `ifdef SIGNED
    reg signed [31:0] a, b;
    wire signed [63:0] product;
    wire signed [63:0] correct_answer;
    `else
    reg [31:0] a, b;
    wire [63:0] product; 
    wire [63:0] correct_answer;
    `endif
    
    reg [7:0] cnt;
    reg [3:0] pattern_cnt;
    reg [3:0] total_correct;
    integer i, j;

    initial begin
        $dumpfile("MPY.fsdb");
        $dumpvars;
    end

    initial begin
        clk = 1;
        forever #5 clk = ~clk;
    end

    // MPY MPY(clk, a, b, product);
    MPY MPY(clk, a, b, product);
    assign correct_answer = a * b;

    //testbench main
    initial begin
        a <= 0;
        b <= 0;
        cnt <= 0;
        pattern_cnt <= 0;
        total_correct <= 0;
        @(posedge clk);
        for (i = 0; i < 10; i = i + 1) begin
            pattern();
        end
        @(posedge clk);
        $display("correct total:%d / %d",total_correct, pattern_cnt);
        $finish;
    end

    //testing pattern
    task pattern;
    begin
        a <= {$random} % 33'b1000_0000_0000_0000_0000_0000_0000_00000;
        b <= {$random} % 33'b1000_0000_0000_0000_0000_0000_0000_00000;
        pattern_cnt <= pattern_cnt + 1'b1;

        for (j = 0; j < 200 ; j = j + 1) begin
            @(posedge clk);
            if(product!==correct_answer)
                cnt <= cnt + 1'b1;
            else
                cnt <= cnt;
        end
        $display("=============================");
        if(product == correct_answer) begin
            $display("Test  %d  Successful",pattern_cnt);
            total_correct <= total_correct + 1'b1;
        end
        else begin
            $display("Test  %d  Fail",pattern_cnt);
            total_correct <= total_correct ;
        end
        $display("Cycles    %d",cnt);
        $display("%d    x   %d",a ,b);
        $display("Correct answer:   %d",correct_answer);
        $display("Your answer:      %d",product);
        cnt <= 0;
        @(posedge clk);
    end
    endtask
endmodule