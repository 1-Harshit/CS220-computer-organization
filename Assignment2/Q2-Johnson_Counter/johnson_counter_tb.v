`include "johnson_counter.v"
module johnson_counter_tb();
    reg clk;
    wire[7:0] q;
    johnson_counter JC(q,clk);
    initial begin
        clk = 0;
        $monitor("%b",q);
        repeat(32) begin
            #5 clk = ~clk;
        end
        $finish;
    end
endmodule