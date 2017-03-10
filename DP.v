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
      4'd0: result = op1;
      4'd1: result = op1 + op2;
      4'd2: result = op1 - op2;
      4'd3: result = op1 * op2;
      4'd4: result = op1 / op2;
      4'd5: result = op1 % op2;
      4'd6: result = op1 | op2;
      4'd7: result = op1 & op2;
      4'd8: result = op1 ^ op2;
    endcase
  end

endmodule
