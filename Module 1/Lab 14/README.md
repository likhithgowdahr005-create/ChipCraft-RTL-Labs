# Lab 14 – Exploring Reset Types in Digital Design

## Aim

To study and implement different reset mechanisms used in digital systems using Verilog HDL. This experiment demonstrates the behavior of Asynchronous Reset, Synchronous Reset, Global Reset, and Domain-Specific Reset through RTL simulation using Verilator and GTKWave.

---

## Theory

Reset circuits are fundamental components in digital systems. They initialize sequential logic into known states during power-up, recovery, or fault conditions. Different reset strategies are selected depending on system timing, reliability, and architecture requirements.

This lab demonstrates four commonly used reset techniques:

- **Asynchronous Reset**
- **Synchronous Reset**
- **Global Reset**
- **Domain-Specific Reset**

---

## Reset Types

| Reset Type | Clock Dependent | Typical Application |
|------------|-----------------|---------------------|
| Asynchronous Reset | No | External reset, emergency reset |
| Synchronous Reset | Yes | FPGA and ASIC synchronous logic |
| Global Reset | Yes | Complete system initialization |
| Domain-Specific Reset | Yes | Multi-clock SoCs and subsystems |

---

# 1. Asynchronous Reset

## Description

An asynchronous reset immediately forces the flip-flop output to the reset state regardless of the clock.

### Block Diagram

<p align="center">
<img src="Asynchronous_Reset/Images/block_diagram.png" width="700">
</p>

### RTL Files

```
Source_Code/async_reset_ff.v
```

### Testbench

```
Testbench/async_reset_tb.v
```

### Run Simulation

```bash
chmod +x Scripts/run.sh
./Scripts/run.sh
```

### Waveform

<p align="center">
<img src="Asynchronous_Reset/Images/waveform.png" width="900">
</p>

### Observation

- Reset acts immediately.
- Clock edge is not required.
- Output becomes zero instantly.

---

# 2. Synchronous Reset

## Description

A synchronous reset only takes effect on the active edge of the clock.

### Block Diagram

<p align="center">
<img src="Synchronous_Reset/Images/block_diagram.png" width="700">
</p>

### RTL Files

```
Source_Code/sync_reset_ff.v
```

### Testbench

```
Testbench/sync_reset_tb.v
```

### Run Simulation

```bash
chmod +x Scripts/run.sh
./Scripts/run.sh
```

### Waveform

<p align="center">
<img src="Synchronous_Reset/Images/waveform.png" width="900">
</p>

### Observation

- Reset becomes effective only on the rising clock edge.
- Provides predictable timing behavior.
- Commonly used in FPGA and ASIC designs.

---

# 3. Global Reset

## Description

A global reset initializes multiple registers or modules simultaneously using a single reset signal.

### Block Diagram

<p align="center">
<img src="Global_Reset/Images/block_diagram.png" width="700">
</p>

### RTL Files

```
Source_Code/global_reset.v
```

### Testbench

```
Testbench/global_reset_tb.v
```

### Run Simulation

```bash
chmod +x Scripts/run.sh
./Scripts/run.sh
```

### Waveform

<p align="center">
<img src="Global_Reset/Images/waveform.png" width="900">
</p>

### Observation

- Both flip-flops are reset together.
- Useful during system startup.
- Simplifies initialization of complete designs.

---

# 4. Domain-Specific Reset

## Description

Different clock domains use independent reset signals allowing selective reset of subsystems.

### Block Diagram

<p align="center">
<img src="Domain_Specific_Reset/Images/block_diagram.png" width="700">
</p>

### RTL Files

```
Source_Code/domain_reset.v
```

### Testbench

```
Testbench/domain_reset_tb.v
```

### Run Simulation

```bash
chmod +x Scripts/run.sh
./Scripts/run.sh
```

### Waveform

<p align="center">
<img src="Domain_Specific_Reset/Images/waveform.png" width="900">
</p>

### Observation

- Each clock domain has its own reset.
- One subsystem can be reset without affecting the other.
- Widely used in modern SoC architectures.

---

# Applications

- FPGA Design
- ASIC Design
- System-on-Chip (SoC)
- Processor Initialization
- Multi-Clock Digital Systems
- Clock Domain Crossing (CDC)
- Reset Domain Crossing (RDC)

---

# Learning Outcomes

After completing this experiment, you will understand:

- Difference between synchronous and asynchronous reset.
- Importance of global reset during system startup.
- Independent reset control for multiple clock domains.
- Practical implementation of reset circuits in Verilog HDL.
- Verification of reset behavior using Verilator and GTKWave.

---

# Result

The implementation and simulation of four different reset techniques were successfully completed using Verilog HDL. The waveform analysis verified the behavior of asynchronous, synchronous, global, and domain-specific reset circuits. The experiment demonstrates the importance of selecting an appropriate reset strategy to ensure reliable initialization, predictable timing, and robust operation in FPGA, ASIC, and SoC designs.
