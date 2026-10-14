# Module 4 – FPGA Design Analysis

## Overview

This module focuses on analyzing FPGA designs through four important areas:

1. **Functional Simulation** – Verifying circuit behavior using waveforms.
2. **Power Analysis** – Estimating the power consumed by the FPGA design.
3. **Timing Analysis** – Evaluating signal propagation delays and setup timing.
4. **Logic Utilization** – Examining the logic resources and connectivity of the design.

The analysis uses simulation waveforms, timing reports, netlist statistics, and power estimation reports to understand the behavior and implementation characteristics of an FPGA circuit.

## Objectives

- Verify the functional behavior of a sequential digital circuit.
- Understand clock, reset, enable, and output signals in a simulation waveform.
- Examine critical-path delay and setup-time slack.
- Estimate total power consumption and analyze its components.
- Understand netlist statistics, logic blocks, fanout, and timing-graph complexity.
- Document FPGA analysis results using screenshots and report data.

## Folder Structure

```text
Module-4-FPGA-Analysis/
├── README.md
├── simulation/
│   ├── README.md
│   └── waveforms/
├── power-analysis/
│   └── README.md
├── timing-analysis/
│   └── README.md
└── logic-utilization/
    └── README.md
```

## Analysis Summary

| Analysis | Recorded result |
|---|---|
| Simulation | Output counter progresses from hexadecimal `0` through `e` in the displayed waveform |
| Timing analysis | Setup slack: 1.860 ns (MET) |
| Critical path in power report | 1.782 × 10⁻⁸ s (17.82 ns) |
| Total estimated power | 0.0001761 W (0.1761 mW) |
| Netlist blocks | 17 |
| 4-LUT blocks | 6 |
| Nets | 13 |
| Netlist clocks | 1 |

> **Note:** These values are taken from the available screenshots. The timing report, power report, netlist statistics, and waveform are documented as separate pieces of evidence; they should not be assumed to come from the exact same implementation run unless independently verified.

## Sections

- [Simulation](simulation/README.md)
- [Power Analysis](power-analysis/README.md)
- [Timing Analysis](timing-analysis/README.md)
- [Logic Utilization](logic-utilization/README.md)

## Conclusion

The analysis demonstrates how simulation, power estimation, timing analysis, and netlist statistics can be used to evaluate an FPGA design. Together, these reports provide insight into functional behavior, estimated power consumption, timing performance, and logic structure.
