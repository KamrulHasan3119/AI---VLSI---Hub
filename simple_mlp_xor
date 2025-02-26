import numpy as np
import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense

# Sample XOR dataset
X = np.array([[0,0], [0,1], [1,0], [1,1]], dtype=np.float32)
Y = np.array([[0], [1], [1], [0]], dtype=np.float32)

# Define a simple MLP model
model = Sequential([
    Dense(3, activation='relu', input_shape=(2,)),  # Hidden layer (3 neurons)
    Dense(1, activation='sigmoid')  # Output layer (1 neuron)
])

# Compile and train the model
model.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])
model.fit(X, Y, epochs=1000, verbose=0)

# Function to convert floating-point to fixed-point
def float_to_fixed(value, int_bits=4, frac_bits=12):
    scale = 2 ** frac_bits
    fixed_val = int(value * scale)  # Convert to fixed-point
    return fixed_val

# Extract weights from the model
weights = [layer.get_weights()[0] for layer in model.layers]
biases = [layer.get_weights()[1] for layer in model.layers]

# Convert weights to fixed-point format
fixed_weights = [[[float_to_fixed(w) for w in neuron] for neuron in layer] for layer in weights]
fixed_biases = [[float_to_fixed(b) for b in layer] for layer in biases]

print("Fixed-Point Weights:", fixed_weights)
print("Fixed-Point Biases:", fixed_biases)

# Save weights and biases to a file
with open("simple_mlp.txt", "w") as f:
    for layer in fixed_weights:
        for neuron in layer:
            f.write(" ".join(map(str, neuron)) + "\n")

    for layer in fixed_biases:
        f.write(" ".join(map(str, layer)) + "\n")
