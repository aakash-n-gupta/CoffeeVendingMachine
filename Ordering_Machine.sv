module Ordering_Machine (
    input coin_value[3:0],
    input coffee_price[3:0],
    output LED_yellow,
    output LED_green, 
    output Dispencer
);

    reg[3:0] current_sum;
    wire [3:0] sum_result;
    
    assign sum_result = 4'b0000;
    assign current_sum = 4'b0000;

    // accumulates value of coin and previous sum
    Adder4 A0(coin_value, coffee_price, sum_result);

    // if the accumulated sum is greater than coffee price, Dispencer will go high
    greater4 G0(current_sum, coffee_price, Dispencer);
    
endmodule