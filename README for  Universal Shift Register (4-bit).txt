# Universal Shift Register (4-bit) using Verilog HDL

## Overview

This project implements a **4-bit Universal Shift Register (USR)** in **Verilog HDL**. A Universal Shift Register is a versatile sequential circuit capable of performing multiple operations such as **Hold, Shift Left, Shift Right, and Parallel Load** based on the select inputs.

The design is synchronous and operates on the positive edge of the clock with an asynchronous reset.

---

## Features

- 4-bit Universal Shift Register
- Positive Edge Triggered
- Asynchronous Reset
- Hold Operation
- Shift Left Operation
- Shift Right Operation
- Parallel Data Load
- Verilog HDL Implementation
- Complete Testbench Included
- Simulated using Xilinx Vivado

---

## Block Diagram

```
                 +-----------------------------+
 clk ----------->|                             |
 rst ----------->|  Universal Shift Register   |
 S1 -----------> |                             |
 S0 -----------> |                             |
 SL -----------> |                             |
 SR -----------> |                             |
 D[3:0] -------> |                             |
                 |                             |
                 +-----------------------------+
                           |
                           |
                        Q[3:0]
```

---

## Inputs

| Signal | Width | Description |
|---------|------|-------------|
| clk | 1 | Clock Signal |
| rst | 1 | Asynchronous Reset |
| S1 | 1 | Select Bit 1 |
| S0 | 1 | Select Bit 0 |
| SL | 1 | Serial Left Input |
| SR | 1 | Serial Right Input |
| D | 4 | Parallel Data Input |

---

## Output

| Signal | Width | Description |
|---------|------|-------------|
| Q | 4 | Register Output |

---

## Operation Table

| S1 | S0 | Operation |
|:--:|:--:|-----------|
| 0 | 0 | Hold |
| 0 | 1 | Shift Right |
| 1 | 0 | Shift Left |
| 1 | 1 | Parallel Load |

---

## Shift Operations

### Hold

```
Q <= Q
```

### Shift Right

```
Q <= {SR, Q[3:1]}
```

### Shift Left

```
Q <= {Q[2:0], SL}
```

### Parallel Load

```
Q <= D
```

---

## Simulation Results

The following operations were successfully verified:

- Reset
- Parallel Load
- Hold
- Shift Right
- Shift Left

The simulation confirms correct operation of all four modes.

---

## Files

```
usr.v
tb_usr.v
waveform.png
README.md
```

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- RTL Simulation

---

## Applications

- Data Storage
- Serial Communication
- Data Transfer
- Shift Operations
- Digital Signal Processing
- Processor Datapath
- Embedded Systems

---

## Author

**Ilhan Ansari**

B.Tech Electronics & Communication Engineering
