`timescale 1ns / 1ps
module invert(i,r,t_clk,y);

  input  i,r,t_clk; // i = x
  output y;
  wire J, in, K, jk1, jk2, Q, NQ, kn, D, d1, S, R, d4, rn, Qrn;
  
  //8-14: convert j and k to d. 

  buf #(4) (J, i); // J = i since we set the flip flop to Q = 1 (J = 1, K = 0) (invert input for output) when i = 1
  not #(5) (in, i);
  and #(10) (K, in, r); // K = ~i&r since we only reset the flip flop (J = 0, K =1) so it goes back to coping the inputs to the output when r = 1 and i = 0
  not #(5) (kn, K);        // When implementing JK flip flop with D flip flop D = J&~Q + ~K&Q
  and #(10) (jk1, J, NQ);
  and #(10) (jk2, kn, Q);
  or #(10) (D, jk1, jk2);
 
   // 16-19 Master latch to store state of flip flop
  
  nand #(12) (d1, S, d4); 
  nand #(12) (S, d1, t_clk);
  nand #(12) (R, S, t_clk, d4);
  nand #(12) (d4, R, D);

  nand #(12) (Q, NQ, S); // 21-22 Slave latch for flip flop output
  nand #(12) (NQ, Q, R);

  not #(5) (rn, r); // 28-30 y is equal to i XOR Q&~r.
  and #(10) (Qrn, Q, rn);
  xor #(15) (y, i, Qrn);
  
endmodule
 
