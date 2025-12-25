`timescale 1ns / 1ps
module tc;
  wire y;
  reg x,r;
  initial begin t_clock = 0; forever #100 t_clock = ~t_clock; end
  invert I1 (x,r,t_clock,y);

initial
  begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tc, I1);
    #78 x = 1'b1, r = 1'b1, t_clock;
    #78 x = 1'b0, r = 1'b0, t_clock;
    #78 x = 1'b1, r = 1'b0, t_clock;
    #78 x = 1'b0, r = 1'b0, t_clock;
    #78 x = 1'b1, r = 1'b1, t_clock;
    #78 x = 1'b1, r = 1'b0, t_clock;
    #78 x = 1'b0, r = 1'b0, t_clock;
    #78 x = 1'b1, r = 1'b0, t_clock;
    #78 x = 1'b0, r = 1'b0, t_clock;
    #78 x = 1'b0, r = 1'b0, t_clock;
    #78 x = 1'b1, r = 1'b0, t_clock;
    #78 x = 1'b1, r = 1'b0, t_clock;

  end
  initial #937 $finish;
endmodule
