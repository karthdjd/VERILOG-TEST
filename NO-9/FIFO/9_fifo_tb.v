module fifo_11_tb;

reg clk,rst;
reg w_en,r_en;
reg [31:0]data_in;
wire [31:0]data_out;
wire full,empty;


fifo_11 dut(.clk(clk),.rst(rst),.w_en(w_en),.r_en(r_en),.data_in(data_in),.data_out(data_out),.full(full),.empty(empty));  
  
   

  initial
  begin
	  $dumpfile("fifo_11.vcd");
	  $dumpvars;
	  w_en=0;
	  clk=0;
	  rst=0;
	  r_en=0;
	  #5 rst=1;

    end
    always #5 clk=~clk;
    
 task write();

begin

@(posedge clk);


w_en=1;
data_in =$random;

#5;

@(posedge clk);


w_en =0;

end

endtask

task read();

begin

@(posedge clk);

r_en =1;
#5;

@(posedge clk);

r_en = 0;

end

endtask


initial begin

repeat(4) begin

write();

end


#40;

repeat(4) begin

read();

end


end

endmodule
