module d_flip_flop(q, d, reset, clk);
    output reg q = 1'b0;
    input d, clk, reset;
        always @(posedge clk or posedge reset) begin
            if (reset == 1'b1) begin
                q <= 1'b0;
            end else begin
                q <= d;
            end
        end
endmodule
