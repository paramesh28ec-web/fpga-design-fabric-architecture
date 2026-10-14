# Experiment 1 — VPR Placement and Routing

## 1. Objective

To understand how the Versatile Place and Route (VPR) tool represents an FPGA architecture and performs circuit packing, placement, routing, and timing analysis.

## 2. Tools and Configuration

| Parameter | Details |
|---|---|
| FPGA CAD framework | Verilog-to-Routing (VTR) |
| Placement and routing tool | VPR |
| Architecture file | `EArch.xml` |
| Example circuit in the supplied power report | `counter` |
| Technology setting in the power report | 45 nm |
| Supply voltage in the power report | 0.90 V |
| Channel width in the power report | 100 |

## 3. Requirements

- VTR/VPR installed in the Linux environment.
- FPGA architecture XML file describing the target architecture.
- Compatible circuit input, such as a technology-mapped BLIF file.
- Required circuit and configuration files.

## 4. Procedure

1. Select a circuit and a compatible FPGA architecture.
2. Identify the circuit input and architecture configuration files.
3. Execute VPR using the appropriate command for the selected example.
4. Examine the FPGA architecture and placement-grid visualization.
5. Inspect the floorplan and routing visualizations.
6. Review the available timing and power reports.
7. Record observations from the generated outputs.

## 5. FPGA Architecture and Placement

The supplied VPR visualizations show the organization of the FPGA grid, including logic-block regions, I/O blocks around the perimeter, and clock-related blocks.

The placement-grid image illustrates the arrangement of logic resources within the architecture. The floorplan view shows the central logic region and surrounding I/O regions.

These views help illustrate how an FPGA architecture organizes its available resources before and during circuit mapping.

## 6. Routing Visualization

The supplied routed-layout image displays numerous horizontal and vertical routing connections across the FPGA grid.

The visualization illustrates the interconnection network between resources and helps demonstrate the routing complexity associated with mapping a digital circuit to an FPGA architecture.

The image is included as routing visualization evidence; the full VPR log is needed to establish the precise completion status of the routing stage.

## 7. Timing Results

The supplied timing-report excerpt contains the following values:

| Parameter | Reported Value |
|---|---:|
| Clock | `pclk` (rising edge) |
| Clock period | 10.000 ns |
| Data required time | 10.000 ns |
| Data arrival time | -1.470 ns |
| Slack | 8.530 ns |
| Timing status | MET |

The report indicates that the analyzed timing requirement is met, with a positive slack of 8.530 ns. This result applies to the specific timing path represented by the report excerpt.

## 8. Power Analysis Reference

The supplied power report identifies the circuit as `counter` and the architecture as `EArch.xml`.

| Parameter | Reported Value |
|---|---:|
| Total estimated power | 0.3212 mW |
| Routing power | 0.1066 mW |
| Clock power | 0.1317 mW |
| Critical-path delay | 1.46 ns |
| FPGA size | 3 × 3 |
| Channel width | 100 |

The report also contains warnings about missing transistor-count, dynamic-power, and leakage-power definitions for the `.subckt adder` BLIF model. These limitations should be considered when interpreting the estimated power.

## 9. Observations

- VPR visualizations illustrate the FPGA grid, logic resources, I/O regions, and routing connections.
- The routed-layout view provides a visual representation of the interconnection network.
- The supplied timing report indicates 8.530 ns of positive slack for the analyzed path.
- The power report estimates total consumption of 0.3212 mW for the `counter` circuit.
- The power report identifies limitations in the available model for the `adder` BLIF subcircuit.
- The screenshots and report excerpts do not independently establish the completion of every stage of the VPR flow.

## 10. Conclusion

This experiment documents FPGA architecture exploration and VPR placement-and-routing visualization using the supplied tool outputs.

The architecture and routing views illustrate the organization of logic resources, I/O blocks, and interconnections. The supplied timing report indicates that its analyzed path meets the reported timing requirement, while the power report provides an estimate of 0.3212 mW for the `counter` circuit, subject to the stated model limitations.

The results demonstrate the types of information that can be obtained from FPGA CAD tools. The timing and power results are reported separately because the available evidence does not establish that they were generated from the same design run.

