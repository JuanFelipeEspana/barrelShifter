`timescale 1 ns/ 10 ps
module singleBarrelShifter_tb();
   reg 	    shift_tb;
   wire [7:0] out_tb;

   singleBarrelShifter #(.nShifts(1),.nBits(8)) DUT (.in(8'b11111111),.shift(shift_tb),.out(out_tb));

   initial
     begin
	shift_tb = 1'b0;
	# 200;
	shift_tb = 1'b1;
	# 200;
	$stop;
     end
endmodule // singleBarrelShifter_tb
