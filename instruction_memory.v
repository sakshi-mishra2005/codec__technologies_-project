module instruction_memory(

input [3:0] addr,
output [7:0] instruction

);

reg [7:0] mem[0:15];

initial
begin
    $readmemb("program.mem",mem);
end

assign instruction = mem[addr];

endmodule
