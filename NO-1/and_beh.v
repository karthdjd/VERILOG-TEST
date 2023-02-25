module and_beh(input a,b,output reg c);
initial begin
		if(a && b)begin
		 c=1;
			end
		
			else begin
		 c=0;
	end
end
endmodule

