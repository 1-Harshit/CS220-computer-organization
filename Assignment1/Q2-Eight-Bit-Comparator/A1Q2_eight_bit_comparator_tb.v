`include "A1Q2_eight_bit_comparator.v"

module eight_bit_comparator_tb();
    wire l,e,g;
    reg[7:0] a,b; //input numbers
    eight_bit_comparator comp(l, e, g, a, b,1'b0,1'b1,1'b0);

    initial begin
        $display("time ||   a |   b || lesser | equal | greater ");
        $monitor("%4d || %d | %d || %6d | %5d | %7d", $time,a,b,l,e,g); //l is lesser, e is equal, g is greater
        a = 45; b=45; //2 random input numbers
        repeat(15) begin
          #5
          a = $random%256; b = $random%256;
        end
        $finish;
    end

endmodule
