# Flip-Flops in Verilog HDL

## Overview

This project contains the implementation of four fundamental flip-flops in Verilog HDL. Flip-flops are sequential logic elements used to store one bit of data and are the building blocks of registers, counters, finite state machines (FSMs), and memory elements.

This repository includes RTL design, testbenches, and simulation waveforms for each flip-flop.

---

## Flip-Flops Implemented

### 1. D (Data) Flip-Flop

The D Flip-Flop captures the input data on the active edge of the clock and stores it until the next clock edge.

**Characteristic Equation**

```
Q(next) = D
```

**Applications**
- Registers
- Shift Registers
- Pipeline Registers
- Data Synchronization

---

### 2. JK Flip-Flop

The JK Flip-Flop eliminates the invalid state of the SR Flip-Flop by allowing the output to toggle when both inputs are high.

| J | K | Operation |
|---|---|-----------|
|0|0|No Change|
|0|1|Reset|
|1|0|Set|
|1|1|Toggle|

**Applications**
- Counters
- Frequency Dividers
- Control Logic

---

### 3. SR (Set-Reset) Flip-Flop

The SR Flip-Flop stores one bit of information using Set and Reset inputs.

| S | R | Operation |
|---|---|-----------|
|0|0|Hold|
|0|1|Reset|
|1|0|Set|
|1|1|Invalid|

**Applications**
- Basic Memory Elements
- Latches
- Control Circuits

---

### 4. T (Toggle) Flip-Flop

The T Flip-Flop changes its output whenever the T input is high.

| T | Operation |
|---|-----------|
|0|Hold|
|1|Toggle|

**Applications**
- Binary Counters
- Frequency Division
- Clock Circuits

---

## Project Structure

```
Flip_Flops/
│
├── d_flipflop.v
├── tb_d_flipflop.v
│
├── jk_flipflop.v
├── tb_jk_flipflop.v
│
├── sr_flipflop.v
├── tb_sr_flipflop.v
│
├── t_flipflop.v
├── tb_t_flipflop.v
│
├── waveform_d.png
├── waveform_jk.png
├── waveform_sr.png
├── waveform_t.png
│
└── README.md
```

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Behavioral Simulation

---

## Concepts Covered

- Sequential Logic
- Edge Triggering
- State Storage
- Clocked Circuits
- Digital Memory Elements

---

## Applications

- Registers
- Counters
- Shift Registers
- Finite State Machines (FSM)
- Microprocessors
- FPGA Design
- ASIC Design

---

## Simulation

Each flip-flop has been verified using an independent testbench. The simulation waveforms confirm the expected behavior according to the corresponding truth table.

---

## Learning Outcomes

- Understanding sequential logic design
- Implementing edge-triggered flip-flops in Verilog
- Writing Verilog testbenches
- Verifying RTL functionality through simulation
- Building a foundation for counters, registers, FIFOs, and FSMs

---

**Author:** Ilhan Ansari
