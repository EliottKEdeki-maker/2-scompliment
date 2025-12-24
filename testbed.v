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
    #85 x = 1'b1, r = 1'b1;
    #85 x = 1'b0, r = 1'b0;
    #85 x = 1'b1, r = 1'b0;
    #85 x = 1'b0, r = 1'b0;
    #85 x = 1'b1, r = 1'b1;
    #85 x = 1'b1, r = 1'b0;
    #85 x = 1'b0, r = 1'b0;
    #85 x = 1'b1, r = 1'b0;
    #85 x = 1'b0, r = 1'b0;
    #85 x = 1'b0, r = 1'b0;
    #85 x = 1'b1, r = 1'b0;
    #85 x = 1'b1, r = 1'b0;

  end
  initial #1200 $finish;
endmodule
