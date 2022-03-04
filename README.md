# Mixed Signal Circuit Design and Simulation Marathon
# Full_adder_Analog
Implementation of Conventional Full Adder Architecture Using esim Tools

- [Abstract](#abstract)
- [Reference Circuit Diagram](#reference-circuit-diagram)
- [Reference Waveform](#reference-waveform)
- [Circuit Details](#circuit-details)
- [Truth Table](#truth-table)
- [Software Used](#software-used)
  * [eSim](#esim)
  * [NgSpice](#ngspice)
  * [Makerchip](#makerchip)
  * [Verilator](#verilator)
- [Circuit Diagram in eSim](#circuit-diagram-in-esim)
- [Verilog Code](#verilog-code)
- [Makerchip](#makerchip-1)
- [Makerchip Plots](#makerchip-plots)
- [Netlists](#netlists)
- [NgSpice Plots](#ngspice-plots)
- [GAW Plots](#gaw-plots)
- [Steps to run generate NgVeri Model](#steps-to-run-generate-ngveri-model)
- [Steps to run this project](#steps-to-run-this-project)
- [Acknowlegdements](#acknowlegdements)
- [References](#references)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>


## Abstract
In this article, 28T CMOS Full Adder circuit is proposed. The design analysis is being verified by Circuit Schematic and Waveforms using Synopsys Custom-Compiler Platform. The design is implemented using 28nm CMOS technology.
efficient.
## Reference Circuit Diagram
![image](https://user-images.githubusercontent.com/58599984/152688334-fa3ad04d-e142-4dd1-a0cf-00fd13ca2d9e.png)
## Reference Waveform
![image](https://user-images.githubusercontent.com/58599984/152688402-29877a15-deb3-4dee-9bcc-2313851182de.png)
## Circuit Details
A single bit full adder is a basic block which performs complex arithmetic logic circuits like addition, division, multiplication, exponent circuit. Addition is basically the most
fundamental arithmetic operation, which is widely used across various components as subtractor, multipliers as a basic unit. Any adder circuits focus is to reduce power and increase
speed. Full Adder basically adds 3-bit binary numbers where the 3 inputs are named as A, B and Cin, and produces dual output which commonly is named as sum andcarry.

In this article, I report the design analysis of 1-bit full adder cells implemented using CMOS logic. The 1-bit full adder is a static CMOS with a complementary nmos and pmos. This
one-bit adder is basically based on regular CMOS structure with pull down and pull up network, which utilize both nmos and pmos transistors. Because the nmos transistors in static
CMOS only need to pass 0's and the pmos transistors only need to pass 1's, the output is always forcefully pushed, and the levels are never degraded. This is referred to as a completely recovered logic gate. The pull-up network is theminverse of the pull-down network. Inputs for one 1-bit adder are A, B and Cin. and the outputs are basically defined as sum and carry. Below a simple truth table is being implemented for 1-bit adder.
## Truth Table

| Input A  | Input B | Input Cin | Output Sum  | Output Carry |
| ------------- | ------------- | ------------- | -------------| ------------- |
| 0  | 0 | 0  | 0 | 0 |
| 0  | 0 | 1  | 1 | 0 |
| 0  | 1 | 0  | 1 | 0 |
| 0  | 1 | 1  | 0 | 1 |
| 1  | 0 | 0  | 1 | 0 |
| 1  | 0 | 1  | 0 | 1 |
| 1  | 1 | 0  | 0 | 1 |
| 1  | 1 | 1  | 1 | 1 |
## Software Used
### eSim
It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD.
</br>
For more details refer:
</br>
https://esim.fossee.in/home
### NgSpice
It is an Open Source Software for Spice Simulations. For more details refer:
</br>
http://ngspice.sourceforge.net/docs.html
### Makerchip
It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. Refer
</br> https://www.makerchip.com/
### Verilator
It is a tool which converts Verilog code to C++ objects. Refer:
https://www.veripool.org/verilator/

## Circuit Diagram in eSim
The following is the schematic in eSim:
![image](https://user-images.githubusercontent.com/58599984/156439856-079de481-b68d-4955-b9c9-6ff310c5de58.png)
## Verilog Code
![image](https://user-images.githubusercontent.com/58599984/156445908-1af8255c-d17c-4275-8e24-ee65c96af66a.png)
## Makerchip
```
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


```
## Makerchip Plots
![image](https://user-images.githubusercontent.com/58599984/156443516-6fdc4420-0bab-40a8-84f4-515966e4f569.png)

## Netlists
![image](https://user-images.githubusercontent.com/58599984/156440985-0a983124-b5ad-4b60-b83f-7adf0e7c36fb.png)
## NgSpice Plots
![image](https://user-images.githubusercontent.com/58599984/156440036-188911e0-9bb2-4d9f-b53d-878f5792d1c6.png)
![image](https://user-images.githubusercontent.com/58599984/156440082-c3f319ef-3224-4595-85e9-38bae135350f.png)

![image](https://user-images.githubusercontent.com/58599984/156439624-353c14ac-4216-4aa7-8207-64f4c287b2b7.png)
![image](https://user-images.githubusercontent.com/58599984/156439590-9371c62f-384b-42f8-9403-9704429d752d.png)
## GAW Plots
![image](https://user-images.githubusercontent.com/58599984/156439535-edb78fc7-a6e6-4178-864a-7cea5ea37e23.png)
## Steps to run generate NgVeri Model
1. Open eSim
2. Run NgVeri-Makerchip 
3. Add top level verilog file in Makerchip Tab
4. Click on NgVeri tab
5. Add dependency files
6. Click on Run Verilog to NgSpice Converter
7. Debug if any errors
8. Model created successfully
## Steps to run this project
1. Open a new terminal
2. Clone this project using the following command:</br>
```git clone https://github.com/Eyantra698Sumanto/XOR-XNOR-Gate.git ```</br>
3. Change directory:</br>
```cd eSim_project_files/xor_xnor```</br>
4. Run ngspice:</br>
```ngspice xor_xnor.cir.out```</br>
5. To run the project in eSim:

  - Run eSim</br>
  - Load the project</br>
  - Open eeSchema</br>
## Acknowlegdements
1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
4. Sumanto Kar, eSim Team, FOSSEE

## References
[1] N. Weste, and K. Eshraghian, “Principles of CMOS VSI Design: A Systems Perspective,” Second Edition,Addison-Wesley, 1993.

[2] D. Radhakrishnan, “Low-voltage low-power CMOS fulladder,” IEEE Proceedings - Circuits Devices and System vol. 148, pp. 19-24, Feb. 2001.

