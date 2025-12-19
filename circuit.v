`timescale 1ns / 1ps
module invert(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,j,k,t_clk,o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11);

  input x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,j,k,t_clk;
  output o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11;
  wire jk1, jk2, q, nq;
  
  nand #(12) (jk1, j, t_clk, nq);
  nand #(12) (jk2, k, t_clk, q);
  nand #(12) (q, jk1, nq);
  nand #(12) (nq, jk2, q);

  
