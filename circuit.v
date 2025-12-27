`timescale 1ns / 1ps
module invert(i,r,t_clk,y);

  input  i,r,t_clk;
  output y;
  wire in, K, jk1, jk2, Q, NQ, kn, D, d1, S, R, d4;

  not #(5) (in, i);
  and #(10) (K, in, r);
  not #(5) (kn, K);
  and #(10) (jk1, i, NQ);
  and #(10) (jk2, kn, Q);
  or #(10) (D, jk1, jk2);

  nand #(12) (d1, S, d4);
  nand #(12) (S, d1, R);
  nand #(12) (R, S, t_clk, d4);
  nand #(12) (d4, R, D);

  nand #(12) (Q, NQ, S);
  nand #(12) (NQ, Q, R);

  
  
  
endmodule
 
