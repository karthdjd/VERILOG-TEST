module fifo_11 (
  input clk, rst_n,
  input w_en, r_en,
  input [31:0] data_in,
  output reg [31:0] data_out,
  output full, empty
);
  
  reg [999:0] w_ptr, r_ptr;
  reg [31:0] fifo[1000];
  
  
  always@(posedge clk) begin
    if(!rst_n) begin
      w_ptr <= 0; r_ptr <= 0;
      data_out <= 0;
    end
  end
  
  
  always@(posedge clk) begin
    if(w_en & !full)begin
      fifo[w_ptr] <= data_in;
      w_ptr <= w_ptr + 1;
    end
  end
  
  
  always@(posedge clk) begin
    if(r_en & !empty) begin
      data_out <= fifo[r_ptr];
      r_ptr <= r_ptr + 1;
    end
  end
  
  assign full = ((w_ptr+1'b1) == r_ptr);
  assign empty = (w_ptr == r_ptr);
endmodule
