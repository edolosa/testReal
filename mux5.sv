// 5:1 MULTIPLEXER
module mux5 (input      d0, d1, d2, d3, d4,	 // data in
              input      [2:0]       s, 	 // selector
              output logic y);				 // data out

// fill in guts
//  s    y
//  0	  d0
//  1	  d1
//  2	  d2
//  3	  d3
//  4	  d4
//  5	   0
//  6	   0
//  7	   0
always_comb begin

if(s == 0)
	y = d0;
else if(s == 1)
	y = d1;
else if(s == 2)
	y = d2;
else if(s == 3)
	y = d3;
else if(s == 4)
	y = d4;
else
	y = 0;



end

endmodule
