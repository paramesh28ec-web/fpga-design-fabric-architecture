# Vivado Results and Analysis

This document summarizes the results obtained from the Vivado implementation of the 4-bit up-counter design.

## 1. Target FPGA

- **Device:** XC7A35T
- **Package:** CPG236
- **Speed grade:** -1

## 2. Timing Analysis

| Parameter | Reported Value |
|---|---:|
| Worst Negative Slack (WNS) | +5.869 ns |
| Total Negative Slack (TNS) | 0.000 ns |
| Worst Hold Slack (WHS) | +0.117 ns |
| Total Hold Slack (THS) | 0.000 ns |
| Setup failing endpoints | 0 |
| Hold failing endpoints | 0 |
| Total timing endpoints | 33 |

The displayed timing summary reports that all user-specified timing constraints are met.

## 3. Resource Utilization

| Resource | Used | Available | Utilization |
|---|---:|---:|---:|
| LUTs | 42 | 20,800 | 0.20% |
| Flip-flops | 37 | 41,600 | 0.09% |
| I/O resources | 7 | 106 | 6.60% |

The design uses a small proportion of the reported FPGA logic resources.

## 4. Power Analysis

| Parameter | Reported Value |
|---|---:|
| Total on-chip power | 0.084 W |
| Dynamic power | 0.012 W |
| Device static power | 0.072 W |
| Clock power | 0.001 W |
| Signal power | Less than 0.001 W |
| Logic power | Less than 0.001 W |
| I/O power | 0.011 W |
| Junction temperature | 25.4°C |
| Thermal margin | 59.6°C |
| Confidence level | Medium |

These are Vivado power estimates, not measurements taken from a physical FPGA board.

## 5. Simulation Observation

The behavioral waveform shows the counter progressing through the displayed values 0, 1, 2, and 3. The main clock, reset, counter output, and slow clock are visible in the waveform.

## 6. Bitstream Generation

The supplied Vivado screenshot records successful bitstream generation for that run. Bitstream generation alone does not establish that the design has been verified on physical hardware.

## 7. VIO IP

The supplied screenshot shows the VIO Generate Output Products dialog and the listed output products. It documents the VIO configuration workflow; completion of output-product generation and live hardware debugging are not established by this screenshot alone.

## 8. Conclusion

The available screenshots document simulation, RTL visualization, timing analysis, resource utilization, power estimation, VIO IP configuration, and bitstream generation for the FPGA design. Physical hardware verification should be documented separately if performed.
