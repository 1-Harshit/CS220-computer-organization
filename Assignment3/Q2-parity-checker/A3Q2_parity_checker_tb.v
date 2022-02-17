`include "A3Q2_parity_checker.v"
module parity_checker_tb();
	reg[2:0] seq=3'd0;
	wire out;
	reg reset;
	wire clk;

	clock_module C1(clk);
	parity_checker P1(out,seq,reset,clk);
	
	initial begin
		#5
		$display("Sequence Parity");
		repeat(8) begin //edit here to change number of test cases, change in clock module also below
			#29 //according to clock and input cycles, this is right time to read output
			$display("%b      %b", seq, out);
			reset=1;
	
			#1 reset=0;
			seq=seq+1;
		end
	end

endmodule

module clock_module(clk); //separate module to avoid confusion
	output reg clk=1'b1;
	initial begin
		repeat(8) begin //edit here to change number of test cases
			repeat(6) begin
				#5 clk=~clk;
			end
		end
	end
endmodule
