# VHDL Counter with Overflow Handling

This repository demonstrates a potential overflow issue in a simple VHDL counter and provides a solution. The original code uses an integer type and resets the counter to 0 when it reaches its maximum value. This might not be desirable in every situation.  The improved version provides more robust overflow handling.

## Original Code (buggy_counter.vhdl):
The original code exhibits a potential issue where the counter simply wraps around to zero. This may not be the desired behavior in all applications.

## Improved Code (fixed_counter.vhdl):
The improved code addresses the potential overflow issue by providing alternative methods such as saturating at the maximum value, or generating an error signal.

## How to Use
Compile and simulate both VHDL files using your preferred VHDL simulator (e.g., ModelSim, GHDL). Observe the counter's behavior under different conditions to understand the potential issue and its resolution.