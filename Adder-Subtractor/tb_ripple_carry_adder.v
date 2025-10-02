`include "ripple_carry_adder.v"
`timescale 1ns / 1ps
module tb_ripple_carry_adder;
wire [3:0]sum;
wire carry_out;
reg [3:0]a;
reg [3:0]b;
reg cin;

ripple_carry_adder rca(sum, carry_out, a, b, cin);

initial begin 
    a = 0;
    b = 0;
    cin = 0;
end
initial begin 
$display("---------Start Simulation---------");
#5 a=9; b=9; cin=0;
#5 a=3; b=4; cin=1;
#1
$display("---------End Simulation-----------");
#1 $finish;
end

initial begin 
$monitor("A::%d || B::%d || Cin::%d || Carry::%d || Sum::%d",a,b,cin,carry_out,sum);
end

endmodule