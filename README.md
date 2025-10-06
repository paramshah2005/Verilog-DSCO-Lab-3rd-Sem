# Verilog DSCO Lab - 3rd Sem
This repository contains Verilog programming assignments and lab exercises for the 3rd-semester lab of the DSCO (Digital Systems and Computer Organization) course. The projects demonstrate various aspects of digital system design, from basic combinational logic to sequential circuits like registers and counters.

## Repository Structure

The repository is organized into directories for each lab assignment. Each `LabX` directory contains:
-   **Verilog Source Files (`.v`):** The implementation of the digital logic modules for each problem.
-   **Testbench Files (`_tb.v`):** Verilog testbenches to verify the functionality of the corresponding modules.
-   **`Test_Bench_Codes/`:** This directory contains generic templates for creating testbenches for 3-input and 4-input modules.

## Lab Breakdown

The labs cover a range of fundamental topics in digital logic design:

*   **Lab 1: Introduction to Verilog**
    *   Implementation of simple combinational circuits using basic logic gates (AND, OR, NOT, NAND, NOR, XOR) with gate-level and dataflow modeling.

*   **Lab 2: Logic Simplification**
    *   Implementation of Boolean functions simplified using Karnaugh Maps (K-maps).

*   **Lab 3: Multi-level Synthesis**
    *   Designing circuits using only NAND gates and only NOR gates to create universal logic implementations.

*   **Lab 4: Arithmetic Circuits**
    *   Designing a Half Adder, Full Adder, a 4-bit parallel adder/subtractor, and a 2x2 bit multiplier.

*   **Lab 5: Combinational Logic Components**
    *   Implementation of a 4-bit magnitude comparator and various multiplexers (2-to-1, 4-to-1, 16-to-1).

*   **Lab 6: Decoders and Encoders**
    *   Designing and implementing 2-to-4, 3-to-8, and 4-to-16 decoders, as well as 4-to-2 and 16-to-4 priority encoders.

*   **Lab 7: Sequential Circuits - Flip-Flops**
    *   Designing D, T, and JK flip-flops with asynchronous reset functionality.

*   **Lab 8: Registers and Counters**
    *   Implementation of a 6-bit Serial-In Serial-Out (SISO) shift register, a parallel N-bit register, and a 5-bit Johnson counter.

## How to Simulate

You can use a Verilog simulator like Icarus Verilog to compile and run the testbenches.

### Prerequisites
-   [Icarus Verilog](https://bleyer.org/icarus/)
-   A waveform viewer like [GTKWave](https://gtkwave.sourceforge.net/)

### Compilation and Simulation Steps

1.  Navigate to a specific lab directory, for example, `Lab7`:
    ```bash
    cd Lab7
    ```

2.  Compile the Verilog source file and its corresponding testbench. For example, to test the D flip-flop (`q1.v`):
    ```bash
    iverilog -o q1_tb q1.v q1_tb.v
    ```

3.  Run the compiled simulation executable:
    ```bash
    vvp q1_tb
    ```

4.  This will generate a `q1_tb.vcd` file. You can open this file in a waveform viewer to analyze the signals:
    ```bash
    gtkwave q1_tb.vcd
