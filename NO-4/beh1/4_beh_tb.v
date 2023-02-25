module dlatch_tb;
reg d,e;
wire q;
dlatch dut(.d(d),.e(e),.q(q));
initial begin
	
	#5 d=1;#4 e=1;
	#10 d=0;#8 e=1;
	#5 d=1;#4 e=1;
 #10 $display("d=%0b,e=%0b ,q=%0b",d,e,q);
 end
 endmodule
