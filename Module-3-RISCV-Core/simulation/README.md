# Simulation — RISC-V Core

## Overview
This directory documents the behavioral simulation of the RISC-V core using Verilog HDL and Xilinx Vivado.

## Objective
To verify the basic operation of the RISC-V core through simulation before proceeding to synthesis and implementation.

## Testbench
The testbench will instantiate the `core` module, generate a clock signal, apply reset, and monitor the output.

## Expected Result
The example RISC-V program calculates the sum of integers from 1 to 9.

Expected output: `45` (decimal).

## Simulation Procedure
1. Add the core RTL source and all required dependencies to the Vivado project.
2. Add the testbench as a simulation source.
3. Set the testbench as the simulation top module.
4. Run behavioral simulation.
5. Observe the output signal and waveform.
6. Record whether the expected output is reached.

## Results
- Simulation status: Pending
- Expected output: 45
- Actual output: To be recorded after simulation
- Waveform screenshot: To be added

## Notes
- The testbench belongs in the simulation sources, not the design sources.
- Simulation results must be verified from the actual waveform or simulator output.
- Physical FPGA hardware validation is not covered in this section.

## Tools Used
- Xilinx Vivado
- Verilog HDL

## References
- [RISC-V Core Repository](https://github.com/shivanishah269/risc-v-core)
- [FPGA Design Fabric Architecture Course](https://github.com/ShonTaware/FPGA_Design_Fabric_Architecture)
