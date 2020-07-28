-Verilog Test Bench code for Half Subtractor 
-Refer abhaypawar/iverilog_programs 

module halfsubtractor_tb;

reg a;
reg b;

wire different;
wire borrow;

hs uut ( .a(a),  .b(b), .different(different), .borrow(borrow));

initial begin

#10 a=1’b0;b=1’b0;    - Taking initial set a and b

#10 a=1’b0;b=1’b1;    - Next set a and b to these values

#10 a=1’b1;b=1’b0;    - Then next set of value 

#10 a=1’b1;b=1’b1;    - Lastly value set to final time

#10$stop;

end
endmodule