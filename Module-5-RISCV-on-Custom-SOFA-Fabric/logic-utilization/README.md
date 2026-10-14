# RISC-V Logic Utilization Analysis

## Objective

To analyze the logic resources reported for the RISC-V implementation and examine the generated netlist statistics.

## Logic Element Utilization

| Parameter | Value |
|---|---:|
| Total Logic Elements Used | 3494 |
| LEs Used for Logic and Registers | 1749 |
| LEs Used for Logic Only | 1744 |
| LEs Used for Registers Only | 1 |

## Netlist Statistics

| Parameter | Value |
|---|---:|
| Total Blocks | 5526 |
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

## Analysis

### Logic Elements

The logic element report shows 3494 total logic elements used. Of these, 1749 are reported under logic and registers, 1744 under logic only, and 1 under registers only.

### Netlist Structure

The netlist statistics report 5526 blocks, including 2 input blocks, 1807 latch blocks, 8 output blocks, 4 zero-input LUT blocks, and 3705 four-input LUT blocks.

The netlist contains 5518 nets and one reported clock.

### Fanout

The report lists an average fanout of 3.1, a maximum fanout of 1807.0, and a minimum fanout of 1.0.

The maximum fanout is unusually high compared with the average and should be interpreted according to the netlist tool's fanout reporting convention.

### Timing Graph

The reported timing graph contains 22705 nodes. This represents the timing graph size reported by the tool, not a direct measure of FPGA resource utilization.

## Screenshots

### Logic Element Count

![RISC-V Logic Element Utilization](screenshots/riscv_logic_utilization.png)

### Netlist Statistics

![RISC-V Netlist Statistics](screenshots/riscv_netlist_statistics.png)

## Result

The reports document 3494 logic elements used and provide detailed netlist statistics for the RISC-V implementation.

A percentage of total device utilization is not included because the screenshots do not provide the total available capacity of the target device.
