module greater4(input  [3:0]  num1,
                input[3:0] num2,
                output z
);
        // if num1 is greater than num2, gives true
        assign z = (num1 >= num2) ? 1'b1 : 1'b0;
endmodule