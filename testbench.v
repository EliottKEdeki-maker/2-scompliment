`timescale 1ns / 1ps
module tc;
  wire y;
  reg i,r,t_clk;
  initial begin t_clk = 0; forever #78 t_clk = ~t_clk; end // total delay of ciruit is 156 so set half of clock period to 156/2 = 78 
  invert I1 (i,r,t_clk,y);

initial
  begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tc, I1);
    i = 1'b0; r = 1'b1; //intialization value so flip flop with one full clock period to get rid of x values                                           
    #156; i = 1'b0; r = 1'b1; // input bits least to most signifiant
    #156; i = 1'b0; r = 1'b0;
    #156; i = 1'b1; r = 1'b0;
    #156; i = 1'b1; r = 1'b0;
    #156; i = 1'b1; r = 1'b1;
    #156; i = 1'b0; r = 1'b0;
    #156; i = 1'b1; r = 1'b0;
    #156; i = 1'b1; r = 1'b0;
    #156; i = 1'b0; r = 1'b0;
    #156; i = 1'b1; r = 1'b0;
    #156; i = 1'b0; r = 1'b0;
    #156; i = 1'b0; r = 1'b0;
    

  end
  initial #1920 $finish; // Total time accounts for all delays
endmodule
