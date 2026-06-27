#!/bin/bash
#1: Run Verilator to genrate simulation files
verilator --binary -j 0 -Wall cdc_sync.v cdc_sync_tb.v --top cdc_sync_tb --timing --CFLAGS "-std=c++20" --trace 

#2: Move into the object directory
cd obj_dir || { echo "obj_dir not found"; exit 1; }

#3: Compile the testbench using make 
make -f Vcdc_sync_tb.mk Vcdc_sync_tb || { echo "Compilation failed"; exit 1; }

#4: Run the testbench simulation
./Vcdc_sync_tb ||{ echo "Simulation failed"; exit 1; }

#5: View the waveform using GTKWave 
gtkwave dump.vcd


