module alu(
    input [3:0] A,
    input [3:0] B,
    input [2:0] alu_op,

    output reg [3:0] result,
    output zero,
    output reg carry
);

always @(*) begin
    carry = 0;

    case(alu_op)

        3'b000: {carry,result}=A+B;
        3'b001: {carry,result}=A-B;
        3'b010: result=A&B;
        3'b011: result=A|B;
        3'b100: result=A^B;

        default: result=4'b0000;

    endcase
end

assign zero=(result==4'b0000);

endmodule
