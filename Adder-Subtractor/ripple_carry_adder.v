module ripple_carry_adder(
    output wire sum,
    output wire carry_out,
    input wire a,
    input wire b,
    input wire cin
);
//add logic
    wire [4:0]c;
    full_adder(sum, carry, a, b , cin);
    full_adder(sum, carry, a, b , cin);
    full_adder(sum, carry, a, b , cin);
    full_adder(sum, carry, a, b , cin);

endmodule