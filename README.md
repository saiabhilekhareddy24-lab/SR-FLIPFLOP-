SR Flip-Flop using Verilog HDL
Description

An SR (Set-Reset) Flip-Flop is a sequential logic circuit used to store one bit of information. It has two inputs, S (Set) and R (Reset), and its output changes according to the input combination and clock signal.

Features
Designed using Verilog HDL
Positive-edge triggered
Supports Set, Reset, and Hold operations
Includes a testbench for functional verification
Simulation results are provided in HTML format
Truth Table
S	R	Q(next)	Operation
0	0	Q	Hold
0	1	0	Reset
1	0	1	Set
1	1	Invalid	Forbidden

Note: The condition S = 1 and R = 1 is considered an invalid/forbidden state for a standard SR flip-flop.

Project Files
SR-Flip-Flop/
│
├── sr_flipflop.v
├── sr_flipflop_tb.v
├── simulation_output.html
└── README.md

Working
S = 0, R = 0: The previous output state is retained.
S = 1, R = 0: The output Q is set to 1.
S = 0, R = 1: The output Q is reset to 0.
S = 1, R = 1: The condition is forbidden and is not used in normal operation.
Tools Used
Verilog HDL
Icarus Verilog / ModelSim / Vivado
GTKWave (optional)
Simulation

The testbench verifies the Hold, Set, and Reset operations of the SR Flip-Flop.

The simulation results are displayed in:

simulation_output.html

Author

SR Flip-Flop Digital Electronics Project
