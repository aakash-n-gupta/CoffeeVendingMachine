// Coffee_type - 
/*
    Coffee select -- encoding
    filter - Rs2 -- 00
    Black - Rs1 -- 01
    Bru -   Rs5 -- 10
    nescafe - Rs10 -- 11
    Can this encoding save hardware bits by using a LUT, to specify the sum needed 
    In the current implinentation, coffee_sel is also the cost of the coffee ordered

*/ 
module FSM_Sum_n (
    input coin[3:0],
    input coffee_sel[3:0], 
    input rst,
    input clk, 
    output LED_Yellow,
    output LED_Green,
    output dispencer
);

    // reg [7:0] state, next_state; Do we need to know each state?  
    reg [3:0] sum;

    always @(posedge clk) 
    begin
        // If the cost of specified coffee is reached, send signal to dispencer
        if (sum >= coffee_sel) 
        begin
            dispencer <= 1'b1;      // signal to despencer
            LED_Yellow <= 1'b1;
            LED_Green <= 1'b0;
            sum <= 4'b0000;         // reset sum to O
        end
        else
            begin
                // value of coin gets added to the sum reg
                sum <= sum + coin;
                dispencer <= 1'b0;      // signal to despencer
                LED_Yellow <= 1'b0;     // turn off both LEDs when machine is being used
                LED_Green <= 1'b0;
            end

        
        
    end
    


endmodule