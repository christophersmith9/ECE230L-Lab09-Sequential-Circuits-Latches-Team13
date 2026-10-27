module d_latch(
    input D, E,
    output reg Q, 
    output NotQ
);


    //D-Latch behavior

    always @(D, E) begin 
        if (E) begin
            Q <= D; 
        end
        // Q holds previous value if E is low
    end

    assign NotQ = ~Q; 

endmodule