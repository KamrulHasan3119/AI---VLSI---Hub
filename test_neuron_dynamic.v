module test_neuron_dynamic;
    reg signed [15:0] x1, x2;
    wire signed [15:0] y;
    
    neuron uut (
        .x1(x1), .x2(x2),
        .y(y)
    );

    initial begin
        // Apply test inputs
        x1 = 16'd1000;  // Example input 1
        x2 = 16'd2000;  // Example input 2

        #10; // Wait for output calculation

        // Print the output
        $display("Neuron Output: %d", y);
    end
endmodule
