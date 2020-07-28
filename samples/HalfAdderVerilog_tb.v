-VerilogTestbench code for Half Adder 
-Refer abhaypawar/iverilog_programs 
module halfadder_tb;

reg a;
reg b;

wire sum;
wire carry;

ha uut ( .a(a), .b(b), .sum(sum), .carry(carry));

initial begin

#10 a=1’b0;b=1’b0;       – Initial input a=0,b=0

#10 a=1’b0;b=1’b1;       – Next input a=0,b=1

#10 a=1’b1;b=1’b0;       – Then input a=1,b=0

#10 a=1’b1;b=1’b1;       – And lastly input a=1,b=1

#10$stop;

end
endmodule
