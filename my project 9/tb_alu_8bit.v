`timescale 1ns/1ps

module tb_alu_8bit;

reg [7:0] A;
reg [7:0] B;
reg [2:0] ALU_Sel;

wire [7:0] ALU_Out;
wire CarryOut;

alu_8bit uut(
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out),
    .CarryOut(CarryOut)
);

initial begin

$dumpfile("alu_8bit.vcd");
$dumpvars(0,tb_alu_8bit);

A = 8'd20;
B = 8'd10;

$display("----------------------------------------------------------");
$display("Sel\tA\tB\tResult\tCarry");
$display("----------------------------------------------------------");

ALU_Sel = 3'b000; #10;
$display("%b\t%d\t%d\t%d\t%b",ALU_Sel,A,B,ALU_Out,CarryOut);

ALU_Sel = 3'b001; #10;
$display("%b\t%d\t%d\t%d\t%b",ALU_Sel,A,B,ALU_Out,CarryOut);

ALU_Sel = 3'b010; #10;
$display("%b\t%d\t%d\t%d\t%b",ALU_Sel,A,B,ALU_Out,CarryOut);

ALU_Sel = 3'b011; #10;
$display("%b\t%d\t%d\t%d\t%b",ALU_Sel,A,B,ALU_Out,CarryOut);

ALU_Sel = 3'b100; #10;
$display("%b\t%d\t%d\t%d\t%b",ALU_Sel,A,B,ALU_Out,CarryOut);

ALU_Sel = 3'b101; #10;
$display("%b\t%d\t%d\t%d\t%b",ALU_Sel,A,B,ALU_Out,CarryOut);

ALU_Sel = 3'b110; #10;
$display("%b\t%d\t%d\t%d\t%b",ALU_Sel,A,B,ALU_Out,CarryOut);

ALU_Sel = 3'b111; #10;
$display("%b\t%d\t%d\t%d\t%b",ALU_Sel,A,B,ALU_Out,CarryOut);

$finish;

end

endmodule