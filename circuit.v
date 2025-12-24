`timescale 1ns / 1ps
module invert(x,r,t_clk,y);

  input x,r,t_clk;
  output y;
  wire jk1, jk2, q, nq;

  nand #(12) (jk1, r, t_clk, nq);
  nand #(12) (jk2, x, t_clk, q);
  nand #(12) (q, jk1, nq);
  nand #(12) (nq, jk2, q);

  
 
endmodule
 
