module toggle_flip_flop(
    input reset,
    input t,
    input clk,
    output reg q
);
initial q = 1'b1;
always @ (posedge clk or posedge reset) begin
    if (reset) begin
        q <= 1'b1;
    end
    else begin
        if(t) begin
            q = ~q;
        end
        else begin
            q = q;
        end
    end
end
endmodule