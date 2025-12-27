`timescale 1ns / 1ps
module tc;
  wire y;
  reg i,r,t_clk;
  initial begin t_clk = 0; forever #50 t_clk = ~t_clk; end
  invert I1 (i,r,t_clk,y);

initial
  begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tc, I1);
    i = 1'b0; r = 1'b1;
    #100
    #20 i = 1'b0; r = 1'b0;
    #20 i = 1'b1;
    #20 i = 1'b0; 
    #20 i = 1'b1; r = 1'b1;
    #20 i = 1'b1; r = 1'b0;
    #20 i = 1'b0; 
    #20 i = 1'b1; 
    #20 i = 1'b0; 
    #20 i = 1'b0; 
    #20 i = 1'b1; 
    #20 i = 1'b1; 

  end
  initial #1880 $finish;
endmodule
