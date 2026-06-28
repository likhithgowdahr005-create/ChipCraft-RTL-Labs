#!/bin/bash
#1: Run Verilator to genrate simulation files
verilator --binary -j 0 -Wall async_reset_ff.v async_reset_tb.v --top async_reset_tb --timing --CFLAGS "-std=c++20" --trace

#2: Move into the object directory
cd obj_dir || { echo "obj_dir not found", exit 1; }

#3: Compile the testbench using make
make -f Vasync_reset_tb.mk Vasync_reset_tb || { echo "Compilation failed"; exit 1; }

#4: Run the testbench simulation
./Vasync_reset_tb || { echo "Simulation failed"; exit 1; }

#5: View the waveform using GTKWave
gtkwave async_reset.vcd

