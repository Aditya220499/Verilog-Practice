`include "half_adder.v"
module full_adder(
    output wire sum,
    output wire carry,
    input wire a,
    input wire b,
    input wire cin
);
wire ha1_sum, ha1_carry, ha2_sum, ha2_carry ;

half_adder ha1(ha1_sum, ha1_carry, a, b );
half_adder ha2(sum, ha2_carry, ha1_sum, cin );
assign carry = ha1_carry | ha2_carry;

endmodule