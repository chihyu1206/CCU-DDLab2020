`include "FA.v"
`include "HA.v"
module MPY(clk, a, b, product);
    input clk;
    input [31:0] a, b;
    wire [31:0] ab0, ab1, ab2, ab3, ab4, ab5, ab6, ab7, 
                ab8, ab9, ab10, ab11, ab12, ab13, ab14, ab15,
                ab16, ab17, ab18, ab19, ab20, ab21, ab22, ab23, 
                ab24, ab25, ab26, ab27, ab28, ab29, ab30, ab31;
                
    wire [63:0] add0, add1, add2, add3, add4, add5, add6, add7,
               add8, add9, add10, add11, add12, add13, add14, add15,
               add16, add17, add18, add19, add20, add21, add22, add23,
               add24, add25, add26, add27, add28, add29, add30, add31;
               
    wire [63:0] ext0, ext1, ext2, ext3, ext4, ext5, ext6, ext7,
                ext8, ext9, ext10, ext11, ext12, ext13, ext14, ext15,
                ext16, ext17, ext18, ext19, ext20, ext21, ext22, ext23, 
                ext24, ext25, ext26, ext27, ext28, ext29, ext30, ext31;
                
    wire [63:0] sum0, sum1, sum2, sum3, sum4, sum5, sum6, sum7,
                sum8, sum9, sum10, sum11, sum12, sum13, sum14, sum15,
                sum16, sum17, sum18, sum19, sum20, sum21, sum22, sum23,
                sum24, sum25, sum26, sum27, sum28, sum29, sum30, sum31,
                sum32, sum33, sum34, sum35, sum36, sum37, sum38, sum39,
                sum40, sum41, sum42, sum43, sum44, sum45, sum46, sum47,
                sum48, sum49, sum50, sum51, sum52, sum53, sum54, sum55,
                sum56, sum57, sum58, sum59, sum60;
                
    output [63:0] product;

    arrand and0(a, b[0], ab0);
    arrand and1(a, b[1], ab1);
    arrand and2(a, b[2], ab2);
    arrand and3(a, b[3], ab3);
    arrand and4(a, b[4], ab4);
    arrand and5(a, b[5], ab5);
    arrand and6(a, b[6], ab6);
    arrand and7(a, b[7], ab7);
    arrand and8(a, b[8], ab8);
    arrand and9(a, b[9], ab9);
    arrand and10(a, b[10], ab10);
    arrand and11(a, b[11], ab11);
    arrand and12(a, b[12], ab12);
    arrand and13(a, b[13], ab13);
    arrand and14(a, b[14], ab14);
    arrand and15(a, b[15], ab15);
    arrand and16(a, b[16], ab16);
    arrand and17(a, b[17], ab17);
    arrand and18(a, b[18], ab18);
    arrand and19(a, b[19], ab19);
    arrand and20(a, b[20], ab20);
    arrand and21(a, b[21], ab21);
    arrand and22(a, b[22], ab22);
    arrand and23(a, b[23], ab23);
    arrand and24(a, b[24], ab24);
    arrand and25(a, b[25], ab25);
    arrand and26(a, b[26], ab26);
    arrand and27(a, b[27], ab27);
    arrand and28(a, b[28], ab28);
    arrand and29(a, b[29], ab29);
    arrand and30(a, b[30], ab30);
    arrand and31(a, b[31], ab31);
    
    
    

    assign add0 = {{32{ab0[31]}}, ab0};
    assign add1 = {{31{ab1[31]}}, ab1, 1'b0};
    assign add2 = {{30{ab2[31]}}, ab2, 2'b0};
    assign add3 = {{29{ab3[31]}}, ab3, 3'b0};
    assign add4 = {{28{ab4[31]}}, ab4, 4'b0};
    assign add5 = {{27{ab5[31]}}, ab5, 5'b0};
    assign add6 = {{26{ab6[31]}}, ab6, 6'b0};
    assign add7 = {{25{ab7[31]}}, ab7, 7'b0};
    assign add8 = {{24{ab8[31]}}, ab8, 8'b0};
    assign add9 = {{23{ab9[31]}}, ab9, 9'b0};
    assign add10 = {{22{ab10[31]}}, ab10, 10'b0};
    assign add11 = {{21{ab11[31]}}, ab11, 11'b0};
    assign add12 = {{20{ab12[31]}}, ab12, 12'b0};
    assign add13 = {{19{ab13[31]}}, ab13, 13'b0};
    assign add14 = {{18{ab14[31]}}, ab14, 14'b0};
    assign add15 = {{17{ab15[31]}}, ab15, 15'b0};
    assign add16 = {{16{ab16[31]}}, ab16, 16'b0};
    assign add17 = {{15{ab17[31]}}, ab17, 17'b0};
    assign add18 = {{14{ab18[31]}}, ab18, 18'b0};
    assign add19 = {{13{ab19[31]}}, ab19, 19'b0};
    assign add20 = {{12{ab20[31]}}, ab20, 20'b0};
    assign add21 = {{11{ab21[31]}}, ab21, 21'b0};
    assign add22 = {{10{ab22[31]}}, ab22, 22'b0};
    assign add23 = {{9{ab23[31]}}, ab23, 23'b0};
    assign add24 = {{8{ab24[31]}}, ab24, 24'b0};
    assign add25 = {{7{ab25[31]}}, ab25, 25'b0};
    assign add26 = {{6{ab26[31]}}, ab26, 26'b0};
    assign add27 = {{5{ab27[31]}}, ab27, 27'b0};
    assign add28 = {{4{ab28[31]}}, ab28, 28'b0};
    assign add29 = {{3{ab29[31]}}, ab29, 29'b0};
    assign add30 = {{2{ab30[31]}}, ab30, 30'b0};
    assign add31 = {1'b0, ab31, 31'b0};
    
    assign ext0 = {{32{ab31[0]}}, 32'b0};
    assign ext1 = {{31{ab31[1]}}, 33'b0};
    assign ext2 = {{30{ab31[2]}}, 34'b0};
    assign ext3 = {{29{ab31[3]}}, 35'b0};
    assign ext4 = {{28{ab31[4]}}, 36'b0};
    assign ext5 = {{27{ab31[5]}}, 37'b0};
    assign ext6 = {{26{ab31[6]}}, 38'b0};
    assign ext7 = {{25{ab31[7]}}, 39'b0};
    assign ext8 = {{24{ab31[8]}}, 40'b0};
    assign ext9 = {{23{ab31[9]}}, 41'b0};
    assign ext10 = {{22{ab31[10]}}, 42'b0};
    assign ext11 = {{21{ab31[11]}}, 43'b0};
    assign ext12 = {{20{ab31[12]}}, 44'b0};
    assign ext13 = {{19{ab31[13]}}, 45'b0};
    assign ext14 = {{18{ab31[14]}}, 46'b0};
    assign ext15 = {{17{ab31[15]}}, 47'b0};
    assign ext16 = {{16{ab31[16]}}, 48'b0};
    assign ext17 = {{15{ab31[17]}}, 49'b0};
    assign ext18 = {{14{ab31[18]}}, 50'b0};
    assign ext19 = {{13{ab31[19]}}, 51'b0};
    assign ext20 = {{12{ab31[20]}}, 52'b0};
    assign ext21 = {{11{ab31[21]}}, 53'b0};
    assign ext22 = {{10{ab31[22]}}, 54'b0};
    assign ext23 = {{9{ab31[23]}}, 55'b0};
    assign ext24 = {{8{ab31[24]}}, 56'b0};
    assign ext25 = {{7{ab31[25]}}, 57'b0};
    assign ext26 = {{6{ab31[26]}}, 58'b0};
    assign ext27 = {{5{ab31[27]}}, 59'b0};
    assign ext28 = {{4{ab31[28]}}, 60'b0};
    assign ext29 = {{3{ab31[29]}}, 61'b0};
    assign ext30 = {{2{ab31[30]}}, 62'b0};


    adder adder0(clk,add0,add1,sum0);
    adder adder1(clk,sum0,add2,sum1);
    adder adder2(clk,sum1,add3,sum2);
    adder adder3(clk,sum2,add4,sum3);
    adder adder4(clk,sum3,add5,sum4);
    adder adder5(clk,sum4,add6,sum5);
    adder adder6(clk,sum5,add7,sum6);
    adder adder7(clk,sum6,add8,sum7);
    adder adder8(clk,sum7,add9,sum8);
    adder adder9(clk,sum8,add10,sum9);
    adder adder10(clk,sum9,add11,sum10);
    adder adder11(clk,sum10,add12,sum11);
    adder adder12(clk,sum11,add13,sum12);
    adder adder13(clk,sum12,add14,sum13);
    adder adder14(clk,sum13,add15,sum14);
    adder adder15(clk,sum14,add16,sum15);
    adder adder16(clk,sum15,add17,sum16);
    adder adder17(clk,sum16,add18,sum17);
    adder adder18(clk,sum17,add19,sum18);
    adder adder19(clk,sum18,add20,sum19);
    adder adder20(clk,sum19,add21,sum20);
    adder adder21(clk,sum20,add22,sum21);
    adder adder22(clk,sum21,add23,sum22);
    adder adder23(clk,sum22,add24,sum23);
    adder adder24(clk,sum23,add25,sum24);
    adder adder25(clk,sum24,add26,sum25);
    adder adder26(clk,sum25,add27,sum26);
    adder adder27(clk,sum26,add28,sum27);
    adder adder28(clk,sum27,add29,sum28);
    adder adder29(clk,sum28,add30,sum29);
    adder adder30(clk,sum29,add31,sum30);
    adder adder31(clk,sum30,ext0,sum31);
    adder adder32(clk,sum31,ext1,sum32);
    adder adder33(clk,sum32,ext2,sum33);
    adder adder34(clk,sum33,ext3,sum34);
    adder adder35(clk,sum34,ext4,sum35);
    adder adder36(clk,sum35,ext5,sum36);
    adder adder37(clk,sum36,ext6,sum37);
    adder adder38(clk,sum37,ext7,sum38);
    adder adder39(clk,sum38,ext8,sum39);
    adder adder40(clk,sum39,ext9,sum40);
    adder adder41(clk,sum40,ext10,sum41);
    adder adder42(clk,sum41,ext11,sum42);
    adder adder43(clk,sum42,ext12,sum43);
    adder adder44(clk,sum43,ext13,sum44);
    adder adder45(clk,sum44,ext14,sum45);
    adder adder46(clk,sum45,ext15,sum46);
    adder adder47(clk,sum46,ext16,sum47);
    adder adder48(clk,sum47,ext17,sum48);
    adder adder49(clk,sum48,ext18,sum49);
    adder adder50(clk,sum49,ext19,sum50);
    adder adder51(clk,sum50,ext20,sum51);
    adder adder52(clk,sum51,ext21,sum52);
    adder adder53(clk,sum52,ext22,sum53);
    adder adder54(clk,sum53,ext23,sum54);
    adder adder55(clk,sum54,ext24,sum55);
    adder adder56(clk,sum55,ext25,sum56);
    adder adder57(clk,sum56,ext26,sum57);
    adder adder58(clk,sum57,ext27,sum58);
    adder adder59(clk,sum58,ext28,sum59);
    adder adder60(clk,sum59,ext29,sum60);
    adder adder61(clk,sum60,ext30,product);


endmodule

module arrand(a, b, ab);
    input [31:0] a;
    input b;
    output [31:0] ab;

    assign ab = a & {32{b}};
endmodule

module adder(clk, a, b, sum);
    input clk;
    input [63:0] a, b;
    output [63:0] sum;
    wire [63:0]c;
    
    HA HA1(clk, a[0], b[0], sum[0], c[0]);
    FA FA1(clk, a[1], b[1], c[0], sum[1], c[1]);
    FA FA2(clk, a[2], b[2], c[1], sum[2], c[2]);
    FA FA3(clk, a[3], b[3], c[2], sum[3], c[3]);
    FA FA4(clk, a[4], b[4], c[3], sum[4], c[4]);
    FA FA5(clk, a[5], b[5], c[4], sum[5], c[5]);
    FA FA6(clk, a[6], b[6], c[5], sum[6], c[6]);
    FA FA7(clk, a[7], b[7], c[6], sum[7], c[7]);                        
    FA FA8(clk, a[8], b[8], c[7], sum[8], c[8]);                        
    FA FA9(clk, a[9], b[9], c[8], sum[9], c[9]);                        
    FA FA10(clk, a[10], b[10], c[9], sum[10], c[10]);                        
    FA FA11(clk, a[11], b[11], c[10], sum[11], c[11]);                        
    FA FA12(clk, a[12], b[12], c[11], sum[12], c[12]);                        
    FA FA13(clk, a[13], b[13], c[12], sum[13], c[13]);                        
    FA FA14(clk, a[14], b[14], c[13], sum[14], c[14]);                        
    FA FA15(clk, a[15], b[15], c[14], sum[15], c[15]);                        
    FA FA16(clk, a[16], b[16], c[15], sum[16], c[16]);                        
    FA FA17(clk, a[17], b[17], c[16], sum[17], c[17]);                        
    FA FA18(clk, a[18], b[18], c[17], sum[18], c[18]);                        
    FA FA19(clk, a[19], b[19], c[18], sum[19], c[19]);                        
    FA FA20(clk, a[20], b[20], c[19], sum[20], c[20]);                        
    FA FA21(clk, a[21], b[21], c[20], sum[21], c[21]);                        
    FA FA22(clk, a[22], b[22], c[21], sum[22], c[22]);                        
    FA FA23(clk, a[23], b[23], c[22], sum[23], c[23]);                        
    FA FA24(clk, a[24], b[24], c[23], sum[24], c[24]);                        
    FA FA25(clk, a[25], b[25], c[24], sum[25], c[25]);                        
    FA FA26(clk, a[26], b[26], c[25], sum[26], c[26]);                        
    FA FA27(clk, a[27], b[27], c[26], sum[27], c[27]);                        
    FA FA28(clk, a[28], b[28], c[27], sum[28], c[28]);                        
    FA FA29(clk, a[29], b[29], c[28], sum[29], c[29]);                        
    FA FA30(clk, a[30], b[30], c[29], sum[30], c[30]);                        
    FA FA31(clk, a[31], b[31], c[30], sum[31], c[31]);                        
    FA FA32(clk, a[32], b[32], c[31], sum[32], c[32]);                        
    FA FA33(clk, a[33], b[33], c[32], sum[33], c[33]);                        
    FA FA34(clk, a[34], b[34], c[33], sum[34], c[34]);                        
    FA FA35(clk, a[35], b[35], c[34], sum[35], c[35]);                        
    FA FA36(clk, a[36], b[36], c[35], sum[36], c[36]);                        
    FA FA37(clk, a[37], b[37], c[36], sum[37], c[37]);                        
    FA FA38(clk, a[38], b[38], c[37], sum[38], c[38]);                        
    FA FA39(clk, a[39], b[39], c[38], sum[39], c[39]);                        
    FA FA40(clk, a[40], b[40], c[39], sum[40], c[40]);                        
    FA FA41(clk, a[41], b[41], c[40], sum[41], c[41]);                        
    FA FA42(clk, a[42], b[42], c[41], sum[42], c[42]);                        
    FA FA43(clk, a[43], b[43], c[42], sum[43], c[43]);                        
    FA FA44(clk, a[44], b[44], c[43], sum[44], c[44]);                        
    FA FA45(clk, a[45], b[45], c[44], sum[45], c[45]);                        
    FA FA46(clk, a[46], b[46], c[45], sum[46], c[46]);                        
    FA FA47(clk, a[47], b[47], c[46], sum[47], c[47]);                        
    FA FA48(clk, a[48], b[48], c[47], sum[48], c[48]);                        
    FA FA49(clk, a[49], b[49], c[48], sum[49], c[49]);                        
    FA FA50(clk, a[50], b[50], c[49], sum[50], c[50]);                        
    FA FA51(clk, a[51], b[51], c[50], sum[51], c[51]);                        
    FA FA52(clk, a[52], b[52], c[51], sum[52], c[52]);                        
    FA FA53(clk, a[53], b[53], c[52], sum[53], c[53]);                        
    FA FA54(clk, a[54], b[54], c[53], sum[54], c[54]);                        
    FA FA55(clk, a[55], b[55], c[54], sum[55], c[55]);                        
    FA FA56(clk, a[56], b[56], c[55], sum[56], c[56]);                        
    FA FA57(clk, a[57], b[57], c[56], sum[57], c[57]);                        
    FA FA58(clk, a[58], b[58], c[57], sum[58], c[58]);                        
    FA FA59(clk, a[59], b[59], c[58], sum[59], c[59]);                        
    FA FA60(clk, a[60], b[60], c[59], sum[60], c[60]);                        
    FA FA61(clk, a[61], b[61], c[60], sum[61], c[61]);                        
    FA FA62(clk, a[62], b[62], c[61], sum[62], c[62]);                        
    FA FA63(clk, a[63], b[63], c[62], sum[63], c[63]);                        
endmodule