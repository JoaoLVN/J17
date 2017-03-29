// [[Joe - joao.euu@gmail.com]]
//clock= clock do processador
//op1,op2 = operandos da instrução
//imControl = é imediato? 1 = sim 0 = nao
//regenable = habilitar os registradores? 1= sim 0 = nao
//ramenable = habilitar a ram?  1= sim 0 = nao
//pcControl = o que fazer com o PC
//PC = valor do pc
//writecode = de onde pegar o valor para escrever?
module DATAPATH (clock,alucode,op1,op2,imControl,regenable,ramenable,pcControl,writecode,PC);

  input clock;
  input imControl;
  input [2:0] pcControl;
  input [4:0] alucode;
  input [4:0] op1;
  input flag;
  input [4:0] op2;
  input regenable;
  input [1:0] ramenable;

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
  //alucode= the operation
  //num1= operand 1
  //num2= operand 2
  //result= operand1 "operation" operand2
  assign num1 = regs[op1];
  reg im2 = (flag) ? memresult : op2;
  assign num2 = (imControl) ? im2 : regs[op2[19:15]];
  assign num3 = regs[op2[14:10]];

  always @(alucode or num1 or num2)begin
    case (alucode)
      4'd0: result = num1;
      4'd1: result = num1 + num2;
      4'd2: result = num1 - num2;
      4'd3: result = num1 * num2;
      4'd4: result = num1 / num2;
      4'd5: result = num1 % num2;
      4'd6: result = num1 | num2;
      4'd7: result = num1 & num2;
      4'd8: result = num1 ^ num2;
      4'd9: result = ~num1;
      4'd10:result = num1 >> 1;
      4'd11:result = num1 << 1;
      default: result = 32'hffffffff;
    endcase
  end

  always @(posedge clock) begin
    //Regs
    if(regenable)
      regs[op1]= towrite;
  end


  reg [31:0] pcjump;
  always @(posedge clock) begin

    //PC
    case(pcControl)
      3'd0: pcjump=32'd1;
      3'd1:begin
        if(num1==num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      3'd2:begin
        if(num1<num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      3'd3:begin
        if(num1>num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      3'd4:begin
        if(num1!=num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      3'd5:begin
        if(num1<=num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      3'd6:begin
        if(num1>=num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      3'd7:pcjump=num3;

    endcase
    
    PC=PC+pcjump;
  end

  always @(*) begin
    //Ram enable
    if(ramenable)
      memaddr=op2;
    //Load in Regs
    case(writecode)
      2'd0:   towrite = result;
      2'd1:   towrite = num2;
      default: towrite = 32'hffffffff;
    endcase
  end

endmodule
