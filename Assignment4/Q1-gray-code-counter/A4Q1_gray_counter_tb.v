`include "A4Q1_gray_counter.v"
module gray_counter_tb ();
	reg pulse;
	wire out;

	gray_counter uut(
		.pulse(pulse),
		.out(out)
	);

	initial begin
		pulse = 1'b0;
		$monitor("%4d | pulse: %b out: %b", $time, pulse, out); //every 8 pulses we get output 1
		#5;
		pulse = 1'b1;
		#6;
		pulse = 1'b0;
		#7;
		pulse = 1'b1;
		#8;
		pulse = 1'b0;
		#9;
		pulse = 1'b1;
		#10;
		pulse = 1'b0;
		#11;
		pulse = 1'b1;
		#12;
		pulse = 1'b0;
		#5;
		pulse = 1'b1;
		#6;
		pulse = 1'b0;
		#7;
		pulse = 1'b1;
		#8;
		pulse = 1'b0;
		#9;
		pulse = 1'b1;
		#10;
		pulse = 1'b0;
		#11;
		pulse = 1'b1;
		#12;
		pulse = 1'b0;
		#5;
		pulse = 1'b1;
		#6;
		pulse = 1'b0;
		#7;
		pulse = 1'b1;
		#8;
		pulse = 1'b0;
		#9;
		pulse = 1'b1;
		#4;
		pulse = 1'b0;
		#5;
		pulse = 1'b1;
		#6;
		pulse = 1'b0;
		#7;
		pulse = 1'b1;
		#8;
		pulse = 1'b0;
		#9;
		pulse = 1'b1;
		#10;
		pulse = 1'b0;
		#4;
		pulse = 1'b1;
		#5;
		pulse = 1'b0;
		#6;
		pulse = 1'b1;
		#7;
		pulse = 1'b0;
		#8;
		pulse = 1'b1;
		#9;
		pulse = 1'b0;
		#10;
		pulse = 1'b1;
		#4;
		pulse = 1'b0;
		#5;
		pulse = 1'b1;
		#6;
		pulse = 1'b0;
		#7;
		pulse = 1'b1;
		#8;
		pulse = 1'b0;
		#9;
		pulse = 1'b1;
		#10;
		pulse = 1'b0;
		#4;
		pulse = 1'b1;
		#5;
		pulse = 1'b0;
		#6;
		pulse = 1'b1;
		#7;
		pulse = 1'b0;
		#8;
		pulse = 1'b1;
		#9;
		pulse = 1'b0;
		#10;
		pulse = 1'b1;
		#4;
		pulse = 1'b0;
		#5;
		$finish;
	end

endmodule
