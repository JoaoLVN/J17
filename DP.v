// [[Joe - joao.euu@gmail.com]]
//clock= clock do processador
//op1,op2 = operandos da instrução
//imControl = é imediato? 1 = sim 0 = nao
//regenable = habilitar os registradores? 1= sim 0 = nao
//ramenable = habilitar a ram?  1= sim 0 = nao
//pcControl = o que fazer com o PC
//PC = valor do pc
//writecode = de onde pegar o valor para escrever?
module DATAPATH (clock,opcode,op1,op2,imControl,regenable,ramenable,pcControl,writecode,PC);

  input clock;
  input imControl;
  input [1:0] pcControl;
  input [3:0] opcode;
  input [31:0] op1;
  input [31:0] op2;

	output reg [31:0] PC;

  //Alu numbers
  reg [31:0]num1;
  reg [31:0]num2;
  //Registers
  reg [31:0] regs [31:0];
 //RAM
  reg [9:0] memaddr;
  reg writemem;
  reg [31:0] writememdata;
  reg [31:0] memresult;

  RAM RAM(
    .clock(clock),
    .addr(memaddr),
    .write(writemem),
    .value(writememdata),
    .result(memresult)
	);

  //Simple ALU
  //opcode= the operation
  //op1= operand 1
  //op2= operand 2
  //status= what ALU is doing
  //result= operand1 "operation" operand2
  assign num1 = regs[op1];
  assign num2 = (imControl) ? op2 : regs[op2];
  always @(opcode or num1 or num2)begin
    case (opcode[3:0])
      4'd0: result = op1;
      4'd1: result = op1 + op2;
      4'd2: result = op1 - op2;
      4'd3: result = op1 * op2;
      4'd4: result = op1 / op2;
      4'd5: result = op1 % op2;
      4'd6: result = op1 | op2;
      4'd7: result = op1 & op2;
      4'd8: result = op1 ^ op2;
      4'd9: result = ~op1;
      4'd10:result = op1 >> 1;
      4'd11:result = op1 << 1;
      default: result = 32'hffffffff;
    endcase
  end

  always @(posedge clock) begin
    //Regs
    if(regenable)
      regs[op1]= towrite;

    //PC
    case(pcControl)
      2'd0: PC=PC+32'd1;
    endcase
  end

  always @(*) begin
    //Ram enable
    if(ramenable)begin
      memaddr=op2;
    end
    //Load in Regs
    case(writecode)
      2'd0:   towrite = result;
      2'd1:   towrite = op2;
      default: towrite = 32'hffffffff;
    endcase
  end

endmodule
