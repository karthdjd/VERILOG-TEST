module dlatch(input d,e,output reg q);
initial begin
	if(!e)
		q<=0;
	else
		q<=d;
end
endmodule



