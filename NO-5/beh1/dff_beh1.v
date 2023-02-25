module dff_beh1 (input d,    
              input clock,  
	      
              output reg q);  
  initial q<=0;
  always @ (negedge clock) 
          q <= d;  
endmodule  
