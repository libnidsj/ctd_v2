import random

def generate_32bit_binary():
    binary_number = ""
    for _ in range(32):
        bit = random.choice(["0", "1"])
        binary_number += bit
    return binary_number

# Open the .dat file for writing
with open("estimulos.dat", "w") as file:
    # Perform 50 iterations
    for _ in range(50):
        # Reset cumulative sum for each iteration
        cumulative_sum = 0

        # Perform 16 iterations within each outer iteration
        for _ in range(16):
            # Generate random 32-bit binary numbers
            number1 = generate_32bit_binary()
            number2 = generate_32bit_binary()

            # Truncate the numbers into four bins of 8 bits each
            bins1 = [int(number1[i:i+8], 2) for i in range(0, 32, 8)]
            bins2 = [int(number2[i:i+8], 2) for i in range(0, 32, 8)]

            # Calculate the absolute difference between corresponding bins and sum them
            iteration_sum = 0
            for i in range(4):
                iteration_sum = iteration_sum + abs(bins1[i] - bins2[i])
                        
            # Update the cumulative sum
            cumulative_sum += iteration_sum
            
            # Convert the cumulative sum to a 14-bit binary number
            cumulative_sum_binary = bin(cumulative_sum)[2:].zfill(56)
            
            # Write the values to the .dat file
            if(_ == 15):
                file.write(f"{number1} {number2} {cumulative_sum_binary} 1\n")
            else:
                file.write(f"{number1} {number2} {cumulative_sum_binary} 0\n")
            

