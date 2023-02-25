module and_beh_tb;
reg a,b;
wire c;

and_beh dut(.a(a),.b(b),.c(c));

initial begin
	
	#5 a=1;#5 b=1;
	#5 a=0;#5 b=1;
	#5 a=1;#5 b=0;
 #10 $display("a=%0b,b=%0b,c=%0b",a,b,c);
 end
 

endmodule

