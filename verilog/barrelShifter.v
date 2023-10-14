module barrelShifter
  #(
    parameter nShifts = 3,
    parameter nBits = 8
    )
   (
    input wire[nBits-1:0] in,
    input wire[nShifts-1:0] shift,
    output wire[nBits-1:0] out
    );

   wire [nBits-1:0] 	   shifted[nShifts:0];
   assign shifted[0] = in;

   genvar 		   i;

   generate
      for(i = 0; i < nShifts; i = i + 1) begin
	 singleBarrelShifter #(.nShifts(i+1), .nBits(nBits)) shifter (.in(shifted[i]),.shift(shift[i]),.out(shifted[i+1]));
      end
   endgenerate

   assign out = shifted[nShifts];
endmodule
   
   
