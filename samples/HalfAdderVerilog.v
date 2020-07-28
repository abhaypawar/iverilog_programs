-Verilog code for Half Adder 
-Refer abhaypawar/iverilog_programs 

module ha(a, b, sum, carry);
input a;
input b;

output sum;
output carry;

assign carry=a&b;                           – and'ed (carry,a,b)
assign sum=a^b;                             – xor'ed (sum,a,b)

endmodule
