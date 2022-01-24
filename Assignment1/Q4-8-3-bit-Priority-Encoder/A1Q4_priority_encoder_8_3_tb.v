`include "A1Q4_priority_encoder_8_3.v"

module priority_encoder_8_3_tb();
    wire [2:0] encode;
    reg [7:0] inp;

    priority_encoder_8_3 en (encode, inp, 1'b1);

    initial
    begin
        $monitor("Time: %4d, inp = %b, encode = %b", $time, inp, encode);
        #5 inp=8'b11111111;
        #5 inp=8'b11011101;
        #5 inp=8'b01100110;
        #5 inp=8'b00110100; 
        #5 inp=8'b00101000;
        #5 inp=8'b10110000;
        #5 inp=8'b10100000;
        #5 inp=8'b11000000;
        #5 inp=8'b10000000;
        repeat(6) begin
            #5;
            inp=$random%256;
        end
    end 
endmodule
