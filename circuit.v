`timescale 1ns / 1ps
module invert(i,r,t_clk,y);

  input  i,r,t_clk;
  output y;
  wire J, K, jk1, jk2, Q, NQ, kn, D, d1, S, R, d4;

  and #(10) (J, NQ, i);
  buf #(4) (K, r);
  not #(5) (kn, K);
  and #(10) (jk1, J, NQ);
  and #(10) (jk2, kn, Q);
  or #(10) (D, jk1, jk2);
  nand #(12) (d1, d4, S);
  nand #(12) (S, d1, t_clk);
  nand #(12) (R, S, t_clk, d4);
  nand #(12) (d4, D, R);
  nand #(12) (Q, S, NQ);
  nand #(12) (NQ, R, Q);
  xor #(15) (y, i, Q);

endmodule
 
