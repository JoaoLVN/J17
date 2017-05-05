// [[Joe - joao.euu@gmail.com]]

module J17 ( clk ,in, seg);

input clk,in;
output wire [6:0] seg;

 wire [31:0] result;
 wire [31:0]PC;
 wire[31:0]instruction;
 wire [3:0] alucode;
 wire [2:0] op1;
 wire [20:0] op2;
 wire [3:0] pcControl;
 wire flag;
 wire flag1;
 wire imControl;
 wire writecode;
 wire [1:0] stackSelect;

 wire [9:0] memaddr;
 wire writemem;
 wire [31:0] writememdata;
 wire [31:0] memresult;

 IF InstructionFetch(
 .clock(clk),
 .pc(PC),
 .out(instruction)
 );

 UC ControlUnit(
 .clock(clk),
 .instruction(instruction),
 .alucode(alucode),
 .op1(op1),
 .op2(op2),
 .imControl(imControl),
 .writecode(writecode),
 .pcControl(pcControl),
 .flag(flag),
 .flag1(flag1),
 .stackSelect(stackSelect)
	);
DP DataPath(
  .clock(clk),
  .alucode(alucode),
  .flag(flag),
  .flag1(flag1),
  .op1(op1),
  .op2(op2),
  .imControl(imControl),
  .pcControl(pcControl),
  .writecode(writecode),
  .stackSelect(stackSelect),
  .PC(PC),
  .result(result),
  .memaddr(memaddr),
  .writemem(writemem),
  .memresult(memresult),
  .writememdata(writememdata)
  );

    RAM RAM(
      .clock(clk),
		.in(in),
      .addr(memaddr),
      .write(writemem),
      .value(writememdata),
      .result(memresult),
      .seg(seg)
  	);

endmodule //
