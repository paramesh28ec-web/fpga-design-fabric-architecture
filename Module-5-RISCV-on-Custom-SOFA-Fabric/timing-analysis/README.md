# RISC-V Timing Analysis

## Objective

To evaluate the timing performance of the RISC-V implementation using the captured setup timing report.

## Setup Timing Results

| Parameter | Value |
|---|---:|
| Clock Edge Shown | 200.000 ns |
| Clock Source Latency | 0.000 ns |
| Clock Input Arrival | 200.000 ns |
| Clock-to-Output / Latch Clock Delay | 0.110 ns |
| Clock Uncertainty | 0.000 ns |
| Cell Setup Time | -0.390 ns |
| Data Required Time | 199.720 ns |
| Data Arrival Time | 189.290 ns |
| Setup Slack | 10.430 ns |
| Timing Status | MET |

## Timing Report Interpretation

The captured report includes the clock, source latency, clock input, latch clock, clock uncertainty, cell setup time, data required time, and data arrival time.

The data required time is reported as 199.720 ns, while the data arrival time is reported as 189.290 ns.

The setup slack is calculated as:

`Setup Slack = Data Required Time − Data Arrival Time`

`Setup Slack = 199.720 ns − 189.290 ns`

`Setup Slack = 10.430 ns`

The positive slack indicates that the displayed setup timing check meets its requirement.

## Timing Observations

- The displayed setup slack is positive at 10.430 ns.
- The timing report marks the displayed path as `MET`.
- Clock uncertainty is reported as 0.000 ns.
- The endpoint shown in the report is `CPU_Xreg_value_a4[30][31].clk[0]`, identified as a latch clocked by `clk`.

## Screenshot

![RISC-V Timing Report](screenshots/riscv_timing_report.png)

**Screenshot path:** `timing-analysis/screenshots/riscv_timing_report.png`

## Result

The captured timing report shows a setup slack of **10.430 ns**, with the displayed path marked `MET`.

This conclusion applies to the specific path and constraints represented by the screenshot. It does not independently establish that all timing paths meet their requirements or that the entire design has passed every implementation check.
