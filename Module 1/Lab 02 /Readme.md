# Lab 02 – 4×1 Multiplexer Design using Verilog HDL

## Aim

To design and simulate a 4×1 Multiplexer using three different modeling styles in Verilog HDL:

- Behavioral Modeling
- Dataflow Modeling
- Gate-Level Modeling

Simulation was carried out using Verilator, and waveform analysis was performed using GTKWave.

---

## Introduction

A 4×1 Multiplexer (MUX) is a combinational logic circuit that selects one of four input signals and forwards it to a single output based on two select lines.

### Inputs

- IN[3:0]
- SEL[1:0]

### Output

- OUT

---

## Block Diagram

<p align="center">
<img src="Images/block_diagram.png" width="500">
</p>

---

## Truth Table

<p align="center">
<img src="Images/truth_table.png" width="600">
</p>

---

# Project Structure

```
Lab02/
│
├── Images/
├── Source_Code/
├── Testbench/
├── Waveforms/
└── README.md
```

---

# Source Files

### Behavioral Model

```
Source_Code/mux4x1_behavioral.v
```

### Dataflow Model

```
Source_Code/mux4x1_dataflow.v
```

### Gate-Level Model

```
Source_Code/mux4x1_gatelevel.v
```

---

# Testbench Files

```
Testbench/mux4x1_behavioral_tb.v

Testbench/mux4x1_dataflow_tb.v

Testbench/mux4x1_gatelevel_tb.v
```

---

# Simulation Environment

- Ubuntu 24.04
- Verilator
- GTKWave

---

# Simulation Results

## Behavioral Modeling

### Terminal Output

<p align="center">
<img src="Images/behavioral_terminal.png" width="750">
</p>

### Waveform

<p align="center">
<img src="Images/behavioral_waveform.png" width="750">
</p>

---

## Dataflow Modeling

### Terminal Output

<p align="center">
<img src="Images/dataflow_terminal.png" width="750">
</p>

### Waveform

<p align="center">
<img src="Images/dataflow_waveform.png" width="750">
</p>

---

## Gate-Level Modeling

### Terminal Output

<p align="center">
<img src="Images/gatelevel_terminal.png" width="750">
</p>

### Waveform

<p align="center">
<img src="Images/gatelevel_waveform.png" width="750">
</p>

---

# Waveform Files

The generated VCD files are available in the Waveforms folder.

```
mux4x1_behavioral.vcd

mux4x1_dataflow.vcd

mux4x1_gatelevel.vcd
```

---

# Applications

- Data routing
- Bus switching
- CPU datapath
- Digital communication
- FPGA and ASIC design
- Arithmetic Logic Units (ALUs)

---

# Conclusion

The 4×1 Multiplexer was successfully implemented using Behavioral, Dataflow, and Gate-Level modeling styles in Verilog HDL. The functionality of each model was verified using Verilator simulation and GTKWave waveform analysis. The observed outputs matched the expected truth table for all select-line combinations.
