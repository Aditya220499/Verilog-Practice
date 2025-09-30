module ripple_carry_adder(
    output wire [3:0]sum,
    output wire carry_out,
    input wire [3:0]a,
    input wire [3:0]b,
    input wire cin
);
//add logic
    wire [4:0]c;
    full_adder(sum, carry, a, b , cin);
    full_adder(sum, carry, a, b , cin);
    full_adder(sum, carry, a, b , cin);
    full_adder(sum, carry, a, b , cin);

endmodule