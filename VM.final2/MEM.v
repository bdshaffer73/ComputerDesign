module MEM(in, out, addr, rw, clk, rst);

input [31:0]in;
input [15:0]addr;
input rw; //Read on 0, Write on 1
input clk, rst;

output [31:0]out;

wire [31:0]Rout0;
wire [31:0]Rout1;
wire [31:0]Rout2;
wire [31:0]Rout3;
wire [31:0]Rout4;
wire [31:0]Rout5;
wire [31:0]Rout6;
wire [31:0]Rout7;
wire [31:0]Rout8;
wire [31:0]Rout9;
wire [31:0]Rout10;
wire [31:0]Rout11;
wire [31:0]Rout12;
wire [31:0]Rout13;
wire [31:0]Rout14;
wire [31:0]Rout15;

reg [31:0]Rin0;
reg [31:0]Rin1;
reg [31:0]Rin2;
reg [31:0]Rin3;
reg [31:0]Rin4;
reg [31:0]Rin5;
reg [31:0]Rin6;
reg [31:0]Rin7;
reg [31:0]Rin8;
reg [31:0]Rin9;
reg [31:0]Rin10;
reg [31:0]Rin11;
reg [31:0]Rin12;
reg [31:0]Rin13;
reg [31:0]Rin14;
reg [31:0]Rin15;

//REG rst's
reg reg0, reg1, reg2, reg3, reg4, reg5, 
reg6, reg7, reg8, reg9, reg10, reg11, 
reg12, reg13, reg14, reg15;

reg [31:0]out;

//Declare registers
REG register0 (rw, Rin0, Rout0, clk, reg0);
REG register1 (rw, Rin1, Rout1, clk, reg1);
REG register2 (rw, Rin2, Rout2, clk, reg2);
REG register3 (rw, Rin3, Rout3, clk, reg3);
REG register4 (rw, Rin4, Rout4, clk, reg4);
REG register5 (rw, Rin5, Rout5, clk, reg5);
REG register6 (rw, Rin6, Rout6, clk, reg6);
REG register7 (rw, Rin7, Rout7, clk, reg7);
REG register8 (rw, Rin8, Rout8, clk, reg8);
REG register9 (rw, Rin9, Rout9, clk, reg9);
REG register10 (rw, Rin10, Rout10, clk, reg10);
REG register11 (rw, Rin11, Rout11, clk, reg11);
REG register12 (rw, Rin12, Rout12, clk, reg12);
REG register13 (rw, Rin13, Rout13, clk, reg13);
REG register14 (rw, Rin14, Rout14, clk, reg14);
REG register15 (rw, Rin15, Rout15, clk, reg15);

//Read from registers. Reading is combinational, so no sequential block necessary.
always @(*)
begin
	case(addr)
		
		16'd0: begin	
			out = Rout0;
		end
		
		16'd1: begin	
			out = Rout1;
		end	

		16'd2: begin	
			out = Rout2;
		end

		16'd3: begin	
			out = Rout3;
		end
		
		16'd4: begin	
			out = Rout4;
		end

		16'd5: begin	
			out = Rout5;
		end

		16'd6: begin	
			out = Rout6;
		end

		16'd7: begin	
			out = Rout7;
		end

		16'd8: begin	
			out = Rout8;
		end

		16'd9: begin	
			out = Rout9;
		end

		16'd10: begin	
			out = Rout10;
		end

		16'd11: begin	
			out = Rout11;
		end

		16'd12: begin	
			out = Rout12;
		end

		16'd13: begin	
			out = Rout13;
		end

		16'd14: begin	
			out = Rout14;
		end
	
		16'd15: begin	
			out = Rout15;
		end
		
		default: begin
			out = 32'd0;
		end
	endcase
end

//Writing is sequential, so no combinational blocks.
always @(posedge clk or negedge rst)
begin
	if(rst == 1'd0) begin
		Rin0 <= 32'h000a0209; //mv from 2 to 10;
		reg1 <= rst;
		reg2 <= rst;
		reg3 <= rst;
		reg4 <= rst;
		reg5 <= rst;
		reg6 <= rst;
		reg7 <= rst;
		reg8 <= rst;
		reg9 <= rst;
		reg10 <= rst;
		reg11 <= rst;
		reg12 <= rst;
		reg13 <= rst;
		reg14 <= rst;
		reg15 <= rst;
		end
	else begin
		 if (rw == 1'd1) begin
			case(addr)

				16'd0: begin
					Rin0 <= in;
				end
			
				16'd1: begin
					Rin1 <= in;
				end		
				
				16'd2: begin
					Rin2 <= in;
				end		
					
				16'd3: begin
					Rin3 <= in;
				end		
						
				16'd4: begin
					Rin4 <= in;
				end		
							
				16'd5: begin
					Rin5 <= in;
				end		
								
				16'd6: begin
					Rin6 <= in;
				end		
								
				16'd7: begin
					Rin7 <= in;
				end		
								
				16'd8: begin
					Rin8 <= in;
				end		
								
				16'd9: begin
					Rin9 <= in;
				end		
								
				16'd10: begin
					Rin10 <= in;
				end		
								
				16'd11: begin
					Rin11 <= in;
				end		
								
				16'd12: begin
					Rin12 <= in;
				end		
								
				16'd13: begin
					Rin13 <= in;
				end		
				
				16'd14: begin
					Rin14 <= in;
				end		
				
				16'd15: begin
					Rin15 <= in;
				end		
				
				default;
			endcase
		end
		reg0 <= 1'd1;
		reg1 <= 1'd1;
		reg2 <= 1'd1;
		reg3 <= 1'd1;
		reg4 <= 1'd1;
		reg5 <= 1'd1;
		reg6 <= 1'd1;
		reg7 <= 1'd1;
		reg8 <= 1'd1;
		reg9 <= 1'd1;
		reg10 <= 1'd1;
		reg11 <= 1'd1;
		reg12 <= 1'd1;
		reg13 <= 1'd1;
		reg14 <= 1'd1;
		reg15 <= 1'd1;
	end
end
endmodule
