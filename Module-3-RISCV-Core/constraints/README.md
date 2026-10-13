# Constraints — RISC-V Core

## Overview
This directory documents the timing and input/output constraints used for the RISC-V core design in Xilinx Vivado.

## Objective
To define the required design constraints for timing analysis and FPGA implementation.

## Constraint File
- **File:** `design.xdc`
- **Purpose:** Stores timing constraints and pin assignments, where applicable.

## Clock Constraints
The clock constraint specifies the expected clock period for timing analysis.

Example:
```tcl
create_clock -name clk -period 10.000 [get_ports clk]
```

This example specifies a 10 ns clock period, equivalent to a 100 MHz clock. Use it only if it matches the intended design requirements.

## I/O Constraints
For implementation on a physical FPGA board, the XDC file may specify:
- FPGA package pin assignments
- I/O standards
- Other board-specific constraints

These must match the selected FPGA device and board.

## Validation
- Constraint file status: Pending
- Clock constraint: To be verified
- Pin assignments: Not configured / to be verified
- Timing analysis: To be documented after implementation

## Notes
- Do not use arbitrary pin assignments.
- A bitstream may fail to generate if required I/O ports are unconstrained.
- Since no physical FPGA board is available, board-specific pin assignments and hardware validation are not assumed.

## Tools Used
- Xilinx Vivado
- Xilinx Design Constraints (XDC)

## References
- [AMD Vivado Documentation](https://docs.amd.com/)
