module mux_coass_tb;
reg a,c,sel;
wire b;

mux_coass dut(.a(a),.c(c),.sel(sel),.b(b));

initial begin
	#5 a=1;#5 c=0;#5 sel=1;
	#5 a=0;#5 c=1;#5 sel=0;
	#5 a=1;#5 c=0;#5 sel=1;
 #10 $display("a=%0b,c=%0b ,sel=%0b,b=%0b",a,c,sel,b);
 end

endmodule

