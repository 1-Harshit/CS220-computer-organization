module d_flip_flop(q,d,clk);
    output reg q=1'b0;
    input d,clk;
        always @(posedge clk) begin
            q=d;
        end
endmodule