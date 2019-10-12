// load and store register
// CSE140L   Fall 2018
module register # (parameter N = 8)
  (input clk,
   input [N-1:0] in,		  // data in
   output logic [N-1:0] out,  // data out
   input load,				  // controls
         clear
   );
	 
  always_ff @ (posedge clk, posedge clear)	begin
   if(clear) begin
		out <= 0;
	end else begin
		if(load) begin
			out <= in;
		end
  end
	
// fill in guts				case({clear,load})
//   clear   load    out
// 	 1       0      0
//     1       1      0
//     0       0     hold
//     0       1      in   

// What would be the impact of leaving posedge clear out of 
//  the sensitivity list? 
  end
		
endmodule

