module first_counter (
clock,
reset,
enable,
counter_out
);
//input ports info
input clock;
input reset;
input enable;
//output ports info
output [3:0] counter_out;
//wire inputs
wire clock;
wire reset;
wire enable;
//output elements to be a storage element (reg)
reg[3:0] counter_out;
//actual code herebelow
always @ (posedge clock)
begin : COUNTER //block name
if (reset == 1'b1) begin
counter_out<= #1 4'b0000;
end
//if the enable is active then we can increment the counter
else if (enable == 1'b1) begin
counter_out<=#1 counter_out + 1;
end
end// ENd of the Block Counter
endmodule //ENd of module counter
