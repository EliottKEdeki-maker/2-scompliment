`timescale 1ns / 1ps
module tc;

wire ;
reg ;
initial begin t_clock = 0; forever #5 t_clock = ~t_clock; end

initial
  begin

  end
  initial #500 $finish;
endmodule
