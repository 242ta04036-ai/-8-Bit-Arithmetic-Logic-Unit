module alu_8bit(
    input [7:0] A,
    input [7:0] B,
    input [2:0] ALU_Sel,
    output reg [7:0] ALU_Out,
    output reg CarryOut
);

always @(*) begin
    CarryOut = 1'b0;

    case(ALU_Sel)

        3'b000: {CarryOut, ALU_Out} = A + B;

        3'b001: {CarryOut, ALU_Out} = A - B;

        3'b010: ALU_Out = A & B;

        3'b011: ALU_Out = A | B;

        3'b100: ALU_Out = A ^ B;

        3'b101: ALU_Out = ~A;

        3'b110: ALU_Out = A << 1;

        3'b111: ALU_Out = A >> 1;

        default: begin
            ALU_Out = 8'b00000000;
            CarryOut = 0;
        end

    endcase
end

endmodule