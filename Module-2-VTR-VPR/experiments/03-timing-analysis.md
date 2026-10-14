# Experiment 3 — Timing Analysis

## Objective

To understand how timing constraints and critical-path analysis are used to evaluate a circuit mapped to an FPGA architecture.

## Procedure

1. Identify the timing constraints used in the design.
2. Run the relevant timing analysis.
3. Examine the generated timing report.
4. Record the clock parameters, data required time, data arrival time, and slack.
5. Determine whether the reported timing requirement is met.

## Results

| Parameter | Observed Value |
|---|---:|
| Clock name | `pclk` |
| Clock edge | Rising edge |
| Clock period | 10.000 ns |
| Clock source latency | 0.000 ns |
| Clock uncertainty | 0.000 ns |
| Output external delay | 0.000 ns |
| Data required time | 10.000 ns |
| Data arrival time | -1.470 ns |
| Slack | 8.530 ns |
| Timing status | MET |

### Timing Target

The reported clock period is 10 ns, corresponding to a nominal clock frequency of 100 MHz.

### Timing Slack

The report indicates a slack of 8.530 ns and marks the analyzed timing requirement as `MET`.

## Observations

- The timing report specifies a rising-edge clock named `pclk`.
- The clock period is 10 ns.
- The clock source latency, clock uncertainty, and output external delay are each reported as 0 ns.
- The data required time is reported as 10.000 ns.
- The data arrival time is reported as -1.470 ns.
- The reported slack is positive at 8.530 ns, indicating that the analyzed timing requirement is satisfied.

## Conclusion

The timing report shows that the analyzed path meets its timing requirement with a reported slack of 8.530 ns. This result applies to the path and conditions covered by the report; it does not, by itself, establish that every timing path in the complete design meets timing.
