# 3-bit ALU Project (SystemVerilog + Logisim)

This project implements a 3-bit Arithmetic and Logic Unit (ALU) using SystemVerilog, with each operation in a separate module for clarity and modular design. It includes a functional Logisim design as well.

## 🛠 ALU Operations Implemented

Each of the following operations is implemented in a separate SystemVerilog module:

### Arithmetic
- **Addition (ADD):** 3-bit adder using 3 Half Adders with `cin = 0`.
- **Subtraction (SUB):** 3-bit subtractor using 3 Half Adders with `cin = 1`.
- **Two's Complement (2CMP):** A' + 1 using bitwise NOT and 3-bit adder.

### Logic
- **Bitwise OR**
- **Bitwise AND**
- **Bitwise XOR**
- **Bitwise NOT**

Each logic module performs the operation bit-by-bit and returns a 3-bit output vector.

### Shifting
- **Logical Left Shift:** A << 2
- **Logical Right Shift:** A >> 3

### Bonus
- **Overflow (V) Detection**
- **Zero (Z) Detection**
- **Arithmetic Shifts (signed) (Optional)**

## 🧪 Testbench

Includes a full SystemVerilog testbench that:
- Initializes test vectors.
- Simulates each operation.
- Displays results for verification.

## 🧩 Logisim Circuit

The `logisim/` folder contains the circuit design of the ALU using [Logisim](http://www.cburch.com/logisim/).

## 📁 File Structure

project/
│
├── modules/
│ ├── adder3bit.sv
│ ├── subtractor3bit.sv
│ ├── twos_complement.sv
│ ├── or3bit.sv
│ ├── and3bit.sv
│ ├── xor3bit.sv
│ ├── not3bit.sv
│ ├── shift_left.sv
│ ├── shift_right.sv
│ └── alu_testbench.sv
│
├── logisim/
│ └── 3bit_alu.circ
│
└── README.md


## ✅ How to Simulate

1. Open ModelSim or any other SystemVerilog simulator.
2. Compile all `.sv` files.
3. Run the testbench `alu_testbench.sv`.
4. Observe results in the console or waveform viewer.

## 📄 License

This project is for educational purposes only.
