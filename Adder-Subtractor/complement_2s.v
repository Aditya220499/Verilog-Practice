module complement_2s(
    output wire compVal,
    input wire val
);
// Add 2 comp logic here 
//Can add vectors of differenntsize , but better to do padding manually
    assign compVal = ~val +1'b1;
endmodule