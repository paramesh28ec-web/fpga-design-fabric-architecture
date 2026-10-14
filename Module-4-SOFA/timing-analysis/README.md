# FPGA Timing Analysis

## Objective

To analyze the critical signal path and determine whether the captured setup-time requirement is satisfied.

## Netlist and Timing-Graph Statistics

| Parameter | Value |
|---|---:|
| Timing Graph Nodes | 44 |
| Timing Graph Edges | 58 |
| Netlist Clocks | 1 |
| Average Fanout | 2.4 |
| Maximum Fanout | 4.0 |
| Minimum Fanout | 1.0 |

## Setup Timing Report

The captured report describes a setup path that starts at `out[1].Q[0]`, a latch output clocked by `clk`, and ends at `out[3].D[0]`, a latch data input clocked by the same clock.

| Parameter | Value |
|---|---:|
| Clock Period | 20.000 ns |
| Data Arrival Time | 17.860 ns |
| Data Required Time | 19.720 ns |
| Setup Slack | 1.860 ns |
| Timing Status | MET |

## Interpretation

- **Data Arrival Time:** The reported time at which data reaches the endpoint.
- **Data Required Time:** The latest permitted arrival time for the setup check.
- **Setup Slack:** The difference between the required time and the arrival time.

For the displayed path:

`Setup Slack = 19.720 ns − 17.860 ns = 1.860 ns`

The positive slack indicates that this specific setup path meets the timing requirement in the captured report.

## Critical Path Details

The report includes clock-to-output delay, intermediate netlist path delays, and endpoint setup time. The displayed path includes intermediate net names such as `$abc$181$new_n16_` and `n28`.

The interpretation of these intermediate names depends on the synthesis and timing tools that generated the report.

## Screenshot

Screenshot filename: `timing_setup_report.png`

Screenshot location:

`timing-analysis/timing_setup_report.png`

## Result

The displayed setup path has **1.860 ns positive slack** and is marked `MET`.

This conclusion applies to the shown path and report conditions. It does not independently prove that every path or every implementation constraint in the complete design passes timing.
