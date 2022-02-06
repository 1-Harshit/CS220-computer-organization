`include "A2Q1_eight_bit_look_ahead_carry_adder.v"
module eight_bit_look_ahead_carry_adder_tb();
    reg [7:0] a,b;
    reg cin;
    wire [7:0] sum;
    wire c_out;
    eight_bit_look_ahead_carry_adder Addr(sum,c_out,a,b,cin);
    initial begin
        $display("|  a  |  b  | cin |  sum  |c_out|");
        $monitor("| %d + %d +  %d  = %d   || %d  |",a,b,cin,sum,c_out);
        repeat(15) begin
			#5
			a = $urandom % 256; b = $urandom % 256;cin= $urandom%2; 
            //we are randomly initializing cin also to check that code works perfectly

            //c_out 1 implies there is overflow more than 8 bits
            //and that we need to add 256 to the result to get right answer
		end
    end

endmodule
