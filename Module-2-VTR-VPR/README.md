# Module 2 — FPGA CAD Flow Using VTR and VPR

## 1. Overview
This module focuses on understanding the FPGA Computer-Aided Design (CAD) flow using Verilog-to-Routing (VTR), Versatile Place and Route (VPR), and related FPGA architecture tools.

The objective is to understand how a digital circuit moves from a design description through synthesis, technology mapping, packing, placement, routing, and timing analysis.

## 2. Objectives
- Understand the stages of the FPGA CAD flow.
- Explore VTR and VPR and their roles in FPGA implementation.
- Learn how FPGA architecture is described and configured.
- Execute example designs using the available tools.
- Analyze placement, routing, timing, and resource reports.
- Document the commands, results, and issues encountered during the experiments.

## 3. Tools and Technologies
- **Operating system:** Linux
- **VTR:** Verilog-to-Routing framework
- **VPR:** Versatile Place and Route
- **OpenFPGA:** FPGA architecture exploration and CAD flow framework, where applicable
- **Git:** Source code management
- **Verilog HDL:** Digital design description
- **XML:** FPGA architecture configuration
- **BLIF:** Berkeley Logic Interchange Format

## 4. FPGA CAD Flow
The general FPGA CAD flow consists of the following stages:

1. RTL design input
2. Logic synthesis
3. Technology mapping
4. Packing
5. Placement
6. Routing
7. Timing analysis
8. Results and report analysis

The exact stages and supported inputs depend on the tools and flow configuration used.

## 5. Experiments
The following experiments will be documented as they are completed:

1. VTR environment setup and build verification
2. VPR execution and FPGA placement and routing
3. Running the VTR flow on an example circuit
4. Timing analysis and constraint evaluation
5. Power analysis, if supported by the selected flow
6. Analysis of generated reports and outputs

## 6. Repository Structure
- `setup/` — Installation, dependencies, configuration, and build instructions.
- `experiments/` — Individual experiment procedures and observations.
- `screenshots/` — Screenshots of tool execution and results.
- `results/` — Generated reports, logs, and result summaries.

## 7. Results
Actual execution results, timing values, resource utilization, and other observations will be added after the corresponding experiments are completed.

## 8. Issues and Troubleshooting
Installation problems, build errors, configuration issues, and their resolutions will be documented here or in the relevant experiment files.

## 9. Conclusion
This module aims to develop an understanding of FPGA architecture exploration and the CAD tools used to map, place, route, and analyze digital circuits.

The conclusion will be updated based on the experiments performed and the results obtained.

## 10. References
- [FPGA Design Fabric Architecture Course](https://github.com/ShonTaware/FPGA_Design_Fabric_Architecture)
- [VTR GitHub Repository](https://github.com/verilog-to-routing/vtr-verilog-to-routing)
- [VTR Quickstart Documentation](https://docs.verilogtorouting.org/en/latest/quickstart/)
- [OpenFPGA GitHub Repository](https://github.com/lnis-uofu/OpenFPGA)
