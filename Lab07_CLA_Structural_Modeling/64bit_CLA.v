`timescale 1ns/1ps
module CLA_64bit(ina,inb,cin,sum,cout);
    input  [63:0] ina,inb;
    input cin;
    output [63:0] sum;
    output cout;
    wire [63:0] a, b;
    wire [63:0] p, g, c;
    wire [15:0] gG_4x, gP_4x;
    wire [15:0] c_4x;
    wire [3:0] gG_16x, gP_16x;
    wire [3:0] c_16x;
    rev r1(ina[63:0], a[63:0]);
    rev r2(inb[63:0], b[63:0]);
    //---Write down your design here---//
    // g and p
    gp_generator gp_0(a[3:0], b[3:0], g[3:0], p[3:0]);
    gp_generator gp_1(a[7:4], b[7:4], g[7:4], p[7:4]);
    gp_generator gp_2(a[11:8], b[11:8], g[11:8], p[11:8]);
    gp_generator gp_3(a[15:12], b[15:12], g[15:12], p[15:12]);
    gp_generator gp_4(a[19:16], b[19:16], g[19:16], p[19:16]);
    gp_generator gp_5(a[23:20], b[23:20], g[23:20], p[23:20]);
    gp_generator gp_6(a[27:24], b[27:24], g[27:24], p[27:24]);
    gp_generator gp_7(a[31:28], b[31:28], g[31:28], p[31:28]);
    gp_generator gp_8(a[35:32], b[35:32], g[35:32], p[35:32]);
    gp_generator gp_9(a[39:36], b[39:36], g[39:36], p[39:36]);
    gp_generator gp_10(a[43:40], b[43:40], g[43:40], p[43:40]);
    gp_generator gp_11(a[47:44], b[47:44], g[47:44], p[47:44]);
    gp_generator gp_12(a[51:48], b[51:48], g[51:48], p[51:48]);
    gp_generator gp_13(a[55:52], b[55:52], g[55:52], p[55:52]);
    gp_generator gp_14(a[59:56], b[59:56], g[59:56], p[59:56]);
    gp_generator gp_15(a[63:60], b[63:60], g[63:60], p[63:60]);
    
    // generate 16 4-bit group
    carry_generator gp4x_0(.p(p[3:0]), .g(g[3:0]), .gG(gG_4x[0]), .gP(gP_4x[0]));
    carry_generator gp4x_1(.p(p[7:4]), .g(g[7:4]), .gG(gG_4x[1]), .gP(gP_4x[1]));
    carry_generator gp4x_2(.p(p[11:8]), .g(g[11:8]), .gG(gG_4x[2]), .gP(gP_4x[2]));
    carry_generator gp4x_3(.p(p[15:12]), .g(g[15:12]), .gG(gG_4x[3]), .gP(gP_4x[3]));
    carry_generator gp4x_4(.p(p[19:16]), .g(g[19:16]), .gG(gG_4x[4]), .gP(gP_4x[4]));
    carry_generator gp4x_5(.p(p[23:20]), .g(g[23:20]), .gG(gG_4x[5]), .gP(gP_4x[5]));
    carry_generator gp4x_6(.p(p[27:24]), .g(g[27:24]), .gG(gG_4x[6]), .gP(gP_4x[6]));
    carry_generator gp4x_7(.p(p[31:28]), .g(g[31:28]), .gG(gG_4x[7]), .gP(gP_4x[7]));
    carry_generator gp4x_8(.p(p[35:32]), .g(g[35:32]), .gG(gG_4x[8]), .gP(gP_4x[8]));
    carry_generator gp4x_9(.p(p[39:36]), .g(g[39:36]), .gG(gG_4x[9]), .gP(gP_4x[9]));
    carry_generator gp4x_10(.p(p[43:40]), .g(g[43:40]), .gG(gG_4x[10]), .gP(gP_4x[10]));
    carry_generator gp4x_11(.p(p[47:44]), .g(g[47:44]), .gG(gG_4x[11]), .gP(gP_4x[11]));
    carry_generator gp4x_12(.p(p[51:48]), .g(g[51:48]), .gG(gG_4x[12]), .gP(gP_4x[12]));
    carry_generator gp4x_13(.p(p[55:52]), .g(g[55:52]), .gG(gG_4x[13]), .gP(gP_4x[13]));
    carry_generator gp4x_14(.p(p[59:56]), .g(g[59:56]), .gG(gG_4x[14]), .gP(gP_4x[14]));
    carry_generator gp4x_15(.p(p[63:60]), .g(g[63:60]), .gG(gG_4x[15]), .gP(gP_4x[15]));
    
    // generate 4 * 16bit group by 16 * 4bit group
    carry_generator gp16x_0(.p(gP_4x[3:0]), .g(gG_4x[3:0]), .gG(gG_16x[0]), .gP(gP_16x[0]));
    carry_generator gp16x_1(.p(gP_4x[7:4]), .g(gG_4x[7:4]), .gG(gG_16x[1]), .gP(gP_16x[1]));
    carry_generator gp16x_2(.p(gP_4x[11:8]), .g(gG_4x[11:8]), .gG(gG_16x[2]), .gP(gP_16x[2]));
    carry_generator gp16x_3(.p(gP_4x[15:12]), .g(gG_4x[15:12]), .gG(gG_16x[3]), .gP(gP_16x[3]));
    
    // 16bit carry
    carry_generator carry16x_0(.p(gP_16x[3:0]), .g(gG_16x[3:0]), .cin(cin), .c(c_16x[3:0]), .cout(cout));
    
    // 4bit carry
    carry_generator carry4x_0(.p(gP_4x[3:0]), .g(gG_4x[3:0]), .cin(c_16x[0]), .c(c_4x[3:0]));
    carry_generator carry4x_1(.p(gP_4x[7:4]), .g(gG_4x[7:4]), .cin(c_16x[1]), .c(c_4x[7:4]));
    carry_generator carry4x_2(.p(gP_4x[11:8]), .g(gG_4x[11:8]), .cin(c_16x[2]), .c(c_4x[11:8]));
    carry_generator carry4x_3(.p(gP_4x[15:12]), .g(gG_4x[15:12]), .cin(c_16x[3]), .c(c_4x[15:12]));
    
    // generate all carry
    carry_generator carry1x_0(.p(p[3:0]), .g(g[3:0]), .cin(c_4x[0]), .c(c[3:0]));
    carry_generator carry1x_1(.p(p[7:4]), .g(g[7:4]), .cin(c_4x[1]), .c(c[7:4]));
    carry_generator carry1x_2(.p(p[11:8]), .g(g[11:8]), .cin(c_4x[2]), .c(c[11:8]));
    carry_generator carry1x_3(.p(p[15:12]), .g(g[15:12]), .cin(c_4x[3]), .c(c[15:12]));
    carry_generator carry1x_4(.p(p[19:16]), .g(g[19:16]), .cin(c_4x[4]), .c(c[19:16]));
    carry_generator carry1x_5(.p(p[23:20]), .g(g[23:20]), .cin(c_4x[5]), .c(c[23:20]));
    carry_generator carry1x_6(.p(p[27:24]), .g(g[27:24]), .cin(c_4x[6]), .c(c[27:24]));
    carry_generator carry1x_7(.p(p[31:28]), .g(g[31:28]), .cin(c_4x[7]), .c(c[31:28]));
    carry_generator carry1x_8(.p(p[35:32]), .g(g[35:32]), .cin(c_4x[8]), .c(c[35:32]));
    carry_generator carry1x_9(.p(p[39:36]), .g(g[39:36]), .cin(c_4x[9]), .c(c[39:36]));
    carry_generator carry1x_10(.p(p[43:40]), .g(g[43:40]), .cin(c_4x[10]), .c(c[43:40]));
    carry_generator carry1x_11(.p(p[47:44]), .g(g[47:44]), .cin(c_4x[11]), .c(c[47:44]));
    carry_generator carry1x_12(.p(p[51:48]), .g(g[51:48]), .cin(c_4x[12]), .c(c[51:48]));
    carry_generator carry1x_13(.p(p[55:52]), .g(g[55:52]), .cin(c_4x[13]), .c(c[55:52]));
    carry_generator carry1x_14(.p(p[59:56]), .g(g[59:56]), .cin(c_4x[14]), .c(c[59:56]));
    carry_generator carry1x_15(.p(p[63:60]), .g(g[63:60]), .cin(c_4x[15]), .c(c[63:60]));
    
    // generate sum
    sum_geneator generate_sum(a[63:0], b[63:0], c[63:0], sum[63:0]);
    //---------------------------------//

endmodule

module rev(in, out);
    input [63:0] in;
    output [63:0] out;
    assign out = {in[63:32], 4'b1111, in[27:4], 4'b1111};
endmodule
    
module gp_generator(a,b,g,p);

    input [3:0] a,b;
    output [3:0] g,p;
    
    // g = a x b && p = a + b
    assign g = a & b;
    assign p = a | b;

endmodule

module carry_generator(g,p,cin,c,gG,gP,cout);

    input [3:0] g,p;
    input cin;
    output gG,gP;
    output [3:0] c;
    output cout;

    //create gG and gP
    assign gG = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);
	assign gP = p[3] & p[2] & p[1] & p[0];
	
    assign c[0] = cin;
    //create carrys
    assign c[1] = g[0] | (p[0] & cin);
    assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
    assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);

    //cout
    assign cout = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);

endmodule

module sum_geneator(a,b,c,sum);

    input [63:0] a,b;
    input [63:0] c;
    output [63:0] sum;

    //sum = a ^ b ^ c;
    assign sum = a ^ b ^ c;

endmodule
