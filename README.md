# Obstacle Avoidance Robot Using FPGA and VHDL (Nov 2019 - Dec 2019)

An obstacle-avoidance robot car controlled by an FPGA, with the logic written in VHDL. We were asked to build something from scratch using FPGA with VHDL. The project should contain 2 different input sensors and output transducers, a total of 4 items. The idea just came to me to make an obstacle avoidance robot. The project files refer to it as the DSD project.

## Key features

- **Three ultrasonic sensors**, each placed to cover a 120 degrees' view around the robot, to detect obstacles.
- **One laser sensor** as a safety stop: if you put your hands above the robot, it stops immediately.
- **Motor control**: the car was put together with 4 motor drives and one H-bridge.
- **Logic in VHDL**, built as small hardware modules (clock generation, counters, sensor handling, PWM and display decoding).

## Tech stack

- VHDL
- FPGA, with Intel Quartus Prime 18.1 Lite Edition (version recorded in the project's compilation database)

## Repository structure

```
Project/
├── Clk_Generator.vhd        # Clock generator: toggles its output every 25,000,000 input cycles
├── clkdiv.vhd               # Clock divider from the 50 MHz input (clock_50), output = bit 6 of a 24-bit counter
├── counter.vhd              # Generic n-bit counter with enable and active-low reset
├── robot.vhd                # Top-level design (file is empty in this repository)
├── ultrasonic.vhd           # Ultrasonic sensor module (file is empty in this repository)
├── three_ultrasonic.vhd     # Three-sensor module (file is empty in this repository)
├── trigger_generator.vhd    # Ultrasonic trigger generator (file is empty in this repository)
├── lazer.vhd                # Laser sensor module (file is empty in this repository)
├── pwm.vhd                  # PWM module (file is empty in this repository)
├── seven_seg_dec.vhd        # Seven-segment decoder (file is empty in this repository)
├── robot.qpf, robot.qsf     # Quartus project and settings files (empty in this repository)
├── robot.qws                # Quartus workspace file
├── incremental_db/          # Quartus incremental compilation data
└── dsd project report.pdf   # Project report (file is empty in this repository)
```

Several source files, the Quartus project files and the report were committed as empty (0-byte) files, so this repository holds the module outline and three complete helper modules (`Clk_Generator.vhd`, `clkdiv.vhd`, `counter.vhd`), not the full top-level design.

## How to build

Requires Intel Quartus Prime (the project was created with 18.1 Lite Edition) and an FPGA board.

- The full robot design cannot be rebuilt from this repository, because the top-level design and the project files are empty.
- The three complete modules can be added to a new Quartus project and compiled or simulated on their own.

## Author

Abdelrahman Abdelrahman — https://abdelrahman.eu
