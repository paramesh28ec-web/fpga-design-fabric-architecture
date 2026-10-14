# Experiment 2 — VTR CAD Flow

## Objective

To understand the FPGA Computer-Aided Design (CAD) flow using the Verilog-to-Routing (VTR) framework and examine FPGA architecture, placement, routing, timing, and power-analysis results.

## 1. Tools and Configuration

| Parameter | Details |
|---|---|
| CAD framework | Verilog-to-Routing (VTR) |
| Placement and routing tool | Versatile Place and Route (VPR) |
| FPGA architecture | `EArch.xml` |
| Example circuit used for power analysis | `counter` |
| Technology node in power report | 45 nm |
| Supply voltage in power report | 0.90 V |
| Temperature in power report | 85°C |
| Channel width in power report | 100 |

## 2. Procedure

1. Obtain the VTR source code from the official repository.
2. Set up the required Linux environment and dependencies.
3. Identify the circuit input and compatible FPGA architecture configuration.
4. Execute the applicable VTR/VPR flow commands.
5. Inspect the FPGA architecture and placement visualizations.
6. Examine routing connections and generated timing information.
7. Review the power-analysis report and its warnings.
8. Document the generated outputs and observations.

## 3. FPGA Architecture and Placement

The VPR visualizations show the FPGA grid, logic-block regions, clock-related blocks, and I/O blocks around the architecture.

The placement-grid visualization provides a view of the available logic resources and their organization. The floorplan visualization shows the central logic region and surrounding I/O regions.

The routed-layout visualization displays numerous routing connections across the FPGA grid, illustrating the interconnection network between placed resources.

These visualizations provide insight into FPGA architecture and physical mapping. The exact completion status of every CAD-flow stage must be established from the corresponding tool logs.

## 4. Timing Analysis

The supplied timing-report excerpt contains the following values:

| Parameter | Reported Value |
|---|---:|
| Clock | `pclk` (rising edge) |
| Clock period | 10.000 ns |
| Clock source latency | 0.000 ns |
| Clock uncertainty | 0.000 ns |
| Output external delay | 0.000 ns |
| Data required time | 10.000 ns |
| Data arrival time | -1.470 ns |
| Slack | 8.530 ns |
| Timing status | MET |

The analyzed timing requirement is reported as met, with a positive slack of 8.530 ns. This result applies to the path represented by the supplied report excerpt.

## 5. Power Analysis

The power report describes the `counter` circuit using the `EArch.xml` architecture.

| Parameter | Reported Value |
|---|---:|
| Total estimated power | 0.0003212 W (0.3212 mW) |
| Routing power | 0.0001066 W |
| Clock power | 0.0001317 W |
| Critical-path delay | 1.46 ns |
| FPGA size | 3 × 3 |
| Channel width | 100 |

The report uses a 45 nm technology setting, a supply voltage of 0.90 V, and a temperature of 85°C.

It also reports missing transistor-count, dynamic-power, and leakage-power definitions for the `.subckt adder` BLIF model. These warnings limit the completeness of the power estimate.

## 6. Post-Synthesis Simulation

A post-synthesis simulation waveform was captured showing the clock, reset, enable, and four-bit output bus `out[3:0]`.

The waveform displays an output sequence from 0 through 9. It provides evidence of the observed behavior of the synthesized design in simulation.

Post-synthesis simulation is distinct from the VPR placement-and-routing process. The waveform should be treated as simulation evidence for the design it represents, rather than proof of successful completion of the entire VTR flow.

## 7. Observations

- VPR visualizations illustrate the FPGA grid, logic resources, I/O regions, and routing connections.
- The supplied timing report excerpt shows 8.530 ns of positive slack for the analyzed path.
- The power report estimates total power consumption of 0.3212 mW for the `counter` circuit.
- Clock and routing components account for substantial portions of the reported power estimate.
- The power model contains warnings relating to missing definitions for the `adder` BLIF subcircuit.
- The post-synthesis waveform shows the output sequence from 0 through 9.
- Timing, power, and simulation results should be associated with their respective designs and tool runs; they should not automatically be treated as measurements from one identical configuration.

## 8. Limitations

The available screenshots and report excerpts do not establish every stage of the end-to-end VTR flow. In particular, the complete synthesis log, packing results, and full routing and timing reports are not included in the supplied evidence.

The power estimate is subject to the reported model limitations. Simulation and tool visualizations do not, by themselves, establish successful operation on physical FPGA hardware.

## 9. Conclusion

This experiment documents the VTR/VPR workflow through FPGA architecture visualizations, routing views, timing analysis, power estimation, and post-synthesis simulation.

The supplied timing report indicates that its analyzed path meets the reported timing requirement. The power report estimates 0.3212 mW for the `counter` circuit, subject to the stated power-model limitations. The simulation waveform shows an output sequence from 0 to 9.

Together, these results illustrate important aspects of FPGA CAD analysis while keeping each observation tied to the evidence available for that specific tool run.

## References

- [VTR GitHub Repository](https://github.com/verilog-to-routing/vtr-verilog-to-routing)
- [VTR Quickstart Documentation](https://docs.verilogtorouting.org/en/latest/quickstart/)
- [FPGA Design Fabric Architecture Course](https://github.com/ShonTaware/FPGA_Design_Fabric_Architecture)
