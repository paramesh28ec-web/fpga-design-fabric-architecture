# Functional Simulation

## Objective

To observe the functional behavior of a sequential digital circuit by examining its clock, reset, enable, and output signals in a simulation waveform.

## Signals Observed

| Signal | Description |
|---|---|
| `clk` | Clock signal that controls sequential operation |
| `reset` | Reset signal used to initialize the circuit |
| `enable` | Enables the circuit's counting operation |
| `out[3:0]` | Four-bit output bus displaying the count |

## Waveform Observations

The captured waveform shows the clock toggling continuously. The reset signal is initially asserted and subsequently deasserted. With enable active, the output progresses through successive hexadecimal values.

The displayed output sequence includes:

`0 → 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8 → 9 → a → b → c → d → e`

The waveform provides evidence of sequential output changes under the displayed input conditions.

## Screenshot

Screenshot filename: `counter_simulation_waveform.png`

Screenshot location:

`simulation/waveforms/counter_simulation_waveform.png`

## Result

The waveform shows the progression of the four-bit output during the captured simulation interval.

This observation describes the displayed waveform only and does not independently establish hardware operation or behavior outside the captured interval.
