module gcd (
	input [7:0] a,
	input [7:0] b,
	input clk,
	input rst,
	output reg [7:0] c
);
	integer i;
	reg [7:0] a_reg, b_reg;
	reg flag = 1;

	always @(a or b) begin
		a_reg = a;
		b_reg = b;
	end
	integer count=0;
	// wire [4:0] count;
	// counter CNT(.pulse(counter_triger), .rst(rst), .out(count));
	


	always @(posedge rst) begin
		if (a>b) begin
			a_reg = b;
			b_reg = a;
			count = 0;
		end
		else begin
			a_reg = a;
			b_reg = b;
			count = 0;
		end
	end
	
	always @(posedge clk && ~rst) begin
		flag = (a_reg != b_reg);
		if (a_reg != b_reg) begin
			if (a_reg[0] ==0 && b_reg[0] ==0) begin
				a_reg = a_reg >> 1;
				b_reg = b_reg >> 1;
				count = count + 1;
			end
			else if (b_reg[0] == 0) begin
				b_reg = b_reg >> 1;
			end
			else if (a_reg[0] == 0) begin
				a_reg = a_reg >> 1;
			end
			else begin
				if (a_reg > b_reg) begin
					a_reg = a_reg - b_reg;
					a_reg = a_reg >> 1;
				end
				else begin
					b_reg = b_reg - a_reg;
					b_reg = b_reg >> 1;
				end
			end
		end else begin
			c = a_reg << count;
		end
	end
	// assign c = a_reg;
endmodule