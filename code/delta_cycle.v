`timescale 1ns/1ps
module delta_cycle_demo;
  reg a, b, c;

  always @(*) b = a; // Combinational
  always @(*) c = b; // Combinational

  initial begin
    a = 0;
    #5 a = 1;
    $strobe ("strobe at t=%0t : a=%b b=%b c=%b", $time, a, b, c);
    $display("T=%0t | After a change: a=%b b=%b c=%b", $time, a, b, c);
    #0 $display("T=%0t | After delta: a=%b b=%b c=%b", $time, a, b, c);
    #1 $finish;
  end
endmodule
