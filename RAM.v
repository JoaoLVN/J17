// [[Joe - joao.euu@gmail.com]]

//32 bit RAM
//clock= RAM clock
//addr= address to read/write
//write= 1 if u want to write
//value= value to write
//result= value on specified address

module RAM (clock,addr,write,value,result);
  input  [31:0] value;
  input [9:0] addr;
  input write, clock;
  output [31:0] result;

  //Data array
  reg [31:0] RAM[31:0];
  //Last address
  reg [9:0]lastaddr;


  always @ (posedge clock)
  begin

    if (write) begin
      RAM[addr] = value;
    end
      lastaddr = addr;
  end

  assign result = RAM[lastaddr];

endmodule
