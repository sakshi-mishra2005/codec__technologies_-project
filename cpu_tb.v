module cpu_tb();

reg clk;
reg rst;

cpu_top DUT(
.clk(clk),
.rst(rst)
);

always #5 clk=~clk;

initial begin

clk=0;
rst=1;

#10 rst=0;

#300 $finish;

end

endmodule
