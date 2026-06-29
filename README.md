# codec__technologies_-project
this is repository of all the projects i done from codec technologies internship
# 4-Bit RISC Processor Design and Simulation

## Overview

This project implements a custom 4-bit RISC Processor using Verilog HDL. The processor is designed with a simple instruction set architecture (ISA) and includes fundamental CPU components such as an Arithmetic Logic Unit (ALU), Register File, Control Unit, Program Counter, Instruction Memory, Data Memory, and a basic two-stage pipeline.

The objective of this project is to demonstrate processor architecture concepts including instruction fetch, decode, execution, memory access, register operations, and waveform-based verification.

---

## Features

- 4-bit datapath architecture
- Custom 8-bit instruction format
- Arithmetic and logic operations
- Register File with 4 general-purpose registers
- Instruction Memory
- Data Memory
- Program Counter (PC)
- Control Unit
- Two-stage pipeline implementation
- Zero Flag generation
- Carry Flag generation
- Verilog RTL implementation
- Simulation and waveform verification

---

## Processor Architecture

### Main Components

1. Program Counter (PC)
2. Instruction Memory
3. Pipeline Register
4. Control Unit
5. Register File
6. Arithmetic Logic Unit (ALU)
7. Data Memory
8. 
## Instruction Format

Each instruction is 8 bits wide.

```text
+-----------+-----------+
| Opcode    | Operands  |
| [7:4]     | [3:0]     |
+-----------+-----------+
```

---

## Instruction Set

| Opcode | Instruction | Description |
|----------|------------|-------------|
| 0000 | NOP | No Operation |
| 0001 | ADD | Addition |
| 0010 | SUB | Subtraction |
| 0011 | AND | Bitwise AND |
| 0100 | OR | Bitwise OR |
| 0101 | XOR | Bitwise XOR |
| 0110 | LOAD | Load from memory |
| 0111 | STORE | Store to memory |
| 1000 | LOADI | Load Immediate |
| 1001 | JUMP | Unconditional Jump |
| 1010 | BZ | Branch if Zero |
| 1111 | HALT | Stop Execution |

---

## Register File

The processor contains four 4-bit general-purpose registers.

| Register |
|----------|
| R0 |
| R1 |
| R2 |
| R3 |

---

## ALU Operations

| ALU Operation | Function |
|--------------|----------|
| ADD | A + B |
| SUB | A - B |
| AND | A & B |
| OR | A \| B |
| XOR | A ^ B |

---

## Project Structure

```text
4bit-risc-processor/
│
├── alu.v
├── control_unit.v
├── cpu_top.v
├── cpu_tb.v
├── data_memory.v
├── instruction_memory.v
├── pipeline_register.v
├── program_counter.v
├── register_file.v
│
└── README.md
```

---

## Module Description

### alu.v

Performs arithmetic and logical operations.

Outputs:
- Result
- Zero Flag
- Carry Flag

---

### register_file.v

Stores processor registers.

Features:
- Two read ports
- One write port

---

### program_counter.v

Maintains address of the next instruction.

Functions:
- Increment PC
- Jump operation
- Reset support

---

### instruction_memory.v

Stores program instructions.

Features:
- 16 memory locations
- 8-bit instruction width

---

### data_memory.v

Stores runtime data.

Features:
- Read operation
- Write operation

---

### control_unit.v

Decodes instructions and generates control signals.

Control Signals:
- RegWrite
- MemRead
- MemWrite
- Jump
- ALU Operation Select

---

### pipeline_register.v

Implements a simple pipeline stage between instruction fetch and execution.

---

### cpu_top.v

Top-level module integrating all processor components.

Responsible for:
- Fetch stage
- Decode stage
- Execute stage
- Memory access
- Write back

---

### cpu_tb.v

Testbench for processor simulation.

Functions:
- Clock generation
- Reset generation
- Simulation control

---


## Simulation

### Tools Used

- Vivado
- ModelSim
- GTKWave

### Steps

1. Create a new Verilog project.
2. Add all source files.
3. Add cpu_tb.v as simulation source.
4. Run simulation.
5. Observe waveforms.
6. Verify:
   - Program Counter updates
   - Instruction fetch
   - Register updates
   - ALU outputs
   - Memory operations

---

## Verification Parameters

The following signals should be monitored:

- clk
- rst
- pc
- instruction
- opcode
- read_data1
- read_data2
- alu_result
- zero
- carry
- memory_data

---

## Future Enhancements

- Full pipelined architecture
- Hazard detection unit
- Forwarding unit
- Stack implementation
- Interrupt handling
- UART communication
- FPGA deployment
- Branch prediction

---

## Applications

- Digital Design Education
- Computer Architecture Learning
- Verilog HDL Practice
- FPGA Prototyping
- Processor Design Research

---

## Learning Outcomes

Through this project, the following concepts are explored:

- Processor Architecture
- Instruction Set Design
- Verilog HDL Coding
- RTL Design
- Digital Logic Design
- Memory Organization
- Pipeline Concepts
- CPU Verification Techniques

---


