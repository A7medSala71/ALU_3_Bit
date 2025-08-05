# 🔢 3-Bit ALU (SystemVerilog + Logisim)

This project implements a **3-bit Arithmetic Logic Unit (ALU)** using **SystemVerilog** with a modular design approach. Each operation is encapsulated in its own module for clarity and testing. A **Logisim** schematic is also included for visual simulation.

---

## 📁 Project Structure

```
project/
├── modules/
│   ├── adder3bit.sv            # 3-bit Adder using Half Adders
│   ├── subtractor3bit.sv       # 3-bit Subtractor using Half Adders
│   ├── twos_complement.sv      # 2’s Complement logic
│   ├── or3bit.sv               # Bitwise OR (3-bit)
│   ├── and3bit.sv              # Bitwise AND (3-bit)
│   ├── xor3bit.sv              # Bitwise XOR (3-bit)
│   ├── not3bit.sv              # Bitwise NOT (3-bit)
│   ├── shift_left.sv           # Logical left shift (3-bit)
│   ├── shift_right.sv          # Logical right shift (3-bit)
│   └── alu_testbench.sv        # Comprehensive testbench
├── logisim/
│   └── 3bit_alu.circ           # Logisim circuit diagram
└── README.md                   # Project documentation
```

---

## ⚙️ Features

- 3-bit inputs: A and B
- Supported operations:
  - Addition (A + B)
  - Subtraction (A - B)
  - Two’s Complement of B
  - Bitwise AND, OR, XOR, NOT
  - Logical Shift Left and Right
- Modular design: Each operation in its own SystemVerilog module
- Easy to test and integrate

---

## 🧪 Testing

The `alu_testbench.sv` file includes comprehensive test cases to verify all ALU operations. Run the testbench using **ModelSim**, **Vivado**, or any SystemVerilog-compatible simulator.

---

## 🖥️ Logisim Circuit

The Logisim version of the ALU (`logisim/3bit_alu.circ`) provides a GUI-based simulation. Open using [Logisim Evolution](https://github.com/reds-heig/logisim-evolution).

---

## 🚀 How to Use (Git)

If you've already uploaded this project to GitHub and want to commit the latest changes, use the following:

```bash
cd path/to/project
git add .
git commit -m "📦 Update: Modular ALU implementation and README"
git push origin main
```

---

## 📄 License

This project is for educational purposes.
