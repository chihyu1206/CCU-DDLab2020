module top(
	clk,
	rst, // BTNC(N17)
    en_p17,// BTNL(P17)
    en_m17,//BTNR(M17)
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
	AN7
    );
    
input clk;
input rst, en_p17, en_m17;
input [15:0] sw;

output CA,CB,CC,CD,CE,CF,CG;
output AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7;

// wire [15:0] sum;

reg [2:0] state;
reg [3:0] seg_number;
reg [6:0] seg_data;
reg [20:0] counter;
reg [7:0] scan;
reg [4:0] p17Counter;
reg [4:0] m17Counter;
integer shift_cnt = 0;
reg signed [63:0] fp_num;
reg invalid;

always@ (posedge clk) begin
	if (rst) begin
        invalid = 1'b0;
        shift_cnt = 0;
        if ({sw[14:7]} >= 8'b1000_1001) begin 
        // 127 + 10 = 137 = (10001001)base=2 fp_num >= 1024.xxxxxxx 
        // the 7-seg will always show FFFFFFFF despite not considering mantissa
            invalid = 1'b1;
        end
        else begin
            fp_num = {56'b0, 1'b1, sw[6:0]}; // 2^7 ~ 2^0
            fp_num = fp_num * 10000; // for 7-seg view
            if ({sw[14:7]} > 8'b0111_1111) begin // > 127
                shift_cnt = {sw[14:7]} - 8'b0111_1111;
                fp_num = fp_num << shift_cnt;
            end
            else begin
                shift_cnt = 8'b0111_1111 - {sw[14:7]};
                fp_num = fp_num >> shift_cnt;
            end
            fp_num = fp_num >> 7; // 2^0 ~ 2^-7
            if (fp_num > 64'd9999999)
                invalid = 1'b1;
            if (sw[15])  // floating number < 0
                fp_num = ~fp_num + 1'b1;
        end
    end
    if (en_p17 || en_m17) begin // + 3
        fp_num <= fp_num;
    end
    else if (p17Counter == 5'd10) begin
        if (fp_num >= 0) begin
            if ((fp_num + 64'd70000) > 64'd9999999) begin 
                invalid <= 1'b1;
            end
            else begin
                invalid <= 1'b0;
            end
        end
        fp_num <= fp_num + 64'd70000;
    end
    else if (m17Counter == 5'd16) begin
        if (fp_num >= 0) begin
            if (fp_num * 3 > 64'd9999999) begin
                invalid <= 1'b1;
            end
            else begin
                invalid <= 1'b0;
            end
        end
        else begin
            if (~(fp_num - 1'b1) * 3 > 64'd9999999) begin
                invalid <= 1'b1;
            end
            else begin
                invalid <= 1'b0;
            end
        end
        fp_num <= fp_num * 3;
    end
    else begin
        fp_num <= fp_num;
    end
        /*
        if (fp_num >= 0) begin
            if (fp_num > 64'd9999999) 
                invalid = 1'b1;
        end
        else begin
            if (~(fp_num - 1'b1) > 64'd9999999) begin
                invalid = 1'b1;
            end
        end
        */
        /*
        if (fp_num >= 0) begin
            if (fp_num > 64'd9999999)
                invalid = 1'b1;
        end
        else begin 
            if (~(fp_num - 1'b1) > 64'd9999999)
                invalid = 1'b1;
        end
        */
    
end

always@(posedge clk) begin
    if (en_p17) begin
        p17Counter <= 5'd0;
    end
    else if (p17Counter <= 5'd16) begin
        p17Counter <= p17Counter + 1'b1;
    end
    else begin
        p17Counter <= p17Counter;
    end
end

always@(posedge clk) begin
    if (en_m17) begin
        m17Counter <= 5'd0;
    end
    else if (m17Counter <= 5'd20) begin
        m17Counter <= m17Counter + 1'b1;
    end
    else begin
        m17Counter <= m17Counter;
    end
end

assign {AN7,AN6,AN5,AN4,AN3,AN2,AN1,AN0} = scan;
always@(posedge clk) begin
    counter <=(counter<=100000) ? (counter +1) : 0;
    state <= (counter==100000) ? (state + 1) : state;
    if (invalid) begin // FFFF FFFF
        case(state)
            0: begin
                seg_number <= 4'd13;
                scan <= 8'b0111_1111;
            end
            1: begin
                seg_number <= 4'd13;
                scan <= 8'b1011_1111;
            end
            2: begin
                seg_number <= 4'd13;
                scan <= 8'b1101_1111;
            end
            3: begin
                seg_number <= 4'd13;
                scan <= 8'b1110_1111;
            end
            4: begin
                seg_number <= 4'd13;
                scan <= 8'b1111_0111;
            end
            5: begin
                seg_number <= 4'd13;
                scan <= 8'b1111_1011;
            end
            6: begin
                seg_number <= 4'd13;
                scan <= 8'b1111_1101;
            end
            7: begin
                seg_number <= 4'd13;
                scan <= 8'b1111_1110;
            end
        endcase
    end
    else begin        
        case(state)
            0:begin
                if (fp_num > 0) begin
                    seg_number <= 4'd11;
                end
                else if (fp_num == 0) begin
                    if (sw[15]) 
                        seg_number <= 4'd12;
                    else
                        seg_number <= 4'd11;
                end
                else begin
                    seg_number <= 4'd12;
                end
                scan <= 8'b0111_1111;
            end
            1:begin
                if (fp_num >= 0)
                    seg_number <= (fp_num / 1000000) % 10; 
                else
                    seg_number <= (~(fp_num-1'b1) / 1000000) % 10;
                scan <= 8'b1011_1111;
            end
            2:begin
                if (fp_num >= 0)
                    seg_number <= (fp_num / 100000) % 10;
                else
                    seg_number <= (~(fp_num-1'b1) / 100000) % 10;
                scan <= 8'b1101_1111;
            end
            3:begin
                if (fp_num >= 0)
                    seg_number <= (fp_num / 10000) % 10;
                else
                    seg_number <= (~(fp_num-1'b1) / 10000) % 10;
                scan <= 8'b1110_1111;
            end
            4:begin
                if (fp_num >= 0)
                    seg_number <= (fp_num / 1000) % 10;
                else
                    seg_number <= (~(fp_num-1'b1) / 1000) % 10;
                scan <= 8'b1111_0111;
            end
            5:begin
                if (fp_num >= 0)
                    seg_number <= (fp_num / 100) % 10;
                else
                    seg_number <= (~(fp_num-1'b1) / 100) % 10;
                scan <= 8'b1111_1011;
            end
            6:begin
                if (fp_num >= 0)
                    seg_number <= (fp_num / 10) % 10;
                else
                    seg_number <= (~(fp_num-1'b1) / 10) % 10;
                scan <= 8'b1111_1101;
            end
            7:begin
                if (fp_num >= 0)
                    seg_number <= (fp_num % 10);
                else
                    seg_number <= (~(fp_num-1'b1) % 10);
                scan <= 8'b1111_1110;
            end
            default: state <= state;
        endcase 
    end
end  


assign {CG,CF,CE,CD,CC,CB,CA} = seg_data;

always@(posedge clk) begin  
  case(seg_number)
	  4'd0:seg_data <= 7'b100_0000; // 0
      4'd1:seg_data <= 7'b111_1001; // 1
      4'd2:seg_data <= 7'b010_0100; // 2
      4'd3:seg_data <= 7'b011_0000; // 3
      4'd4:seg_data <= 7'b001_1001; // 4
      4'd5:seg_data <= 7'b001_0010; // 5
      4'd6:seg_data <= 7'b000_0010; // 6
      4'd7:seg_data <= 7'b101_1000; // 7
      4'd8:seg_data <= 7'b000_0000; // 8
      4'd9:seg_data <= 7'b001_0000; // 9
      4'd10:seg_data <= 7'b011_1111; // 10
      4'd11:seg_data <= 7'b111_1111; // +
      4'd12:seg_data <= 7'b011_1111; // - 
      4'd13:seg_data <= 7'b000_1110; // F
    default: seg_data <= seg_data;
  endcase
end 

endmodule