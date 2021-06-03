module Adder4 (
    input num1[3:0], 
    input num2[3:0],
    output reg sum[3:0]

);
    // {} - operator discardes the carry out
    // works for as carry cannot be generated in any case
    assign sum = {num1 + num2};
    
endmodule