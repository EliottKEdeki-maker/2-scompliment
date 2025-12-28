`timescale 1ns / 1ps
module tc;
  wire y;
  reg i,r,t_clk;
  initial begin t_clk = 0; forever #156 t_clk = ~t_clk; end
  invert I1 (i,r,t_clk,y);

initial
  begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tc, I1);
    i = 1'b1; r = 1'b1;
    #156;
    i = 1'b0; r = 1'b0;
    #156;
    i = 1'b1; r = 1'b0;
    #156;
    i = 1'b0; r = 1'b0;
    #156;
    i = 1'b1; r = 1'b1;
    #156;
     i = 1'b1; r = 1'b0;
    #156;
    i = 1'b0; r = 1'b0;
    #156;
    i = 1'b1; r = 1'b0;
    #156;
    i = 1'b0; r = 1'b0;
    #156;
    i = 1'b0; r = 1'b0;
    #156; 
    i = 1'b1; r = 1'b0;
    #156; 
    i = 1'b1; r = 1'b0;
    #156;

  end
  initial #1920 $finish;
endmodule
