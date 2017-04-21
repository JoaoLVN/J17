// [[Joe - joao.euu@gmail.com]]

module ControlUnit (clock,instruction,alucode,op1,op2,imControl,writecode,pcControl,flag,flag1);
  input clock;
  input [31:0] instruction;

  output [2:0] op1;
  output [20:0] op2;
  output flag;
  output flag1;
  output reg [5:0] alucode;
  output reg imControl;
  output reg writecode;
  output reg [2:0] pcControl;


  output reg stackSelect;

  localparam [5:0] ADD = 6'd0,SUB=6'd1,MUL=6'd2,DIV=6'd3,
  ADDI=6'd4,SUBI=6'd5,MULI=6'd6,DIVI=6'd7,NOT=6'd8,AND=6'd9,
  OR=6'd10,XOR=6'd11,MOD=6'd12,SL=6'd13,SR=6'd14,JMP=6'd15,
  JE=6'd16,JB=6'd17,JA=6'd18,JNE=6'd19,JBE=6'd20,JAE=6'd21
  JZ=6'd22,JNZ=6'd23,MOV=6'd24,NOP=6'd25,HLT=6'd26;

  assign op1 = instruction[24:22];
  assign flag = instruction[25];
  assign flag1 = instruction[21];
  assign op2 = instruction[20:0];

  always @(*) begin
    case(instruction[31:25])
      ADD:begin
        alucode=4'd1;
        imControl=1'd0;
        writecode=1'd0;
        pcControl=1'd0;
        stackSelect=2'd0;
      end
      ADDI:begin
        alucode=4'd1;
        imControl=1'd1;
        writecode=1'd0;
        pcControl=1'd0;
        stackSelect=2'd0;
      end
      SUB:begin
        alucode=4'd2;
        imControl=1'd0;
        writecode=1'd0;
        pcControl=1'd0;
        stackSelect=2'd0;
      end
      SUBI:begin
        alucode=4'd2;
        imControl=1'd1;
        writecode=1'd0;
        pcControl=1'd0;
        stackSelect=2'd0;
      end
      MUL:begin
        alucode=4'd3;
        imControl=1'd0;
        writecode=1'd0;
        pcControl=1'd0;
        stackSelect=2'd0;
      end
      MULI:begin
        alucode=4'd3;
        imControl=1'd1;
        writecode=1'd0;
        pcControl=1'd0;
        stackSelect=2'd0;
      end
      DIV:begin
        alucode=4'd4;
        imControl=1'd0;
        writecode=1'd0;
        pcControl=1'd0;
        stackSelect=2'd0;
      end
      DIVI:begin
        alucode=4'd4;
        imControl=1'd1;
        writecode=1'd0;
        pcControl=1'd0;
        stackSelect=2'd0;
      end

    endcase
  end

endmodule
