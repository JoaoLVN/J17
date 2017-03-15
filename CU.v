// [[Joe - joao.euu@gmail.com]]

module ControlUnit (instruction,opcode,op1,op2,imControl,regenable,ramenable,pcControl,writecode);
  input [31:0] instruction;

  output [3:0] opcode;
  output [4:0] op1;
  output [4:0] op2;
  output imControl;
  output regenable;
  output ramenable;
  output pcControl;
  output writecode;

endmodule
