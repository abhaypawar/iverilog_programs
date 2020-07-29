-Verilog Test Bench code for 4bit MUX using Verilog programming language
-Refer abhaypawar/iverilog_programs repo for sample codes and basic projects built using Verilog
module mux_tb;

reg [3:0] a;
reg [1:0] s;

wire o;                 - output set

mux uut (.a(a),.s(s),.o(o));
initial begin

#10 a=4’b1010;

#10 s=2’b00;

#10 s=2’b01;

#10 s=2’b10;

#10 s=2’b11;

#10 $stop;             -endcase TB

end
endmodule