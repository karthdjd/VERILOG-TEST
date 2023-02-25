module mux_coass(input a,c,sel,output reg b);
initial begin
	
		if(sel)
			assign b=a;
	else
		assign b=c;

end
endmodule

