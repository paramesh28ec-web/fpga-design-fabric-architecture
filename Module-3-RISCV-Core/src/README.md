# Source Code — RISC-V Core

## Overview
This directory contains the Verilog RTL source code required for the RISC-V core design used in Module 3 of the FPGA Design Fabric Architecture course.

## Source Files

| File | Description |
|---|---|
| `core_merged.v` | Main RISC-V core RTL with the generated implementation inlined. |
| Required header files | Provide macros, definitions, and generated code dependencies required by the RTL. |
| Helper modules | Contain any additional module definitions required for compilation and elaboration. |

## Design Objective
The objective is to understand the RTL structure of the RISC-V core and use it in the Vivado FPGA design flow.

## Tools Used
- Verilog HDL
- Xilinx Vivado

## Notes
- Ensure all required header files and helper modules are available before compiling the design.
- The top-level module is `core`.
- This directory contains design source files, not simulation testbenches.
- Source files will be updated as compilation and simulation issues are resolved.

## References
- [RISC-V Core Repository](https://github.com/shivanishah269/risc-v-core)
- [FPGA Design Fabric Architecture Course](https://github.com/ShonTaware/FPGA_Design_Fabric_Architecture)
