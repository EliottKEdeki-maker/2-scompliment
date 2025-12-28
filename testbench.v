`timescale 1ns / 1ps
module tc;
  wire y;
  reg i,r,t_clk;
  initial begin t_clk = 0; forever #51.5 t_clk = ~t_clk; end // found minimum clock with trial and error 
  invert I1 (i,r,t_clk,y);

initial
  begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tc, I1);
    i = 1'b0; r = 1'b1; //intialization value so flip flop with one full clock period to get rid of x values                                           
    #103; i = 1'b1; r = 1'b1; // input bits least to most signifiant
    #103; i = 1'b0; r = 1'b0;
    #103; i = 1'b1; r = 1'b0;
    #103; i = 1'b0; r = 1'b0;
    #103; i = 1'b1; r = 1'b1;
    #103; i = 1'b1; r = 1'b0;
    #103; i = 1'b0; r = 1'b0;
    #103; i = 1'b1; r = 1'b0;
    #103; i = 1'b0; r = 1'b0;
    #103; i = 1'b0; r = 1'b0;
    #103; i = 1'b1; r = 1'b0;
    #103; i = 1'b1; r = 1'b0;
    

  end
  initial #1236 $finish; // Total time accounts for all delays
endmodule
