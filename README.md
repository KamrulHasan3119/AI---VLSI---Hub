**FPGA Implementation of a Neural Network Neuron**
This project implements a single artificial neuron using Verilog and synthesizes it for an FPGA using Xilinx Vivado. The neuron follows a perceptron-like structure with fixed-point arithmetic and performs a weighted sum of inputs followed by a ReLU activation function. The weights and bias are dynamically loaded from an external file, allowing flexibility in training the neuron separately. 

**Feature**
1. Implements a single neuron model in Verilog
2. Uses fixed-point representation for precise arithmetic
3. Reads weights & bias dynamically from a text file
4. Supports ReLU activation function for non-linearity
5. Synthesizable on FPGA using Xilinx Vivado
6. Includes a testbench for verification

**Project Structure**

- neuron_dynamic.v              # Verilog module for the neuron  

- test_neuron_dynamic.v      # Testbench for the neuron  

- simple_mlp.txt                   # Text file containing weights & bias  

- README.md                      # Project documentation  

**How it's work**
a. The neuron receives two fixed-point inputs (x1, x2).
b. It loads pre-trained weights & bias from a text file and that text file generated from python.
c. Performs multiplication and accumulation

                           y = (x1 * W1) + (x2 * W2) + BIAS

d. Applies ReLU activation function
                           
                           if y < 0, then y = 0

**Simulation & Testing**
1. if you want to generate your own .txt file then open vs code/anaconda/pycharm and run the simple_mpl.py 
2. Open Xilinx Vivado
3. Load neuron_dynamic.v and test_neuron_dynamic.v
4. Run Behavioral Simulation to verify results.
5. Check the output in the console

**Test Case**
-------------------------------------------------------------------------------------------------------------------------------------
|        Input (x1, x2)        |            Weight (w1, w2)            |            Bias         |          Computed Output (y)     |
|    1000, 2000                |          -4474, -3804                 |      -3787              |        0 (ReLU applied)          |
-------------------------------------------------------------------------------------------------------------------------------------

**FPGA Synthesis**
1. Synthesized in Xilinx Vivado.
2. Resource utilization on synthesis
                      a. LUTs: 19
                      b. DSPs: 2
