\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/  /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/   

//Your Verilog/System Verilog Code Starts Here:
module akhil_full_adder(s,c_out,a,b,c_in);
input a,b,c_in;
output reg s,c_out;


always@(a or b or c_in)
begin

  {c_out, s} = a + b + c_in; 

end
endmodule



//Top Module Code Starts here:
	module top(input logic clk, input logic reset);
		logic  a;//input
		logic  b;//input
		logic  c_in;//input
		logic  s;//output
		logic  c_out;//output
//The $random() can be replaced if user wants to assign values
		assign a = $random();
		assign b = $random();
		assign c_in = $random();
		akhil_full_adder akhil_full_adder(.a(a), .b(b), .c_in(c_in), .s(s), .c_out(c_out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

