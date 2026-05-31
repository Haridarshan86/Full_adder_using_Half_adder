# Full_adder_using_Half_adder

# Full Adder Using Half Adders in Verilog HDL

A structural implementation of a **1-Bit Full Adder** using two Half Adders and one OR gate in Verilog HDL.

This project demonstrates hierarchical design in digital logic by building a Full Adder from simpler Half Adder modules.

---

## 📌 Project Overview

A Full Adder is a combinational logic circuit that adds three single-bit inputs:

* A
* B
* Cin (Carry Input)

and produces:

* Sum
* Carry

In this project, the Full Adder is constructed using:

* Two Half Adders
* One OR Gate

---

## 🏗️ Design Architecture

### First Half Adder

Inputs:

* A
* B

Outputs:

* S1
* C1

### Second Half Adder

Inputs:

* S1
* Cin

Outputs:

* Sum
* C2

### Final Carry

```text
Carry = C1 OR C2
```


---

## 🔧 Half Adder Logic

### Sum

```text
Sum = A ⊕ B
```

### Carry

```text
Carry = A · B
```

---

## 🔧 Full Adder Logic

### Sum

```text
Sum = A ⊕ B ⊕ Cin
```

### Carry

```text
Carry = AB + BCin + ACin
```

---

## 📋 Truth Table

| A | B | Cin | Sum | Carry |
| - | - | --- | --- | ----- |
| 0 | 0 | 0   | 0   | 0     |
| 0 | 0 | 1   | 1   | 0     |
| 0 | 1 | 0   | 1   | 0     |
| 0 | 1 | 1   | 0   | 1     |
| 1 | 0 | 0   | 1   | 0     |
| 1 | 0 | 1   | 0   | 1     |
| 1 | 1 | 0   | 0   | 1     |
| 1 | 1 | 1   | 1   | 1     |

---

## 🧩 Block Diagram
<img width="320" height="240" alt="image" src="https://github.com/user-attachments/assets/dadfa535-07d0-4821-a118-bc9a282227d2" />

## 💻 Verilog Design

### Half Adder

```verilog
assign sum = a ^ b;
assign carry = a & b;
```

### Full Adder

```verilog
Half_adder HA1(...);
Half_adder HA2(...);

assign carry = c1 | c2;
```

---

## 🧪 Simulation

<img width="1573" height="811" alt="image" src="https://github.com/user-attachments/assets/15799d2e-24eb-47b6-b306-7b6ebf76d4ee" />


### Sample Output
<img width="1519" height="424" alt="image" src="https://github.com/user-attachments/assets/dc4963b5-f8eb-48f9-9600-410da3a37a3b" />


---

## ▶️ How to Run

1. Open Xilinx Vivado.
2. Create a new RTL Project.
3. Add `Half_adder.v` and `Full_adder.v` under Design Sources.
4. Add `Full_adder_tb.v` under Simulation Sources.
5. Run Behavioral Simulation.
6. Verify the waveform and output.

---

## 🛠 Tools Used

* Verilog HDL
* Xilinx Vivado
* Digital Logic Design

---

## 📚 Concepts Covered

* Half Adder Design
* Full Adder Design
* Structural Modeling
* Hierarchical Design
* Module Instantiation
* Testbench Development
* Functional Verification

---

## 🎯 Applications

* Arithmetic Logic Units (ALUs)
* Binary Adders
* Multipliers
* Processor Design
* FPGA Development
* VLSI Systems

---

## 🚀 Learning Outcomes

By completing this project, you will learn:

* How Full Adders work
* Building complex circuits from simpler modules
* Structural Modeling in Verilog
* Module Instantiation
* Simulation and Verification using Vivado

---


