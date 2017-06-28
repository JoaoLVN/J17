module tela_LCD(clock_50, Switches, LEDR, LCD_ON, LCD_BLON, LCD_RW, LCD_EN, LCD_RS, LCD_DATA,display1,display2,display3);

	input clock_50;
	input [17:0] Switches;
	input [6:0] display1 ;
	input [6:0] display2 ;
	input [6:0] display3 ;

	
	output [17:0] LEDR;
	output LCD_ON;	// LCD Power ON/OFF
	output LCD_BLON;	// LCD Back Light ON/OFF
	output LCD_RW;	// LCD Read/Write Select, 0 = Write, 1 = Read
	output LCD_EN;	// LCD Enable
	output LCD_RS;
	inout [7:0] LCD_DATA;

	wire [3:0] HundredsBin1;
	wire [3:0] TensBin1;
	wire [3:0] OnesBin1;

	wire [3:0] HundredsBin2;
	wire [3:0] TensBin2;
	wire [3:0] OnesBin2;

	wire [3:0] HundredsBin3;
	wire [3:0] TensBin3;
	wire [3:0] OnesBin3;

	BCD BCD1(display1, HundredsBin1, TensBin1, OnesBin1);
	BCD BCD2(display2, HundredsBin2, TensBin2, OnesBin2);
	BCD BCD3(display3, HundredsBin3, TensBin3, OnesBin3);

	lcdlab3 lcd(clock_50, 1'b0, Switches, TensBin1, OnesBin1, TensBin2, OnesBin2, TensBin3, OnesBin3,
					 LEDR, GPIO_0, GPIO_1,
					LCD_ON, LCD_BLON, LCD_RW, LCD_EN, LCD_RS, LCD_DATA);

endmodule
