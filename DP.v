// [[Joe - joao.euu@gmail.com]]
//clock= clock do processador
//op1,op2 = operandos da instrução
//imControl = é imediato? 1 = sim 0 = nao
//writecode = 1-> pega para escrever do num2 0-> pega valor pra escrever da ALU
//pcControl = o que fazer com o PC
//PC = valor do pc
//writecode = de onde pegar o valor para escrever?
module DP (clock,alucode,flag,flag1,op1,op2,imControl,regenable,ramenable,pcControl,writecode,stackSelect,PC,result);

  input clock;
  input imControl;
  input [3:0] pcControl;
  input [4:0] alucode;
  input [1:0] stackSelect;
  input [2:0] op1;
  input flag;
  input flag;
  input flag1;
  input [20:0] op2;
  input regenable;
  input [1:0] ramenable;
  input writecode;

	output reg [31:0] PC;

  //Alu numbers
  reg [31:0]num1;
  reg [31:0]num2;
  //Registers
  reg [31:0] regs [6:0];
 //RAM
  reg [9:0] memaddr;
  reg writemem;
  reg [31:0] writememdata;
  wire [31:0] memresult;

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

  // assign num1 = (flag)? memresult : regs[op1];
  // reg im2 = (flag1) ? memresult : op2;
  // assign num2 = (imControl) ? im2 : regs[op2[19:15]];
   wire[31:0] num3;
   assign  num3 = regs[op2[18:16]];


output reg[31:0] result;
  always @(alucode or num1 or num2)begin
    case (alucode)
      4'd0: result <= num1;
      4'd1: result <= num1 + num2;
      4'd2: result <= num1 - num2;
      4'd3: result <= num1 * num2;
      4'd4: result <= num1 / num2;
      4'd5: result <= num1 % num2;
      4'd6: result <= num1 | num2;
      4'd7: result <= num1 & num2;
      4'd8: result <= num1 ^ num2;
      4'd9: result <= ~num1;
      4'd10:result <= num1 >> 1;
      4'd11:result <= num1 << 1;
      default: result <= 32'hffffffff;
    endcase
  end
  reg [31:0]towrite;
  reg [31:0] pcjump;



  always @(posedge clock) begin
    //Write on Regs
    if(flag==0)
      regs[op1]= towrite;
    //Write on Ram
    else if(flag==1)begin
        memaddr=num1;
        writememdata=towrite;
        writemem=1'd1;
    end

    //PC
    case(pcControl)
      4'd0: pcjump=32'd1;
      4'd1:begin
        if(num1==num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      4'd2:begin
        if(num1<num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      4'd3:begin
        if(num1>num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      4'd4:begin
        if(num1!=num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      4'd5:begin
        if(num1<=num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      4'd6:begin
        if(num1>=num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      4'd7:begin
        if(num1!=0)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      4'd8:begin
        if(num1==0)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      4'd9:pcjump=num3;
      4'd10:pcjump=32'd0;

    endcase

    PC=PC+pcjump;
  end



  always @(*) begin
    //Ram enable
    if(flag)begin
      memaddr=regs[op1];
      num1=memresult;
    end
    else
      num1=regs[op1];

    if(imControl) begin
      if(op2[20] == 1'b1)
        num2<= {11'b11111111111, op2};
      else
        num2<= {11'b00000000000, op2};
    end
    else begin
      if(flag1)begin
        memaddr=regs[op2[20:18]];
        num2=memresult;
      end
      else
        num2=regs[op2[19:15]];
    end

    //Load in Regs
    case(writecode)
      1'd0:   towrite <= result;
      1'd1:   towrite <=num2;
      default: towrite <= 32'hffffffff;
    endcase
  end

endmodule
