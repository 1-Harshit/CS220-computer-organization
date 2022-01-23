`include "A1Q2_eight_bit_comparator.v"
module test_bench();
    wire l,e,g;
    reg[7:0] a,b;
    eight_bit_comparator comp(l,e,g,a,b);
    initial
    begin
        $monitor("time: %4d | compare %d, %d res:%d%d%d",$time, a,b,l,e,g);
        #5
        a = 7; b=7;
        repeat(20) begin
          #5
          a = $urandom%256;
          b = $urandom%256;
        end
        $finish;
    end

endmodule