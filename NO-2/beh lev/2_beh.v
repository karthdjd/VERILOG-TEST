module buff_beh(input d,en,output reg y);
initial begin
		if(en)begin
		 y=d;
			end
		
			else begin
		 y=0;
	end
end
endmodule

