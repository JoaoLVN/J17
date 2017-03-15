// [[Joe - joao.euu@gmail.com]]

module ControlUnit (instruction,opcode,op1,op2,imControl,regenable,ramenable,pcControl,writecode);
  input [31:0] instruction;

  output [5:0] opcode;
  output [4:0] op1;
  output [4:0] op2;
  output imControl;
  output regenable;
  output ramenable;
  output pcControl;
  output writecode;

  localparam [4:0] ADD = 6'd0, SUB=6'd1,MUL=6'd2;

endmodule
