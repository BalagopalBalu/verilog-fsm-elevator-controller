# FSM-Based Elevator Controller using Verilog HDL

## 📌 Project Overview

This project implements a Finite State Machine (FSM)-based Elevator Controller using Verilog HDL.

The controller compares the requested floor with the current floor and controls the elevator movement accordingly.

This project was developed as part of my **Skillentrix Internship**.

## 🎯 Objectives

- Design an FSM-based elevator controller
- Implement the controller using Verilog HDL
- Develop a testbench for functional verification
- Simulate the design and analyze the waveform
- Generate the RTL schematic using Vivado

## ⚙️ FSM States

The controller consists of four states:

- IDLE
- MOVE_UP
- MOVE_DOWN
- OPEN_DOOR

## 🔧 Technologies Used

- Verilog HDL
- ModelSim
- Xilinx Vivado
- RTL Design
- Finite State Machine (FSM)

## 📂 Project Files

| File | Description |
|---|---|
| `elevator_controller.v` | Main Verilog HDL code implementing the FSM-based elevator controller |
| `tb_elevator_controller.v` | Verilog testbench used to verify the elevator controller |
| `modelsim_commands.txt` | Commands used for compiling and simulating the design in ModelSim |
| `reference_waveform.jpg` | Reference simulation waveform showing the expected elevator controller behavior |
| `conceptual_rtl_architecture.jpg` | Conceptual RTL architecture of the elevator controller |
| `VLSI Project Report VLSI PROJECT DETAILS  (Elevator_Controller_Project_Report).pdf` | Complete project report containing the project description, objectives, FSM description, Verilog code, testbench, simulation commands, applications and conclusion |
| `README.md` | Project overview, design details, verification information and documentation |

## 🧪 Verification

The testbench generates a 10 ns clock and tests different floor requests including floors 3, 1, 0 and 4.

## 📊 Simulation Waveform

[View Simulation Waveform](./reference_waveform.jpg)

## 🖥️ RTL Schematic

[View RTL Architecture](./conceptual_rtl_architecture.jpg)

## 🎓 Internship

**Skillentrix_Intern**

Project: FSM-Based Elevator Controller using Verilog HDL

## 👨‍💻 Author

Balagopal M S
