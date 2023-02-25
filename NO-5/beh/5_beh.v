module dff_beh (input d,    
              input clock,  
	      
              output reg q);  
  
  always @ (posedge clock)  
	if(!clock)  
          q <= 0;  
       else  
          q <= d;  
endmodule  
