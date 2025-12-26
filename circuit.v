`timescale 1ns / 1ps
module invert(i,r,t_clk,y);

  input  i,r,t_clk;
  output y;
  wire j, k, jk1, jk2, q, nq;
  
  and #(10) (j, nq, i);
  buf #(4) (k, r);

  nand #(12) (jk1, j, t_clk, nq);
  nand #(12) (jk2, k, t_clk, q);
  nand #(12) (q, jk1, nq);
  nand #(12) (nq, jk2, q);

  xor #(15) (y, i, q);

endmodule
 
