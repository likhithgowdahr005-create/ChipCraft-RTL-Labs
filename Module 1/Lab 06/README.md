# Lab 06 – 4-Bit Down Counter

## Aim

To design, simulate, and verify a 4-bit Down Counter using Verilog HDL with Verilator and visualize the waveform using GTKWave.

---

# Theory

A 4-bit Down Counter is a sequential digital circuit that decrements its count value by one on every positive edge of the clock signal.

The counter counts from **1111 (decimal 15)** down to **0000 (decimal 0)** and then wraps back to **1111**, continuously repeating the counting sequence.

An asynchronous reset initializes the counter to **1111** immediately when asserted.

---

# Block Diagram

<p align="center">
<img src="./Images/block_diagram.png" width="700">
</p>

---

# Truth Table

<p align="center">
<img src="./Images/truth_table.png" width="700">
</p>

---

# Project Structure

```text
Lab 06
│
├── Images
│   ├── block_diagram.png
│   ├── truth_table.png
│   ├── terminal_output.png
│   └── waveform.png
│
├── Source_Code
│   └── down_counter_4bit.v
│
├── Testbench
│   └── down_counter_4bit_tb.v
│
├── Waveforms
│   └── down_counter_4bit.vcd
│
└── README.md
```

---

# RTL Design

The Verilog design file is available in:

```text
Source_Code/down_counter_4bit.v
```

The module implements a 4-bit Down Counter using an asynchronous reset.

- When **Reset = 1**, the counter is initialized to **1111**.
- When **Reset = 0**, the counter decrements by one at every positive edge of the clock.
- After reaching **0000**, the counter wraps back to **1111**.

---

# Testbench

The testbench is available in:

```text
Testbench/down_counter_4bit_tb.v
```

The testbench performs the following operations:

- Generates a clock signal.
- Applies an asynchronous reset.
- Verifies the countdown sequence from **1111** to **0000**.
- Generates a VCD waveform for GTKWave.

---

# Simulation

The project was simulated using **Verilator**.

Compile the design:

```bash
verilator --binary -j 0 -Wall down_counter_4bit.v down_counter_4bit_tb.v \
--top down_counter_tb --timing --CFLAGS "-std=c++20" --trace
```

Run the simulation:

```bash
./obj_dir/Vdown_counter_tb
```

---

# Terminal Output

<p align="center">
<img src="./Images/terminal_output.png" width="850">
</p>

The simulation output confirms that:

- Reset initializes the counter to **1111**.
- The counter decrements sequentially on every clock edge.
- After reaching **0000**, the counter wraps back to **1111**, confirming correct down-counting behavior.

---

# Waveform Generation

The waveform is generated using the following Verilog system tasks:

```verilog
$dumpfile("down_counter_4bit.vcd");
$dumpvars();
```

Open the waveform using GTKWave:

```bash
gtkwave down_counter_4bit.vcd
```

---

# Waveform Output

<p align="center">
<img src="./Images/waveform.png" width="850">
</p>

The GTKWave timing diagram verifies the correct functionality of the 4-bit Down Counter.

The waveform shows:

- Clock generation.
- Asynchronous reset operation.
- Counter decrementing from **1111** to **0000**.
- Automatic rollover back to **1111**.

---

# Generated Waveform File

The waveform generated during simulation is available in:

```text
Waveforms/down_counter_4bit.vcd
```

This VCD file can be opened using GTKWave for waveform analysis.

---

# Applications

- Digital Countdown Timers
- Reverse Sequence Generators
- Event Counters
- Frequency Dividers
- Traffic Signal Controllers
- Embedded Systems
- FPGA Design
- ASIC Design

---

# Result

The 4-bit Down Counter was successfully designed in Verilog HDL, simulated using Verilator, and verified using GTKWave. The counter correctly decremented from **1111** to **0000**, wrapped back to **1111**, and responded properly to the asynchronous reset signal, confirming the expected functionality of the design.
