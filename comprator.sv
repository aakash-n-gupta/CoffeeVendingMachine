module comparator (
    input num1[3:0].
    input num2[3:0],
    output reg out
);
    // set num1 as the cost required, its acceptable even if the cost is exceeded
    wire [3:0] result; 

    assign result = num1 - num2;
    // if is 0 or -ve, cost has been paid
    always @(posedge clk ) begin
        
    if(result == 1'b0)
        begin
            out <= 1'b1;       
        end

        else
        begin
            out <= 1'b0;            
        end
        
    end
    
endmodule