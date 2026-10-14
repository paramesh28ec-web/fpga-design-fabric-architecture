# FPGA Power Analysis

## Objective

To estimate the power consumption of the FPGA circuit and examine the contributions of routing resources, switch boxes, connection boxes, global wires, and programmable-block resources.

## Configuration

| Parameter | Recorded Value |
|---|---|
| Circuit | `up_counter` |
| Architecture | `vpr_arch.xml` |
| Technology | 45 nm |
| Supply Voltage | 0.90 V |
| Temperature | 85°C |
| Critical Path | 1.782 × 10⁻⁸ s (17.82 ns) |
| FPGA Size | 3 × 3 |
| Channel Width | 150 |

## Power Breakdown

| Component | Power (W) | Approximate Power (mW) |
|---|---:|---:|
| Total | 0.0001761 | 0.1761 |
| Routing | 0.0001544 | 0.1544 |
| Switch Box | 9.154 × 10⁻⁶ | 0.009154 |
| Connection Box | 2.834 × 10⁻⁶ | 0.002834 |
| Global Wires | 0.0001424 | 0.1424 |
| PB Types | 4.137 × 10⁻⁶ | 0.004137 |
| Primitives | 3.67 × 10⁻⁶ | 0.00367 |

## Power Analysis Observations

The report identifies routing as the largest reported power category. It also provides separate figures for switch boxes, connection boxes, global wires, programmable-block types, and primitives.

The percentages in the original report should be interpreted according to the report's accounting hierarchy. Nested categories should not be added together indiscriminately.

## Warnings and Limitations

The report contains the following warnings:

- No transistor counter function was available for the BLIF models `frac_lut4`, `carry_follower`, and `scff`.
- Dynamic power was not defined for these BLIF models.
- Leakage power was not defined for these BLIF models.
- The report also notes an attempt to find a transistor with capacitance below the smallest capacitance in the technology file.

These warnings indicate that the result depends on the available architecture and technology models. The reported total should be treated as an estimate rather than a validated measurement of real hardware power.

## Screenshot

Screenshot filename: `power_report.png`

Screenshot location:

`power-analysis/power_report.png`

## Result

The captured power report estimates total power consumption at **0.1761 mW** under the listed configuration.

The estimate indicates that routing contributes substantially to the reported power. The model warnings must be considered when interpreting the result.
