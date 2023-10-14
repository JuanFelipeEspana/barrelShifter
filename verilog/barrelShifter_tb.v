`timescale 1 ns/ 10 ps
module barrelShifter_tb();
   parameter nShifts = 3;
   parameter nBits   = 8;
   reg[7:0] in_tb;
   reg[2:0] shift_tb;
   wire[7:0] out_tb;

   barrelShifter #(.nShifts(nShifts),.nBits(nBits)) DUT (.in(in_tb),.shift(shift_tb),.out(out_tb));

   initial
     begin
	in_tb = 8'b11111111;
	shift_tb = 3'b000;
	# 200;
	shift_tb = 3'b001;
	# 200;
	shift_tb = 3'b010;
	# 200;
	shift_tb = 3'b011;
	# 200;
	shift_tb = 3'b100;
	# 200;
	shift_tb = 3'b101;
	# 200;
	shift_tb = 3'b110;
	# 200;
	shift_tb = 3'b111;
	# 200;

	$stop;
     end // initial begin
endmodule   
	

	
	
