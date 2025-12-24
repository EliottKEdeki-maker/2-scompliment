`timescale 1ns / 1ps
module tc;

wire ;
reg ;
initial begin t_clock = 0; forever #5 t_clock = ~t_clock; end
  invert I1 (x,r,t_clock,y);

initial
  begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tc, I1);
    

  end
  initial #500 $finish;
endmodule
