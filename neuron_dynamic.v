module neuron #(parameter INT_BITS = 6, parameter FRAC_BITS = 12)(
    input signed [INT_BITS+FRAC_BITS-1:0] x1,
    input signed [INT_BITS+FRAC_BITS-1:0] x2,
    output reg signed [INT_BITS+FRAC_BITS-1:0] y
);

    // Hardcoded weights and bias
    reg signed [INT_BITS+FRAC_BITS-1:0] W1 = -4474;  
    reg signed [INT_BITS+FRAC_BITS-1:0] W2 = -3804;  
    reg signed [INT_BITS+FRAC_BITS-1:0] BIAS = -3787;  

    always @(*) begin
        y = (x1 * W1 + x2 * W2 + BIAS); // Multiply & accumulate
        if (y < 0) y = 0; // ReLU activation
    end

endmodule
