# Experiment 4 — Power Analysis

## 1. Objective

To analyze the estimated power consumption of an FPGA circuit using the power estimation report generated for the VTR/VPR flow.

## 2. Design Configuration

| Parameter | Reported Value |
|---|---|
| Circuit | `counter` |
| FPGA architecture | `EArch.xml` |
| Technology node | 45 nm |
| Supply voltage | 0.90 V |
| Temperature | 85°C |
| Critical path | 1.46 × 10⁻⁹ s (1.46 ns) |
| FPGA size | 3 × 3 |
| Channel width | 100 |

## 3. Power Summary

The report provides the following total power estimate:

| Parameter | Value |
|---|---:|
| Total estimated power | 0.0003212 W |
| Total estimated power | 0.3212 mW |
| Routing power | 0.0001066 W |
| Clock power | 0.0001317 W |

## 4. Power Breakdown

| Component | Power (W) | Percentage of Total | Percentage of Dynamic |
|---|---:|---:|---:|
| Total | 0.0003212 | 1.0000 | 0.7689 |
| Routing | 0.0001066 | 0.3319 | 0.4223 |
| Switch Box | 9.697 × 10⁻⁵ | 0.3019 | 0.3837 |
| Connection Box | 5.033 × 10⁻⁶ | 0.01567 | 0.6368 |
| Global Wires | 4.617 × 10⁻⁶ | 0.01437 | 1.0000 |
| PB Types | 8.287 × 10⁻⁵ | 0.2580 | 0.8582 |
| Primitives | 6.158 × 10⁻⁵ | 0.1917 | 0.9314 |
| Interconnection Structures | 7.248 × 10⁻⁶ | 0.02256 | 0.6487 |
| Buffers and Wires | 1.404 × 10⁻⁵ | 0.04370 | 0.6451 |
| Other Estimation Methods | 0 | 0 | Not available |
| Clock | 0.0001317 | 0.4101 | 0.9932 |

*Note: The percentage columns are reproduced from the report. The component percentages may not sum to 100% because the categories include nested breakdowns.*

## 5. Warnings

The report lists the following warnings:

- No transistor counter function for BLIF model: `.subckt adder`
- No dynamic power defined for BLIF model: `.subckt adder`
- No leakage power defined for BLIF model: `.subckt adder`

These warnings indicate that the report lacks transistor-count, dynamic-power, and leakage-power definitions for the specified `adder` BLIF model.

Consequently, the estimated power should be interpreted with these model limitations in mind.

## 6. Observations

1. The total estimated power is 0.0003212 W, equivalent to 0.3212 mW.
2. Clock power is reported as 0.0001317 W, representing 41.01% of the total estimate.
3. Routing power is reported as 0.0001066 W, representing 33.19% of the total estimate.
4. Switch-box power is reported as 9.697 × 10⁻⁵ W.
5. The report uses a 45 nm technology setting, a supply voltage of 0.90 V, and a temperature of 85°C.
6. Missing power and transistor-count definitions for the `adder` BLIF model limit the completeness of the estimate.

## 7. Conclusion

The power report estimates a total power consumption of 0.3212 mW for the `counter` circuit using the `EArch.xml` FPGA architecture. Clock and routing components account for substantial portions of the reported estimate.

However, the warnings about missing power definitions for the `adder` BLIF model mean that the estimate should not be treated as a fully characterized physical FPGA power measurement. It is a tool-generated estimate based on the selected architecture, technology settings, and available model information.

