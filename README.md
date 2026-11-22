# D Flip-Flop Verification Using SystemVerilog
## Project Overview

This project implements a **layered testbench architecture** to verify the functionality of a positive-edge-triggered D Flip-Flop (DFF) using SystemVerilog.
The testbench follows a modular verification approach, separating stimulus generation, driving, monitoring, and checking into individual components.

## Design Under Test (DUT)

The DUT is a positive-edge-triggered D Flip-Flop.

- **Input:** Clock (`clk`), Data (`d`)
- **Output:** `q`
- **Function:** At every positive edge of the clock, the output `q` captures the input `d`.

## Testbench Architecture

The verification environment consists of the following components:

| Component | Function |
|---|---|
| Transaction | Stores randomized input and output data |
| Generator | Generates randomized stimulus |
| Driver | Applies stimulus to the DUT |
| Monitor | Observes DUT inputs and outputs |
| Scoreboard | Compares expected and actual outputs |
| Interface | Connects the DUT and verification components |
| Environment | Instantiates and coordinates verification components |
| Test | Starts the verification environment |
| Testbench | Top-level module connecting the DUT and test |

## Verification Flow

1. The generator creates randomized transactions.
2. Transactions are passed to the driver using a mailbox.
3. The driver applies input data to the DUT.
4. The D Flip-Flop captures the input at the positive clock edge.
5. The monitor observes the input and output signals.
6. The scoreboard checks whether the output matches the expected value.
7. The simulation reports PASS or FAIL.

## Files Included

- `design.sv` – D Flip-Flop design
- `interface.sv` – DUT interface
- `transaction.sv` – Transaction class
- `generator.sv` – Stimulus generator
- `driver.sv` – DUT driver
- `monitor.sv` – Signal monitor
- `scoreboard.sv` – Output checker
- `env.sv` – Verification environment
- `test.sv` – Test program
- `testbench.sv` – Top-level testbench

## Simulation Results

The testbench was simulated using **Cadence Xcelium**.

The simulation completed successfully, with the scoreboard reporting PASS for the checked transactions.

## Concepts Used

- SystemVerilog classes
- Object-oriented testbench architecture
- Random stimulus generation
- Mailboxes for interprocess communication
- Virtual interfaces
- Fork-join concurrency
- Functional verification
- Scoreboard-based checking

## Conclusion

The project demonstrates a modular SystemVerilog verification environment for a D Flip-Flop, using a layered testbench architecture to generate, apply, monitor, and verify randomized input transactions.
