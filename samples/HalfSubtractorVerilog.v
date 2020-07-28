-Verilog code for Half Subtractor  
-Refer abhaypawar/iverilog_programs 

module hs(a, b, different, borrow);

input a;
input b;

output different;
output borrow;

wire a_;

xor(different,a,b);         -xor'ed a  and b

not(a_,a);                  -not'ed a_ and a

and(borrow,a_,b);           -and'ed a_ and b

endmodule
