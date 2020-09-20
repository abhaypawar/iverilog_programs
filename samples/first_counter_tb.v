$monitor("%g\t %b %b %b %b",
$time, clock, reset, enable, counter_out);
clock=1;
reset=0;
enable= 0;
#5 reset =1;
#10 reset =0;
#5 enable =1;
#100 enable =0;
#10 $finish;
end

//Now, Clock Generator,
always begin
#5 clock = ~clock; //Toggling every 5 ticks
end

//Connecting DUT to Test Bench
first_counter U_counter (
clock,
reset,
enable,
counter_out
);

endmodule// Test Bench complete