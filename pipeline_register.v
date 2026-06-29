module pipeline_register(

input clk,

input [7:0] instruction_in,

output reg [7:0] instruction_out

);

always @(posedge clk)
begin
    instruction_out <= instruction_in;
end

endmodule
