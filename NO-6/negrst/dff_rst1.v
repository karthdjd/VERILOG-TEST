module dff_res1 (input d,  
              input reset,  
              input clock,  
              output reg q);  
  
  always @ (posedge clock or negedge reset)  
       if (reset)  
          q <=0;  
       else  
          q <= d;  
endmodule  
