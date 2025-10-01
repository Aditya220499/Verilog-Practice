module complement_2s(
    output wire compVal,
    input wire val
);
    assign compVal = ~val +1'b1;
endmodule