module singleBarrelShifter
  #(
    parameter nShifts = 1,
    parameter nBits = 8
    )
   (
    input wire[nBits-1:0] in,
    input wire shift,
    output wire[nBits-1:0] out
    );

   wire [nBits-1:0] 	   zeros, shiftedVector;
   assign zeros = 0;
   assign shiftedVector[nBits-1:2**(nShifts-1)] = in[nBits-1-2**(nShifts-1):0];
   assign shiftedVector[2**(nShifts-1)-1:0] = zeros[2**(nShifts-1)-1:0];

   genvar 		   i;
   generate
      for(i = 0; i < nBits; i = i + 1) begin
	 assign out[i] = (shift==1'b1) ? shiftedVector[i] :
			 in[i];
      end
   endgenerate
endmodule // singleBarrelShifter

