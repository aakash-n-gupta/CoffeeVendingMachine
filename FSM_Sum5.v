module FSM_Sum5 (
    input coin[3:0], 
    input rst,
    input clk, 
    output LED_Yellow,
    output LED_Green,
    output despencer;
);

    reg [7:0] state, next_state;
    reg [3:0] sum;

    always @(posedge clk) 
    begin
        // If the 5 rs cost is reached, send signal to dispencer
        if (sum >= 4'b0101) 
        begin
            despencer <= 1'b1;      // signal to despencer
            LED_Yellow <= 1'b1;
            LED_Green <= 1'b0;
            sum <= 4'b0000;         // reset sum to O
        end
        else
            begin
                // value of coin gets added to the sum reg
                sum <= sum + coin;
                despencer <= 1'b0;      // signal to despencer
                LED_Yellow <= 1'b0;     // turn off both LEDs when machine is being used
                LED_Green <= 1'b0;
            end

        
        
    end
    


endmodule