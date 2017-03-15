// [[Joe - joao.euu@gmail.com]]

module ControlUnit (clock,instruction,opcode,op1,op2,imControl,regenable,ramenable,pcControl);
  input clock;
  input [31:0] instruction;

  output [5:0] opcode;
  output [4:0] op1;
  output [4:0] op2;
  output reg imControl;
  output reg regenable;
  output reg ramenable;
  output reg pcControl;

  localparam [4:0] ADD = 6'd0,SUB = 6'd1,MUL = 6'd2;

  assign opcode = instruction[31:25];
  assign op1 = instruction[25:20];
  assign op2 = instruction[20:0];

  always @(*) begin
    case(opcode)
      ADD:begin
        imControl=1'd0;
        regenable=1'd0;
        ramenable=1'd0;
        pcControl=1'd0;
      end
    endcase
  end

endmodule
