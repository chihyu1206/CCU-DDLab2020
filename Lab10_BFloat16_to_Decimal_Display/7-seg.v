module top(
	clk,
	en_n17,//rst
	sw,
	CA,
	CB,
	CC,
	CD,
	CE,
	CF,
	CG,
	AN0,
	AN1,
	AN2,
	AN3,
	AN4,
	AN5,
	AN6,
	AN7,
	en_m18
    );
    
input clk;
input en_n17;
input [15:0] sw;
input en_m18;
output CA,CB,CC,CD,CE,CF,CG;
output AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7;

// wire [15:0] sum;

reg [2:0] state;
reg [3:0] seg_number;
reg [6:0] seg_data;
reg [20:0] counter;
reg [7:0] scan;
reg [31:0] cnt_2hz;
reg clk_2hz;
//reg [7:0] in_a, in_b;

//reg [31:0] result;
integer fraction = 0;
//**CLK_DIV**//
always@ (posedge clk or posedge en_n17) begin
	if (en_n17) begin
		cnt_2hz <= 32'b0;
		clk_2hz <= 1'b0;
        fraction <= 0;
	end
	else begin
		if (cnt_2hz >= 25000000) begin
			cnt_2hz <= 32'b0;
			clk_2hz <= ~clk_2hz;
		end
		else begin
			cnt_2hz <= cnt_2hz + 1;
			clk_2hz <= clk_2hz;
		end
	end
end

assign {AN7,AN6,AN5,AN4,AN3,AN2,AN1,AN0} = scan;
always@(posedge clk) begin
  counter <=(counter<=100000) ? (counter +1) : 0;
  state <= (counter==100000) ? (state + 1) : state;
  fraction = sw[6] * 1000000 + sw[5] * 500000 + sw[4] * 250000 + sw[3] * 125000 + sw[2] * 62500 + sw[1] * 31250 + sw[0] * 15625;
  fraction = fraction / 100;
	case(state)
		0:begin
            if (sw[15]) // -
                seg_number <= 4'd12;
            else // +
                seg_number <= 4'd11;
			scan <= 8'b0111_1111;
		end
		1:begin
			seg_number <= (fraction / 1000000)
			scan <= 8'b1011_1111;
		end
		2:begin
			seg_number <= (fraction / 100000) % 10;
			scan <= 8'b1101_1111;
		end
		3:begin
			seg_number <= (fraction / 10000) % 10;
			scan <= 8'b1110_1111;
		end
		4:begin
			seg_number <= (fraction / 1000) % 10;
			scan <= 8'b1111_0111;
		end
		5:begin
			seg_number <= (fraction / 100) % 10;
			scan <= 8'b1111_1011;
		end
		6:begin
			seg_number <= (fraction / 10) % 10;
			scan <= 8'b1111_1101;
		end
		7:begin
			seg_number <= fraction % 10;
			scan <= 8'b1111_1110;
		end
		default: state <= state;
	endcase 
end  


assign {CG,CF,CE,CD,CC,CB,CA} = seg_data;

always@(posedge clk) begin  
  case(seg_number)
	  4'd0:seg_data <= 7'b100_0000;
      4'd1:seg_data <= 7'b111_1001;
      4'd2:seg_data <= 7'b010_0100;
      4'd3:seg_data <= 7'b011_0000;
      4'd4:seg_data <= 7'b001_1001;
      4'd5:seg_data <= 7'b001_0010;
      4'd6:seg_data <= 7'b000_0010;
      4'd7:seg_data <= 7'b101_1000;
      4'd8:seg_data <= 7'b000_0000;
      4'd9:seg_data <= 7'b001_0000;
      4'd10:seg_data <= 7'b011_1111;
      4'd11:seg_data <= 7'b111_1111; // +
      4'd12:seg_data <= 7'b011_1111; // - 
	default: seg_data <= seg_data;
  endcase
end 

endmodule