// [[Joe - joao.euu@gmail.com]]

//Instruction Fetch

module IF(clock,pc,out);

	input clock;
	input [31:0] pc;
	output [31:0] out;

	initial begin
		$readmemb("./program.mif", list);
	end

	reg [31:0] list[7:0];

	assign out = list[pc];

endmodule
