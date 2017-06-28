
module LED_7seg(
    input [3:0] BCD,
    input clk,
    output segA, segB, segC, segD, segE, segF, segG
);


reg [6:0] SevenSeg;
always @(*)
case(BCD)
    4'd0: SevenSeg = 7'b1111110;
    4'd1: SevenSeg = 7'b0110000;
    4'd2: SevenSeg = 7'b1101101;
    4'd3: SevenSeg = 7'b1111001;
    4'd4: SevenSeg = 7'b0110011;
    4'd5: SevenSeg = 7'b1011011;
    4'd6: SevenSeg = 7'b1011111;
    4'd7: SevenSeg = 7'b1110000;
    4'd8: SevenSeg = 7'b1111111;
    4'd9: SevenSeg = 7'b1111011;
    default: SevenSeg = 7'b0000000;
endcase

assign {segA, segB, segC, segD, segE, segF, segG} = ~SevenSeg;
endmodule
