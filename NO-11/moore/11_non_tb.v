module moore_110110_tb;
  reg clk, rst, x;
  wire z;
  
  moore_110110 dut(clk, rst, x, z);
  initial clk = 0;   
  always #5 clk = ~clk;
    
  initial begin
    x = 0;
    #1 rst = 0;
    #2 rst = 1;
    
    #3 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #6 x = 1;
    #7 x = 1;
    #6 x = 0;
    #6 x = 1;
    #6 x = 1;
    #6 x = 0;
    #6 x = 0;
    
    #4 x = 1;
    #4 x = 0;
    #5 x = 1;
    #6 x = 1;
    #6 x = 1;
    #6 x = 0;
    #6 x = 1;
    #6 x = 1;
    #6 x = 0;
    #5 x = 0;

    #100;
    $finish;
    $monitor("%0t: x = %0b, z = %0b", $time, x, z);

  end
  
  initial begin
    
    $dumpfile("moore_110110.vcd");
    $dumpvars(0);
  end
endmodule

