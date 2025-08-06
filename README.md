# 3-bit ALU Project (SystemVerilog + Logisim)

## 📌 Overview
This project involves the **design**, **implementation**, and **simulation** of a **3-bit Arithmetic and Logic Unit (ALU)** using:
- **SystemVerilog** for simulation and verification.
- **Logisim** for visual circuit-level implementation.

---

## ⚙️ Features

### ➕ Arithmetic Operations
- **Addition** (`F = A + B`)
- **Subtraction** (`F = B - A`) using Two's Complement
- **Two's Complement** (`F = A' + 1`)

### 🔁 Logical Operations
- **Bitwise OR** (`F = A | B`)
- **Bitwise AND** (`F = A & B`)
- **Bitwise XOR** (`F = A ^ B`)
- **Bitwise NOT** (`F = ~B`)

### 🔄 Shift Operations
- **Logical Left Shift** (`F = A << 2`)
- **Logical Right Shift** (`F = A >> 3`)
- **Arithmetic Shifts** (Left and Right) – *Bonus Feature*

### 🏁 Flags
- **Zero Flag (Z):** Asserted when `F == 0`
- **Overflow Flag (V):** Asserted on signed overflow during arithmetic operations

---

## 📁 Project Structure

```
├── src/
│   ├── ALU_3_bit.sv              # Top-level ALU module
│   ├── Full_Adder.sv             # 1-bit full adder
│   ├── Full_Adder_3_bit.sv       # 3-bit full adder
│   ├── Full_Sub_3_bit.sv         # 3-bit subtractor (2's complement)
│   ├── twos_complement.sv        # Two's complement logic
│   ├── AND_3bit.sv               # Bitwise AND
│   ├── OR_3bit.sv                # Bitwise OR
│   ├── XOR_3bit.sv               # Bitwise XOR
│   ├── NOT_3bit.sv               # Bitwise NOT
│   ├── Shift_Left_2.sv          # Logical left shift by 2
│   ├── Shift_Right_3.sv         # Logical right shift by 3
│   ├── shift_left_arith_1.sv    # Arithmetic left shift
│   ├── shift_right_arith_1.sv   # Arithmetic right shift
│
├── tb/
│   └── ALU_tb.sv                 # Testbench for simulation
│
├── LOGISIM/
│   ├── logisim_alu.png           # Logisim circuit screenshot
│   └── modelsim_wave.png         # ModelSim waveform screenshot
│
├── Digital_Report.tex           # LaTeX report (full documentation)
│
└── README.md                     # This file
```

---

## 🧠 Logisim Design

- Modular construction using:
  - 3-bit adder and subtractor
  - Bitwise logic gates
  - Multiplexers to select operations
- **Zero flag:** Derived using NOR gate from output
- **Overflow flag:** Taken from MSB carry-out in addition
- 📷 **Screenshot:**  
  ![Logisim ALU](LOGISIM/logisim_alu.png)

---

## 🧪 Simulation with ModelSim

### 🔧 Tools Used
- **ModelSim** for compiling, simulating, and visualizing SystemVerilog modules.

### ▶️ Steps to Run Simulation
```bash
# 1. Compile all modules
vlog src/*.sv tb/ALU_tb.sv

# 2. Launch simulation
vsim work.ALU_tb

# 3. Force inputs (example)
force A 3'b011
force B 3'b101
force SEL 4'b0000
run 100
```

- 🧾 Observe output waveforms  
  📷 **Screenshot:**  
  ![ModelSim Waveform](LOGISIM/modelsim_wave.png)

---

## 📄 Report

Full technical documentation available in `Digital_Report.tex`:
- Design overview (Logisim + SystemVerilog)
- Module breakdown
- Simulation outputs
- Diagrams and waveforms
- Observations, challenges, and conclusions

---

## 🚀 Future Improvements
- Extend ALU to **8-bit or 16-bit**
- Add **multiplication**, **division**, and **rotate** operations
- Integrate into **CPU datapath** with pipelining
- Deploy on FPGA using **Quartus** or **Vivado**

---

## 📚 References

1. Logisim Digital Logic Simulator  
   [http://www.cburch.com/logisim/](http://www.cburch.com/logisim/)
2. ModelSim Simulation Software  
   [https://www.mentor.com/products/fv/modelsim/](https://www.mentor.com/products/fv/modelsim/)
3. SystemVerilog IEEE Standard  
   [https://ieeexplore.ieee.org/document/8299595](https://ieeexplore.ieee.org/document/8299595)
4. Digital Design Principles and FPGA Applications  
   [https://doi.org/10.1007/978-1-4614-1372-7](https://doi.org/10.1007/978-1-4614-1372-7)

---

> 📌 **Note:** Make sure `LOGISIM` folder contains all screenshots to be referenced correctly.
