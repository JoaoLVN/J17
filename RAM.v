// [[Joe - joao.euu@gmail.com]]

//32 bit RAM
//clock= RAM clock
//addr= address to read/write
//write= 1 if u want to write
//value= value to write
//result= value on specified address
module RAM (pc,clock,in,bin,addr,write,value,result,seg,display1,display2,display3,out);
input [31:0] pc;
input  [31:0] value;
input [17:0] in;
input bin;
input [9:0] addr;
input write, clock;
output [31:0] result;
output [6:0] seg;
output [6:0] display1 ;
output [6:0] display2 ;
output [6:0] display3 ;
output [31:0] out;
//Data array
reg [31:0] RAM[10:0];
reg [31:0] list[7:0];




initial begin
  $readmemb("./program.bin", list);

end



always @ (negedge clock)
begin
  RAM[3]={25'b0000000000000000000000000,in};
  if (write) begin
    RAM[addr] = value;
  end


end

assign result = RAM[addr];
assign display1 = RAM[0][6:0];
assign display2 = RAM[1][6:0];
assign display3 = RAM[2][6:0];
assign out = list[pc];

endmodule
