module top(
	clk,
	rst,
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
input rst;
input [15:0]sw;
input en_m18;
output CA,CB,CC,CD,CE,CF,CG;
output AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7;

wire [15:0] Product;
reg [2:0] state;
reg [3:0] seg_number;
reg [6:0] seg_data;
reg [20:0] counter;
reg [7:0] scan;
reg [31:0] cnt_2hz;
reg clk_2hz;
reg [7:0] in_a, in_b;
reg [15:0] prod;
lab booth(clk_2hz, rst, en_m18, in_a, in_b, Product);
//**CLK_DIV**//
always@ (posedge clk or posedge rst) begin
	if (rst) begin
		cnt_2hz <= 32'b0;
		clk_2hz <= 1'b0;
        in_a <= 32'd0;
        in_b <= 32'd0;
        prod <= 16'd0;
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
	    if (en_m18) begin
            in_a <= sw[15:8];
            in_b <= sw[7:0];
        end
    end
end

assign {AN7,AN6,AN5,AN4,AN3,AN2,AN1,AN0} = scan;

always@(posedge clk) begin
    counter <=(counter<=100000) ? (counter +1) : 0;
    state <= (counter==100000) ? (state + 1) : state;
    prod = Product;
	if (prod[15] == 1'b1) begin // product < 0
        prod = ~(prod - 1'b1);
        case(state)
            0:begin
                if (prod / 1000000 == 0)
                    seg_number <= 0;
                else
                    seg_number <= (prod / 10000000 == 0)? 10: (prod / 10000000) % 10;                
                scan <= 8'b0111_1111;
            end
            1:begin
                if (prod / 100000 == 0)
                    seg_number <= 0;
                else
                    seg_number <= (prod / 1000000 == 0)? 10: (prod / 1000000) % 10;
                scan <= 8'b1011_1111;
            end
            2:begin
                if (prod / 10000 == 0)
                    seg_number <= 0;
                else
                    seg_number <= (prod / 100000 == 0)? 10: (prod / 100000) % 10;
                scan <= 8'b1101_1111;
            end
            3:begin
                if (prod / 1000 == 0)
                    seg_number <= 0;
                else
                    seg_number <= (prod / 10000 == 0)? 10: (prod / 10000) % 10;
                scan <= 8'b1110_1111;
            end
            4:begin
                if (prod / 100 == 0)
                    seg_number <= 0;
                else
                    seg_number <= (prod / 1000 == 0)? 10: (prod / 1000) % 10;
                scan <= 8'b1111_0111;
            end
            5:begin
                if (prod / 10 == 0)
                    seg_number <= 0;
                else
                    seg_number <= (prod / 100 == 0)? 10: (prod / 100) % 10;
                scan <= 8'b1111_1011;
            end
            6:begin
                seg_number <= (prod / 10 == 0)? 10: (prod / 10) % 10;
                scan <= 8'b1111_1101;
            end
            7:begin
                seg_number <= prod % 10;
                scan <= 8'b1111_1110;
            end
            default: state <= state;
        endcase 
    end
    else begin // product >= 0
        case(state)
            0:begin
                seg_number <= (prod / 10000000);
                scan <= 8'b0111_1111;
            end
            1:begin
                seg_number <= (prod / 1000000) % 10;
                scan <= 8'b1011_1111;
            end
            2:begin
                seg_number <= (prod / 100000) % 10;
                scan <= 8'b1101_1111;
            end
            3:begin
                seg_number <= (prod / 10000) % 10;
                scan <= 8'b1110_1111;
            end
            4:begin
                seg_number <= (prod / 1000) % 10;
                scan <= 8'b1111_0111;
            end
            5:begin
                seg_number <= (prod / 100) % 10;
                scan <= 8'b1111_1011;
            end
            6:begin
                seg_number <= (prod / 10) % 10;
                scan <= 8'b1111_1101;
            end
            7:begin
                seg_number <= prod % 10;
                scan <= 8'b1111_1110;
            end
            default: state <= state;
        endcase
    end
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
	default: seg_data <= seg_data;
  endcase
end 

endmodule