// [[Joe - joao.euu@gmail.com]]

module J17 ( clk,in,Switches,LEDG, LEDR, LCD_ON, LCD_BLON, LCD_RW, LCD_EN, LCD_RS, LCD_DATA);

input clk,in;
input [17:0] Switches;
output [8:0] LEDG;
output [17:0] LEDR;
output LCD_ON;	// LCD Power ON/OFF
output LCD_BLON;	// LCD Back Light ON/OFF
output LCD_RW;	// LCD Read/Write Select, 0 = Write, 1 = Read
output LCD_EN;	// LCD Enable
output LCD_RS;
inout [7:0] LCD_DATA;
assign LEDG = PC [ 6:0];
wire butval;

reg [17:0] count_reg = 0;
reg out_100hz = 0;


always @(posedge clk ) begin

        if (count_reg < 249999) begin
            count_reg <= count_reg + 1;
        end 
		  else begin
            count_reg <= 0;
            out_100hz <= ~out_100hz;
        end
end

debounce(
  .clk(clk), .n_reset(1'd1), .button_in(in),
 .DB_out(butval));

 wire [31:0] result;
 wire [31:0]PC;
 wire[31:0]instruction;
 wire [3:0] alucode;
 wire [2:0] op1;
 wire [20:0] op2;
 wire [3:0] pcControl;
 wire flag;
 wire flag1;
 wire imControl;
 wire writecode;
 wire [1:0] stackSelect;


 wire [6:0] display1 ;
 wire [6:0] display2 ;
 wire [6:0] display3 ;

 UC ControlUnit(
 .clock(out_100hz),
 .instruction(instruction),
 .alucode(alucode),
 .op1(op1),
 .op2(op2),
 .imControl(imControl),
 .writecode(writecode),
 .pcControl(pcControl),
 .flag(flag),
 .flag1(flag1),
 .stackSelect(stackSelect)
	);

DP DataPath(
  .clock(out_100hz),
  .alucode(alucode),
  .in(Switches),
  .butin(butval),
  .flag(flag),
  .flag1(flag1),
  .op1(op1),
  .op2(op2),
  .imControl(imControl),
  .pcControl(pcControl),
  .writecode(writecode),
  .stackSelect(stackSelect),
  .PC(PC),
  .result(result),
  .display1(display1),
  .display2(display2),
  .display3(display3),
  .out(instruction),
  );
    tela_LCD LCD(
      .clock_50(clk),
      .Switches(Switches),

      .LEDR(LEDR),
      .LCD_ON(LCD_ON),
      .LCD_BLON(LCD_BLON),
      .LCD_RW(LCD_RW),
      .LCD_EN(LCD_EN),
      .LCD_RS(LCD_RS),
      .LCD_DATA(LCD_DATA),
      .display1(display1),
      .display2(display2),
      .display3(display3));



endmodule //
