// [[Joe - joao.euu@gmail.com]]


module DATAPATH (opcode,op1,op2,status,result);

  input opcode[3:0];
  input op1[31:0];
  input op2[31:0];
  output result[31:0];
  output status[2:0];


  //Simple ALU
  //opcode= the operation
  //op1= operand 1
  //op2= operand 2
  //status= what ALU is doing
  //result= operand1 "operation" operand2
  always @(opcode or op1 or op2)begin
    case (opcode[3:0])
      4'b0000: result = op1;
      4'b0001: result = op1 + op2;
      4'b0010: result = op1 - op2;
      4'b0011: result = op1 * op2;
      4'b0100: result = op1 / op2;
      4'b0101: result = op1 % op2;
      4'b0110: result = op1 | op2;
      4'b0111: result = op1 & op2;
      4'b1000: result = op1 ^ op2;
    endcase
  end

endmodule
