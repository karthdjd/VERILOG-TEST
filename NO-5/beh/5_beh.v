module dff_beh (input d,    
              input clock,  
	      
              output reg q);  
  initial q<=0;
  always @ (posedge clock) 
          q <= d;  
endmodule  
