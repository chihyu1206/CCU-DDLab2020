
`timescale 1ns/1ps

module lab(
	CLK, 
	RST,
	en,
	in_a, 
	in_b, 
	Product
);
// in_a * in_b = Product
// in_a is Multiplicand , in_b is Multiplier
					

input 			CLK, RST;
input			en;
input 	[7:0]	in_a;			// Multiplicand
input  	[7:0]	in_b;			// Multiplier
output	[15:0]  	Product;

reg 		  [7:0] Mplicand;		
reg signed [16:0]	Product_booth;
reg 		  [2:0]  Counter;
assign Product = Product_booth[16:1];
reg mpy_done;

always @(posedge CLK or posedge RST) begin
	if(RST)
		mpy_done <= 1'b1;
	else if(en)
		mpy_done <= 1'b0;
	else if(Counter==3'd4)
		mpy_done <= 1'b1;
	else
		mpy_done <= mpy_done;
end
//Counter
always @(posedge CLK or posedge RST)
begin
	if (RST)
		Counter <= 3'b0;
	else if (~mpy_done)
		Counter <= Counter + 1'b1;
	else
		Counter <= Counter;
end

//Product
always @(posedge CLK or posedge RST)
begin
	if (RST) begin
		Product_booth  <= 17'b0;
		Mplicand <= 8'b0;
	end

	else if (Counter == 3'd0) begin
		Mplicand <= in_a;
		Product_booth <= {8'b0, in_b, 1'b0};	
	end
	
	else if (Counter <= 3'd4)begin
	/**
	Your design
	**/
        if (Product_booth[2:0] == 3'b000 || Product_booth[2:0] == 3'b111) begin // +0
        end
        else if (Product_booth[2:0] == 3'b001 || Product_booth[2:0] == 3'b010) begin //+A
            Product_booth = Product_booth + {Mplicand, 9'd0};
        end
        else if (Product_booth[2:0] == 3'b101 || Product_booth[2:0] == 3'b110) begin //-A
            if (Mplicand[7] == 1'b0) begin // Mplicand >= 0
                Product_booth = Product_booth + {~Mplicand + 1'b1, 9'd0};
            end
            else begin //MPicand < 0
                Product_booth = Product_booth + {~(Mplicand - 1'b1), 9'd0};
            end
        end
        else if (Product_booth[2:0] == 3'b011) begin // +2A
            Product_booth = Product_booth + {Mplicand << 1'b1, 9'd0};
        end
        else if (Product_booth[2:0] == 3'b100) begin // -2A
            if (Mplicand[7] == 1'b0) begin // Mplicand >= 0
                Product_booth = Product_booth + {(~Mplicand + 1'b1) << 1'b1, 9'd0};
            end
            else begin
                Product_booth = Product_booth + {~(Mplicand - 1'b1) << 1'b1, 9'd0};
            end
        end
        Product_booth = Product_booth << 2'b10;    
	end
	else begin
		Product_booth <= Product_booth;
		Mplicand	<= Mplicand;
	end
end

endmodule
