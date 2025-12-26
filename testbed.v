`timescale 1ns / 1ps
module tc;
  wire y;
  reg i,r,t_clk;
  initial begin t_clk = 0; forever #100 t_clk = ~t_clk; end
  invert I1 (i,r,t_clk,y);

initial
  begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tc, I1);
    #78 i = 1'b1, r = 1'b1;
    #78 i = 1'b0, r = 1'b0;
    #78 i = 1'b1, r = 1'b0;
    #78 i = 1'b0, r = 1'b0;
    #78 i = 1'b1, r = 1'b1;
    #78 i = 1'b1, r = 1'b0;
    #78 i = 1'b0, r = 1'b0;
    #78 i = 1'b1, r = 1'b0;
    #78 i = 1'b0, r = 1'b0;
    #78 i = 1'b0, r = 1'b0;
    #78 i = 1'b1, r = 1'b0;
    #78 i = 1'b1, r = 1'b0;

  end
  initial #937 $finish;
endmodule
