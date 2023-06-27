import random

numberoftests = 200

def generate_random_binary():
    binary_number = 0
    for i in range(32):
        bit = random.randint(0, 1)
        binary_number |= (bit << i)
    return binary_number
    
def generate_random_31bit_binary():
    binary_number = 0
    for i in range(31):
        bit = random.randint(0, 1)
        binary_number |= (bit << i)
    return binary_number
    
def generate_random_8bit_binary():
    binary_number = 0
    for i in range(8):
        bit = random.randint(0, 1)
        binary_number |= (bit << i)
    return binary_number

# Open the .dat file for writing
with open("estimulos.dat", "w") as file:
    # Perform 16 iterations for sum
    for _ in range(numberoftests):
        # Generate random 32-bit binary numbers
        number1 = generate_random_binary()
        number2 = generate_random_binary()

        binary_sum = (number1 + number2) & 0xFFFFFFFF
        
        # Convert the result to a 32-bit binary number
        binary_sum_bin = bin(binary_sum)[2:].zfill(32)
        number1 = bin(number1)[2:].zfill(32)
        number2 = bin(number2)[2:].zfill(32)
        
        # Write the values to the .dat file
        file.write(f"100000 {number1} {number2} {binary_sum_bin}\n")
    
    
    # Perform 16 iterations for sub
    for _ in range(numberoftests):

        # Generate random 32-bit binary numbers
        number1 = generate_random_binary();
        number2 = generate_random_binary()
        
        binary_sub = 0
        # if(number1 > number2):
        binary_sub = (number1 - number2) & 0xFFFFFFFF

        # Convert the result to a 32-bit binary number
        binary_sub_bin = bin(binary_sub)[2:].zfill(32)
        number1 = bin(number1)[2:].zfill(32)
        number2 = bin(number2)[2:].zfill(32)
        
        # Write the values to the .dat file
        file.write(f"100010 {number1} {number2} {binary_sub_bin}\n")
        
    # Perform 16 iterations for and
    for _ in range(numberoftests):
    
        # Generate random 32-bit binary numbers
        number1 = generate_random_binary()
        number2 = generate_random_binary()

        binary_and = number1 & number2

        # Convert the result to a 32-bit binary number
        binary_and_bin = bin(binary_and)[2:].zfill(32)
        number1 = bin(number1)[2:].zfill(32)
        number2 = bin(number2)[2:].zfill(32)
        
        # Write the values to the .dat file
        file.write(f"100100 {number1} {number2} {binary_and_bin}\n")
        
    # Perform 16 iterations for or
    for _ in range(numberoftests):
        # Generate random 32-bit binary numbers
        number1 = generate_random_binary()
        number2 = generate_random_binary()
        
        binary_or = number1 | number2

        # Convert the result to a 32-bit binary number
        binary_or_bin = bin(binary_or)[2:].zfill(32)
        number1 = bin(number1)[2:].zfill(32)
        number2 = bin(number2)[2:].zfill(32)
        
        # Write the values to the .dat file
        file.write(f"100101 {number1} {number2} {binary_or_bin}\n")
        
    # Perform 16 iterations for slt
    for _ in range(numberoftests):

        # Generate random 31-bit binary numbers
        number1 = generate_random_31bit_binary()
        number2 = generate_random_31bit_binary()
        
        binary_slt = 0
        if(number1 < number2):
            binary_slt = 0b0000000000000000000000000000001

        # Convert the result to a 32-bit binary number
        binary_slt_bin = bin(binary_slt)[2:].zfill(32)
        number1 = bin(number1)[2:].zfill(32)
        number2 = bin(number2)[2:].zfill(32)
        
        # Write the values to the .dat file
        file.write(f"101010 {number1} {number2} {binary_slt_bin}\n")
        
    # Perform 16 iterations for multiplication
    for _ in range(numberoftests):
    
        number1 = generate_random_8bit_binary()
        number2 = generate_random_8bit_binary()

        # number1 = generate_random_binary()
        # number2 = generate_random_binary()
        binary_mult = (number1 * number2) & 0xFFFFFFFF

        # Convert the result to a 32-bit binary number
        binary_mult = bin(binary_mult)[2:].zfill(32)
        number1 = bin(number1)[2:].zfill(32)
        number2 = bin(number2)[2:].zfill(32)
        
        # Write the values to the .dat file
        file.write(f"110000 {number1} {number2} {binary_mult}\n")