module Comparator(Y, A, B);
output reg [2:0]Y;
input wire [3:0]A ,B;

always @ (A, B)
begin
    if (A==B)
         Y=3'b010;
    else if(A<B)
            Y=3'b001;
    else if(A>B)
            Y=3'B100;
end

endmodule