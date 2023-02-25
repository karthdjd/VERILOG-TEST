module dlatch1 (  input d,            
                  input e,         
                  input reset,        
                  output reg q);     
 
 always @ (e or reset or d)  
      if (!reset)  
         q <= 0;  
      else  
         if (e)  
            q <= d;  
endmodule  
