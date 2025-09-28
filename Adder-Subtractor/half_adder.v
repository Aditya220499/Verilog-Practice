module half_adder(
    output wire sum,
    output wire carry,
    input wire a,
    input wire b
);
    assign sum = a ^ b;      // Sum is the XOR of inputs
    assign carry = a & b;    // Carry is the AND of inputs
endmodule