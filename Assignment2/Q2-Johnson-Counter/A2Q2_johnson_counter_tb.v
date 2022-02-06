`include "A2Q2_johnson_counter.v"
module johnson_counter_tb();
    reg clk;
    wire[7:0] q;
    johnson_counter JC(q,clk);
    initial begin
        clk = 0;
        $monitor("Time: %3d | %b", $time, q); //prints the output of first to last D1 to D8 in order
        repeat(32) begin
            #5 clk = ~clk;
        end
        $finish;
    end
endmodule
