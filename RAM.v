// [[Joe - joao.euu@gmail.com]]

//32 bit RAM
//clock= RAM clock
//addr= address to read/write
//write= 1 if u want to write
//value= value to write
//result= value on specified address

module RAM (clock,in,addr,write,value,result,seg);
  input  [31:0] value;
  input in;
  input [9:0] addr;
  input write, clock;
  output [31:0] result;
  output [6:0] seg;

  //Data array
  reg [31:0] RAM[31:0];
  wire butval;
  
  debounce 
	(
	 .clk(clock), .n_reset(1'b1), .button_in(in),				// inputs
	.DB_out(butval)													// output
	);
//// --
  LED_7seg(
      .BCD(RAM[0]),
      .clk(clock),
      .segA(seg[6]), .segB(seg[5]), .segC(seg[4]), .segD(seg[3]), .segE(seg[2]), .segF(seg[1]),.segG(seg[0]));
 
 always @ (*)
  begin
    if (write) begin
      RAM[addr] = value;
    end
	 RAM[1]=butval;
  end
	
  assign result = RAM[addr];

endmodule








module LED_7seg(
    input [3:0] BCD,
    input clk,
    output segA, segB, segC, segD, segE, segF, segG
);


reg [7:0] SevenSeg;
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
