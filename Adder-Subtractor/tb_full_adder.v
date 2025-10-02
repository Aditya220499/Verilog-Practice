`include "full_adder.v"
module tb_full_adder;
    wire sum;
    wire carry;
    reg a;
    reg b;
    reg cin;

    full_adder fa(sum, carry, a ,b ,cin);

    initial begin 
        a=0;
        b=0;
        cin=0;
    end
    initial begin 
        $display("---------Start Simulation---------");
        #5 a=1; b=0; cin=1;
        #5 a=1; b=1; cin=1;
        #1
        $display("---------End Simulation-----------");
        #1 $finish;
    end

    initial begin 
        $monitor("A::%d || B::%d || Cin::%d || Carry::%d || Sum::%d",a,b,cin,carry,sum);
    end
endmodule