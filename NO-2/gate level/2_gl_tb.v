module buf_g_tb;
reg d,en;
wire y;

buff_gl dut(.d(d),.y(y),.en(en));

initial begin
	en=0;
	d=0;
       #5 en=1;
       #6 d=1;
       #10 en=0;
      #15 $display($time,"en=%0b,d=%0b,y=%0b",en,d,y);
      end
      endmodule

 
