module encoder(d, a, b, c);

input [0:7] d;

output a;
output b;
output c;

or(a,d[4],d[5],d[6],d[7]);   -or'ed
   
or(b,d[3],d[2],d[6],d[7]);   -or'ed

or(c,d[1],d[3],d[5],d[7]);   -or'ed

endmodule