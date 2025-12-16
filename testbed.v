`timescale 1ns / 1ps
module tc;

wire ;
reg ;
initial begin t_clock = 0; forever #5 t_clock = ~t_clock; end
  invert I1 (x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,j,k,t_clock,q,nq);

initial
  begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tc, I1);
    

  end
  initial #500 $finish;
endmodule
