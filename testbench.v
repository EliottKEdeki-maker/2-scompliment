`timescale 1ns / 1ps
module tc;
  wire y;
  reg i,r,t_clk;
  initial begin t_clk = 1; end//forever #78 t_clk = ~t_clk; end
  invert I1 (i,r,t_clk,y);

initial
  begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tc, I1);
    force I1.Q = 0;
    force I1.NQ = 1;
    #10;          // Hold it for a few ns
    release I1.Q;
    release I1.NQ;
    i = 1'b1; r = 1'b1;
    #156;
    #45;
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
