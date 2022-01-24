`include "A1Q2_eight_bit_comparator.v"
module eight_bit_comparator_top();
    wire l,e,g;
    reg[7:0] a,b;
    eight_bit_comparator comp(l, e, g, a, b,1'b0,1'b1,1'b0);

    initial begin
        $display("time ||   a |   b || lesser | equal | greater ");
        $monitor("%4d || %d | %d || %6d | %5d | %7d", $time,a,b,l,e,g);
        a = 45; b=45;
        repeat(15) begin
          #5
          a = $urandom%256; b = $urandom%256;
        end
        $finish;
    end

endmodule
