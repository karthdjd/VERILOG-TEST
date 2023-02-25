module dff_res (input d,  
              input reset,  
              input clock,  
              output reg q);  
  
  always @ (posedge clock or posedge reset)  
       if (reset)  
          q <= 1'b0;  
       else  
          q <= d;  
endmodule  
