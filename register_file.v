module register_file(

    input clk,
    input we,

    input [1:0] rs1,
    input [1:0] rs2,
    input [1:0] rd,

    input [3:0] write_data,

    output [3:0] read_data1,
    output [3:0] read_data2

);

reg [3:0] regs[0:3];

assign read_data1 = regs[rs1];
assign read_data2 = regs[rs2];

always @(posedge clk)
begin
    if(we)
        regs[rd] <= write_data;
end

endmodule
