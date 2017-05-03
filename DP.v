// [[Joe - joao.euu@gmail.com]]
//clock= clock do processador
//op1,op2 = operandos da instrução
//imControl = é imediato? 1 = sim 0 = nao
//regenable = habilitar os registradores? 1= sim 0 = nao
//ramenable = habilitar a ram?  1= sim 0 = nao
//pcControl = o que fazer com o PC
//PC = valor do pc
//writecode = de onde pegar o valor para escrever?
module DP (clock,alucode,flag,flag1,op1,op2,imControl,pcControl,stackSelect,writecode,PC,result,memaddr,writemem,memresult,writememdata);

  input clock;
  input imControl;
  input [4:0] pcControl;
  input [4:0] alucode;
  input [2:0] op1;
  input flag;
  input flag1;
  input [20:0] op2;

  input writecode;
  output [1:0]stackSelect;

	output reg [31:0] PC;

  //Alu numbers
  reg [31:0]num1;
  reg [31:0]num2;
  //Registers
  reg [31:0] regs [6:0];
 //RAM
  output reg [9:0] memaddr;
  output reg writemem;
  output reg [31:0] writememdata;
  input wire [31:0] memresult;


  wire[31:0] num3;
  assign  num3 = regs[op2[17:15]];
  reg [31:0]towrite;
  output reg[31:0] result;
  reg [31:0] pcjump;

  always @(posedge clock) begin
	 writemem=1'b0;
	 //Carrega valores de num1 e num2
    if(flag)begin
      memaddr=regs[op1];
      num1=memresult;
    end
    else
      num1=regs[op1];

    if(imControl) begin
      if(op2[20] == 1'b1)
        num2= {11'b11111111111, op2};
      else
        num2= {11'b00000000000, op2};
    end
    else begin
      if(flag1)begin
        memaddr=regs[op2[20:18]];
        num2=memresult;
      end
      else
        num2=regs[op2[20:18]];
    end
    //ALU
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

    //Escrever da alu ou do num2?
    case(writecode)
        1'd0:   towrite = result;
        1'd1:   towrite=num2;
        default: towrite = 32'hffffffff;
    endcase
		//Escrever no reg/ram
	 if(pcControl==5'd0) begin
		 if(flag)begin
  			memaddr=regs[op1];
  			writemem=1'b1;
  			writememdata=towrite;
		 end
		 else
       regs[op1]= towrite;
	 end

    //PC
    case(pcControl)
      5'd0: pcjump=32'd1;
      5'd1:begin
        if(num1==num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      5'd2:begin
        if(num1<num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      5'd3:begin
        if(num1>num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      5'd4:begin
        if(num1!=num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      5'd5:begin
        if(num1<=num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      5'd6:begin
        if(num1>=num2)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      5'd7:begin
        if(num1!=0)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      5'd8:begin
        if(num1==0)
          pcjump=num3;
        else
          pcjump=32'd1;
      end
      5'd9:pcjump=regs[op1];
      5'd10:pcjump=32'd0;
		default:pcjump=32'd0;
    endcase

    PC=PC+pcjump;
  end

endmodule
