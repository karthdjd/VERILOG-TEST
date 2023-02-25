module mux_beh(input a,c,sel,output reg b);
initial begin
		if(sel)begin
		 b=a;
			end

			else begin
		b=c;
	end
end
endmodule


