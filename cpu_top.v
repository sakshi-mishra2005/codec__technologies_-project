module cpu_top(

    input clk,
    input rst

);

//=====================================
// Wires
//=====================================

wire [3:0] pc;

wire [7:0] instruction;
wire [7:0] piped_instruction;

wire reg_write;
wire mem_read;
wire mem_write;
wire jump;

wire [2:0] alu_op;

wire [3:0] read_data1;
wire [3:0] read_data2;

wire [3:0] alu_result;

wire [3:0] memory_data;

wire zero;
wire carry;

//=====================================
// Instruction Fields
//=====================================

wire [3:0] opcode;
wire [1:0] rd;
wire [1:0] rs;

assign opcode = piped_instruction[7:4];
assign rd     = piped_instruction[3:2];
assign rs     = piped_instruction[1:0];

//=====================================
// Program Counter
//=====================================

program_counter PC(

    .clk(clk),
    .rst(rst),

    .jump(jump),
    .jump_addr(piped_instruction[3:0]),

    .pc(pc)

);

//=====================================
// Instruction Memory
//=====================================

instruction_memory IM(

    .addr(pc),
    .instruction(instruction)

);

//=====================================
// Pipeline Register
//=====================================

pipeline_register PR(

    .clk(clk),

    .instruction_in(instruction),
    .instruction_out(piped_instruction)

);

//=====================================
// Control Unit
//=====================================

control_unit CU(

    .opcode(opcode),

    .reg_write(reg_write),
    .mem_read(mem_read),
    .mem_write(mem_write),

    .jump(jump),

    .alu_op(alu_op)

);

//=====================================
// Register File
//=====================================

register_file RF(

    .clk(clk),

    .we(reg_write),

    .rs1(rd),
    .rs2(rs),

    .rd(rd),

    .write_data(
        mem_read ? memory_data : alu_result
    ),

    .read_data1(read_data1),
    .read_data2(read_data2)

);

//=====================================
// ALU
//=====================================

alu ALU(

    .A(read_data1),
    .B(read_data2),

    .alu_op(alu_op),

    .result(alu_result),

    .zero(zero),
    .carry(carry)

);

//=====================================
// Data Memory
//=====================================

data_memory DM(

    .clk(clk),

    .mem_write(mem_write),
    .mem_read(mem_read),

    .addr(alu_result),

    .write_data(read_data1),

    .read_data(memory_data)

);

endmodule
