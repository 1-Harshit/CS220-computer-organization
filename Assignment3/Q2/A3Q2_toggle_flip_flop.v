module toggle_flip_flop(
    input reset,
    input t,
    input clk,
    output reg q
);
initial q = 0;
always @ (posedge clk) begin
    if (reset) begin
        q <= 0;
    end
    else begin
        if(t) begin
            q <= ~q;
        end
        else begin
            q <= q;
        end
    end
end 
endmodule