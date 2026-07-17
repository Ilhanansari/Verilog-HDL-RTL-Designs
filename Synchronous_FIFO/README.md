# Synchronous FIFO (First In First Out)

## Overview
This project implements an 8-bit synchronous FIFO in Verilog HDL. The FIFO stores data in the order it is received and retrieves it in the same order. Both read and write operations are synchronized with the same clock.

## Features
- 8-bit data width
- 8-word memory depth
- Synchronous read and write
- Write Enable (wr_en)
- Read Enable (rd_en)
- Full Flag
- Empty Flag
- Asynchronous Reset

## Inputs

| Signal | Description |
|---------|-------------|
| clk | System Clock |
| rst | Asynchronous Reset |
| wr_en | Write Enable |
| rd_en | Read Enable |
| data_in | 8-bit Input Data |

## Outputs

| Signal | Description |
|---------|-------------|
| data_out | 8-bit Output Data |
| full | FIFO Full Flag |
| empty | FIFO Empty Flag |

## FIFO Operation

### Write
When `wr_en = 1` and FIFO is not full, data is written into memory.

### Read
When `rd_en = 1` and FIFO is not empty, data is read from memory.

### Flags
- `full = 1` when FIFO is full.
- `empty = 1` when FIFO is empty.

## Simulation Result

Input Data:
10 → 20 → 30 → 40

Output Data:
10 → 20 → 30 → 40

The waveform confirms correct FIFO (First-In First-Out) behavior.

## Files

- synchronous_fifo.v
- tb_synchronous_fifo.v
- waveform.png

## Tools Used
- Verilog HDL
- Xilinx Vivado

## Applications
- UART
- SPI
- Network Buffers
- Embedded Systems
- FPGA Designs
- ASIC Designs

---
Author: Ilhan Ansari
