module dff_rst_tb;  
    reg clock;  
    reg d;  
    reg reset;  
     
  output q;
  
    dff_rst  dff0( .d(d),  
                .reset (reset),  
                .clock (clock),  
                .q (q));  
  
   
    always #10 clock = clock;  
 
   
    initial begin  
        clock = 1;  
        d = 1;  
        reset = 1;  
  
        #15 d = 0;  
        #10 reset = 1;  
   #5 d=1;
end  
endmodule  
