`include "A4Q2_eight_bit_adder_subtractor.v"

module eight_bit_adder_subtractor_tb();
reg [7:0] a; //the 2 numbers
reg [7:0] b;
reg opcode; //addition (0) or subtraction (1)
wire [7:0] sum; //result
wire overflow; //overflowed or not
eight_bit_adder_subtractor EBAS (
    .sum(sum), 
    .overflow(overflow), 
    .a(a), 
    .b(b), 
    .opcode(opcode)
    ); 
//mechanism to convert sum to actual decimal
integer final_sum_or_diff;
integer first_bits;
integer msb;
integer final_a;
integer final_b;
integer first_bits_a;
integer first_bits_b;
integer msb_a;
integer msb_b;
//convert a to the 2's complement format decimal
always @(*) begin
    first_bits_a = a[6:0];

end
always @(*) begin
    msb_a = 2*2*2*2*2*2*2*a[7];
 
end
always @(*) begin
    final_a = first_bits_a - msb_a;
end

//convert b to the two's complement format decimal
always @(*) begin
    first_bits_b = b[6:0];

end
always @(*) begin
    msb_b = 2*2*2*2*2*2*2*b[7];
 
end
always @(*) begin
    final_b = first_bits_b - msb_b;
end

//complete sum to the two's complement format decimal
always @(*) begin
    first_bits = sum[6:0];

end
always @(*) begin
    msb = 2*2*2*2*2*2*2*sum[7];
 
end
always @(*) begin
    final_sum_or_diff = first_bits - msb;
end
//end of mechanism
initial begin
	// We've also tested by varying opcode to properly test the module
	$monitor("Time: %4d | a = %d | b = %d | opcode = %b | sum/diff = %d | overflow = %b | a (in binary) = %b | b (in binary) = %b | sum (in binary) = %b", $time, final_a, final_b, opcode, final_sum_or_diff, overflow, a, b, sum);
	repeat(15) begin
		#5
		a = $urandom % 256; b = $urandom % 256; opcode = $urandom % 2;
	end
end
endmodule