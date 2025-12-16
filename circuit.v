`timescale 1ns / 1ps
module invert(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,j,k,t_clk);

  input x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,j,k,t_clk;
  output q,nq;
  wire pd1,s,r,pd2, nk, jk1, jk2, d;

  and (#10) (jk1, j, nq);
  not (#5) (nk, k);
  and (#10) (jk2, nk, q);
  or (#10) (d, jk1, jk2);
  
