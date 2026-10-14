# Module 5 – RISC-V on a Custom SOFA Fabric

## Overview

This module focuses on implementing a RISC-V processor on a custom SOFA FPGA fabric and evaluating the implementation through three key areas:

1. Post-implementation waveform analysis
2. Logic utilization analysis
3. Timing analysis

The objective is to examine the processor's observed behavior, analyze the logic resources used by the implementation, and evaluate its timing performance.

## Objectives

- Examine the post-implementation waveform of the RISC-V processor.
- Analyze the implemented logic elements and logic-resource distribution.
- Study netlist statistics, including blocks, nets, fanout, and timing-graph nodes.
- Evaluate setup timing and slack.
- Document the implementation results using waveform and report screenshots.

## Folder Structure

```text
Module-5-RISCV-on-Custom-SOFA-Fabric/
├── README.md
├── post-implementation-waveform/
│   ├── README.md
│   └── waveforms/
│       └── riscv_post_implementation_waveform.png
├── logic-utilization/
│   ├── README.md
│   └── screenshots/
│       ├── riscv_logic_utilization.png
│       └── riscv_netlist_statistics.png
└── timing-analysis/
    ├── README.md
    └── screenshots/
        └── riscv_timing_report.png
```

## Implementation Results Summary

| Parameter | Recorded Result |
|---|---:|
| Total Logic Elements Used | 3494 |
| Logic Elements Used for Logic and Registers | 1749 |
| Logic Elements Used for Logic Only | 1744 |
| Logic Elements Used for Registers Only | 1 |
| Netlist Blocks | 5526 |
| Input Blocks | 2 |
| Latch Blocks | 1807 |
| Output Blocks | 8 |
| 0-LUT Blocks | 4 |
| 4-LUT Blocks | 3705 |
| Nets | 5518 |
| Average Fanout | 3.1 |
| Maximum Fanout | 1807.0 |
| Minimum Fanout | 1.0 |
| Netlist Clocks | 1 |
| Timing Graph Nodes | 22705 |
| Setup Slack | 10.430 ns |

## Analysis Sections

### 1. Post-Implementation Waveform

Examines the captured waveform containing the clock, reset, and eight-bit output bus. The waveform shows a transition in the output from `00` to `2d` during the displayed simulation interval.

[View Post-Implementation Waveform](post-implementation-waveform/README.md)

### 2. Logic Utilization

Documents the reported logic element count and netlist statistics, including LUT blocks, latch blocks, nets, and fanout.

[View Logic Utilization](logic-utilization/README.md)

### 3. Timing Analysis

Documents the reported setup slack and timing information for the displayed path.

[View Timing Analysis](timing-analysis/README.md)

## Conclusion

The captured results provide evidence of the RISC-V implementation's observed waveform behavior, reported logic-resource usage, and setup timing. These measurements help characterize the implementation on the custom SOFA fabric.
