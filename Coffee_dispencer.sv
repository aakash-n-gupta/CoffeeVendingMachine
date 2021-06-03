module Dispencer (
    input dispencer, 
    output callBack_ordering;
);

    always @(posedge clk ) begin
        if (dispencer) begin

            // do some work to actually make coffee
            // once it is made - an internal signal is generated?? to then send the callback to the original machine
            
        end
        else
        begin
            // do Nothing?? basically wait for the dispence command
        end
        
    end


    
endmodule