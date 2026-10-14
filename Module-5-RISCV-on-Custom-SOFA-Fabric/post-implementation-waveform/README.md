# RISC-V Post-Implementation Waveform

## Objective

To examine the observed behavior of the RISC-V implementation using the captured waveform.

## Signals Observed

| Signal | Description |
|---|---|
| `clk` | Clock signal |
| `reset` | Reset signal |
| `out[7:0]` | Eight-bit output bus |
| `out[7]` to `out[0]` | Individual bits of the output bus |

## Waveform Observations

The captured waveform displays the clock, reset, and eight-bit output bus over a time range extending to approximately 1,000 ns.

The output bus initially displays `00`. During the displayed interval, it transitions to `2d`.

The hexadecimal value `2d` corresponds to decimal 45.

The output bits shown in the waveform are consistent with the binary representation of `2d`:

`00101101`

This indicates that the output reaches the value 45 during the captured waveform.

## Screenshot

![RISC-V Post-Implementation Waveform](waveforms/riscv_post_implementation_waveform.png)

**Screenshot path:** `post-implementation-waveform/waveforms/riscv_post_implementation_waveform.png`

## Result

The captured waveform shows the eight-bit output transitioning from `00` to `2d` (decimal 45). This documents the observed output behavior during the displayed simulation interval.

The waveform alone does not establish that every processor instruction or every possible execution path has been verified.
