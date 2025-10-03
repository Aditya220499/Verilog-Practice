`include "full_adder.v"
module ripple_carry_adder(
    output wire [3:0]sum,
    output wire carry_out,
    input wire [3:0]a,
    input wire [3:0]b,
    input wire cin
);
    wire [3:0]b_comp;
    wire [4:0]c;
    assign c[0] = cin;
    assign b_comp = b ^ {4{cin}};
    full_adder fa1(sum[0], c[1], a[0], b_comp[0] , c[0]);
    full_adder fa2(sum[1], c[2], a[1], b_comp[1] , c[1]);
    full_adder fa3(sum[2], c[3], a[2], b_comp[2] , c[2]);
    full_adder fa4(sum[3], c[4], a[3], b_comp[3] , c[3]);
    assign carry_out = c[4];

endmodule 