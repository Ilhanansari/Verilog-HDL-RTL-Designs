# Sequence Detector (1011) - Mealy FSM (Overlapping)

## Overview

This project implements a **Mealy Finite State Machine (FSM)** in **Verilog HDL** to detect the binary sequence **1011**. The detector supports **overlapping sequence detection**, allowing consecutive overlapping patterns to be recognized efficiently.

The design is synchronous with a positive-edge-triggered clock and asynchronous reset.

---

## Features

- Mealy FSM
- Overlapping Sequence Detection
- Detects Binary Pattern **1011**
- Positive Edge Triggered
- Asynchronous Reset
- Verilog HDL Implementation
- Complete Testbench Included
- Simulated using Xilinx Vivado

---

## Inputs

| Signal | Width | Description |
|---------|------|-------------|
| clk | 1 | Clock Signal |
| rst | 1 | Asynchronous Reset |
| x | 1 | Serial Input Bit |

---

## Output

| Signal | Width | Description |
|---------|------|-------------|
| y | 1 | High when sequence **1011** is detected |

---

## State Diagram

```
          x=1
      +--------+
      |        |
      v        |
    +----+     |
    | S0 |-----+
    +----+
      |
    x=1
      v
    +----+
    | S1 |   (Seen: 1)
    +----+
      |
    x=0
      v
    +----+
    | S2 |   (Seen: 10)
    +----+
      |
    x=1
      v
    +----+
    | S3 |   (Seen: 101)
    +----+
      |
    x=1 → Sequence Detected (y = 1)
```

---

## State Encoding

| State | Meaning |
|-------|---------|
| S0 | Initial State |
| S1 | Received 1 |
| S2 | Received 10 |
| S3 | Received 101 |

---

## Detection Example

### Input

```
1011
```

### Output

```
0001
```

### Overlapping Example

Input

```
1011011
```

Output

```
0001001
```

---

## Files

```
sequence_detector.v
tb_sequence_detector.v
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

- Digital Communication
- Pattern Detection
- Protocol Monitoring
- Data Stream Analysis
- Control Systems

---

## Author

**Ilhan Ansari**

B.Tech Electronics & Communication Engineering
