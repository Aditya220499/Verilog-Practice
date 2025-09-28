module half_adder(
    output sum,
    output carry,
    input a,
    input b
);
    assign sum = a ^ b;      // Sum is the XOR of inputs
    assign carry = a & b;    // Carry is the AND of inputs
endmodule