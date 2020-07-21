`timescale ins/ ins
`include "world.v"

module world_tb;
reg A;
wire B;

world uut (A, B);
initial begin

$dumpfile (world_tb.vcd);
$dumpvars(0, world_tb);
A=0;
#20;

A=1;
#20;

A=0;
#20;

$display("test completed abhay")
end

endmodule