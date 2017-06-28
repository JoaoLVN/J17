// [[Joe - joao.euu@gmail.com]]
//clock= clock do processador
//alucode=operação a ser realizada
//flag,flag1= determina se o valor será pego da memória ou do registradores
//op1,op2 = operandos da instrução
//imControl = é imediato? 1 = sim 0 = nao
//pcControl = o que fazer com o PC
//stackSelect= controle da pilha (operações de empilhar e desempilhar)
//writeCode= determina se o valor a ser escruto vem vem da alu ou do num2
//PC = valor do pc
//result= resultado da alu
//memaddr,writemem,memresult,writememdata= controles da RAM
module DP (clock,in,butin,alucode,flag,flag1,op1,op2,imControl,pcControl,writecode,stackSelect,PC,result,display1,display2,display3,out);

  input [17:0] in;
  input butin;
  input clock;
  input imControl;
  input [4:0] pcControl;
  input [4:0] alucode;
  input [2:0] op1;
  input flag;
  input flag1;
  input writecode;
  input [20:0] op2;
  input [1:0]stackSelect;

  output reg [31:0] PC;
  output reg[31:0] result;
  output [6:0] display1 ;
  output [6:0] display2 ;
  output [6:0] display3 ;
  output [31:0] out;

  //Operand numbers
  reg [31:0]num1;
  reg [31:0]num2;
  wire[31:0] num3;
  assign  num3 = regs[op2[17:15]];

  //Registers
  reg [31:0] regs [6:0];
  reg [31:0] stackPointer;


  //Auxs
  reg [31:0]towrite;
  reg [31:0] pcjump;

  //Data array
  reg [31:0] RAM[10:0];
  reg [31:0] list[37:0];


  reg lastbut;

  initial begin
    $readmemb("./program.bin", list);
    stackPointer = 32'd10;
  end

  assign display1 = RAM[0][6:0];
  assign display2 = RAM[1][6:0];
  assign display3 = RAM[2][6:0];
  assign out = list[PC];

  always @(posedge clock) begin
   RAM[3]={25'b0000000000000000000000000,in};

	if(lastbut == 0 && butin== 0)
		RAM[4]=32'b00000000000000000000000000000001;
	else
		RAM[4]={31'b0000000000000000000000000000000,butin};

	lastbut=butin;

	 //Carrega valores de num1 e num2
    if(flag)begin
      num1=RAM[regs[op1][9:0]];
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
        num2=RAM[regs[op2[20:18]][9:0]];
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

    if (stackSelect == 2'd2)begin /* POP */
         stackPointer = stackPointer+ 1;
         towrite= RAM[stackPointer[9:0]];
    end

		//Escrever no reg/ram
	 if(pcControl==5'd0) begin
     if(stackSelect == 2'd1)begin /* PUSH */
          RAM[stackPointer[9:0]]=num1;
          stackPointer = stackPointer- 1;
     end
     else begin
  		 if(flag)begin
          RAM[regs[op1][9:0]]=towrite;
  		 end
  		 else
         regs[op1]= towrite;
      end
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
        if(num1!=32'd0)
          pcjump=num2;
        else
          pcjump=32'd1;
      end
      5'd8:begin
        if(num1==32'd0)
          pcjump=num2;
        else
          pcjump=32'd1;
      end
      5'd9:pcjump=num1;
      5'd10:pcjump=32'd0;
		default:pcjump=32'd0;
    endcase

    PC=PC+pcjump;
  end

endmodule
