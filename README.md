# Example Timing Files

This repository contains example files for Static Timing Analysis (STA) tools, demonstrating typical inputs required for timing analysis workflows.

## Contents

### Library Files (`examples/lib/`)
- `sky130_fd_sc_hd__tt_100C_1v80.lib` - SkyWater SKY130 standard cell library timing file
  - Process corner: Typical-Typical (tt)
  - Temperature: 100°C
  - Voltage: 1.80V
  - Technology: SKY130 High Density (HD) standard cells

### Netlist Files (`examples/netlist/`)
- `picorv32_axi.nl.v` - Synthesized Verilog netlist for PicoRV32 with AXI interface
  - A complete RISC-V CPU implementation
  - Size: ~1.1 MB (fully synthesized design)

### Constraint Files (`examples/sdc/`)
- `picorv32_axi.nl.sdc` - Synopsys Design Constraints (SDC) file
  - Contains timing constraints for the PicoRV32 design
  - Defines clock specifications, I/O delays, and other timing requirements

## Usage

These files can be used as example inputs for STA tools to:
- Verify timing analysis tool functionality
- Test STA tool implementations
- Learn about timing analysis file formats
- Benchmark timing analysis performance

## Licenses

This repository includes files from multiple open-source projects:

- **SKY130 PDK files** (`examples/lib/`) - Licensed under Apache License 2.0
  - See `LICENSES/SKY130_LICENSE`
  - Copyright 2020 The SkyWater PDK Authors
  - Source: [google/skywater-pdk](https://github.com/google/skywater-pdk)

- **PicoRV32 files** (`examples/netlist/`, `examples/sdc/`) - Licensed under ISC License
  - See `LICENSES/PICORV32_LICENSE`
  - Copyright (C) 2015-2021 Claire Xenia Wolf
  - Source: [YosysHQ/picorv32](https://github.com/YosysHQ/picorv32)

- **This repository** - Licensed under MIT License
  - See `LICENSE`

## Acknowledgments

- SkyWater PDK: Open-source 130nm process design kit
- PicoRV32: Size-optimized RISC-V CPU implementation by Claire Xenia Wolf