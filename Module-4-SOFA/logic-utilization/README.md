# FPGA Logic Utilization and Netlist Statistics

## Objective

To inspect the generated logic netlist and document its block counts, net connectivity, fanout, and timing-graph size.

## Netlist Statistics

| Parameter | Value |
|---|---:|
| Total Blocks | 17 |
| Input Blocks | 3 |
| Latch Blocks | 4 |
| Output Blocks | 4 |
| 4-LUT Blocks | 6 |
| Nets | 13 |
| Average Fanout | 2.4 |
| Maximum Fanout | 4.0 |
| Minimum Fanout | 1.0 |
| Netlist Clocks | 1 |
| Timing Graph Nodes | 44 |
| Timing Graph Edges | 58 |

## Interpretation

- **Input Blocks (3):** Three input blocks are reported in the netlist.
- **Latch Blocks (4):** Four latch blocks are reported.
- **Output Blocks (4):** Four output blocks are reported.
- **4-LUT Blocks (6):** Six four-input lookup-table blocks are reported.
- **Nets (13):** Thirteen nets connect the reported logic blocks.
- **Fanout:** Average fanout is 2.4, with a maximum of 4.0 and a minimum of 1.0.
- **Timing Graph:** The graph contains 44 nodes and 58 edges, representing timing points and their connections.

## Logic Utilization Observations

The captured statistics show a netlist containing 17 blocks, including six 4-LUT blocks, four latch blocks, three input blocks, and four output blocks.

These values describe the reported netlist structure. They are not a confirmed percentage of FPGA device utilization because the available resource totals of the target FPGA device are not included in the screenshot.

## Screenshot

Screenshot filename: `logic_utilization_statistics.png`

Screenshot location:

`logic-utilization/logic_utilization_statistics.png`

## Result

The netlist statistics provide an overview of the circuit's logic composition, connectivity, fanout, and timing-graph complexity. A device utilization percentage would require the target device's total available resources and a compatible utilization report.
