# Basic 16-bit Pipelined CPU

A 16-bit, Harvard-architecture, pipelined CPU designed in **VHDL** and **Quartus block diagrams (schematics)** and demonstrated on the **Terasic DE10-Lite** FPGA (Intel MAX 10). It adds a MIPS-inspired fixed-width ISA, 32-bit instructions with 16-bit immediates, a pipeline with data forwarding, and zero-bubble jumps and branches resolved in the Decode stage.

---

> ## Opening the project in Quartus
> When opening the project file, **toggle off `View → Parameter Assignments`** in the schematic/block diagram editor. Leaving it on clutters the block diagrams and makes the design hard to read.

---

## Table of Contents

- [Features](#features)
- [Architecture Overview](#architecture-overview)
- [Instruction Set Architecture](#instruction-set-architecture)
- [Pipeline](#pipeline)
- [Hazard Handling](#hazard-handling)
- [Components](#components)
- [On-Board I/O and Debugging](#on-board-io-and-debugging)
- [Testing and Verification](#testing-and-verification)
- [Assembler and Example Programs](#assembler-and-example-programs)
- [Known Issues and Limitations](#known-issues-and-limitations)
- [Future Work](#future-work)
- [Authors](#authors)
- [References](#references)

---

## Features

- 16-bit data path, 8 general-purpose 16-bit registers (R0–R7)
- Harvard architecture: separate instruction ROM and data RAM, no shared bus
- Fixed 4-bit opcode, 16 opcodes, mix of **16-bit and 32-bit** instructions
- Pipelined execution with **forwarding** (register and memory hazards)
- **Zero-bubble** `JMP`, `JAL`, `JR` and conditional branches (resolved in Decode)
- Hardware return-address **stack** for subroutine calls (`JAL` / `JR`)
- Signed and unsigned compare/branch via `CMP` and a 4-flag latch (N, Z, C, V)
- Barrel-style shifter: `SLL`, `SRL`, `SRA`, `ROL` (0–15 places)
- Switch input and four-digit seven-segment output
- Built-in on-board debugging: LED status indicators, selectable seven-segment debug views, 50 MHz / slow-clock switching
- Custom Java assembler and self-checking assembly test programs

## Architecture Overview

| Structure | Address bits | Size | Width | Notes |
|---|---|---|---|---|
| Instruction memory (ROM) | 9 | 512 | 16 | Word-addressable, read-only at run time |
| Registers | 3 | 8 | 16 | 2 combinational read ports, 1 write port |
| Data memory (RAM) | 9 | 512 | 16 | Word-addressable |
| Switches | – | 1 | 10 | Input device |
| Seven-segment display | – | 1 | 16 | Output device (4 hex digits) |

The ROM outputs **two consecutive words per fetch** (`PC` and `PC+1`), so a 32-bit instruction's immediate is always available in the same cycle as its opcode word.

## Instruction Set Architecture

### Opcodes

| Opcode | Mnemonic | Format | Bits | Description |
|---|---|---|---|---|
| `0000` | NOP | – | 16 | No operation |
| `0001` | ALU | R | 16 | Arithmetic/logic, register operands |
| `0010` | ALUI | R-I | 32 | Arithmetic/logic, 16-bit immediate |
| `0011` | LW | I | 16 | Load word from memory |
| `0100` | SW | I | 16 | Store word to memory |
| `0101` | LDI | LI | 32 | Load 16-bit immediate into register |
| `0110` | – | – | – | Unused |
| `0111` | BR | BR | 16 | Conditional branch |
| `1000` | JMP | J | 16 | Unconditional jump |
| `1001` | JAL | J | 16 | Jump and link (push return address) |
| `1010` | JR | – | 16 | Jump register (pop return address) |
| `1011` | SHIFT | R-S | 16 | Shift / rotate |
| `1100` | ALU2 | R | 16 | Second ALU function set (incl. `CMP`) |
| `1101` | ALU2I | R-I | 32 | ALU2 with 16-bit immediate |
| `1110` | IO | R | 16 | Switch input / seven-segment output |
| `1111` | HALT | – | 16 | Halts the CPU until reset |

### Instruction formats

```
R   : [15..12] op | [11..9] rd | [8..6] rs | [5..3] rt  | [2..0] funct
R-S : [15..12] op | [11..9] rd | [8..6] rs | [5..2] amt | [1..0] funct
I   : [15..12] op | [11..9] rd | [8..0] addr
R-I : R-type word, followed by a second word: imm16
LI  : [15..12] op | [11..9] rd | ...  followed by a second word: imm16
BR  : [15..12] op | [11..9] cond | [8..0] addr
J   : [15..12] op | [11..9] unused | [8..0] addr
```

### Function codes

**ALU / ALUI** (`0001`, `0010`)

| funct | Mnemonic | Operation |
|---|---|---|
| 000 | ADD | `rd ← rs + rt` |
| 001 | SUB | `rd ← rs − rt` |
| 010 | INC | `rd ← rs + 1` |
| 011 | DEC | `rd ← rs − 1` |
| 100 | AND | `rd ← rs AND rt` |
| 101 | OR | `rd ← rs OR rt` |
| 110 | XOR | `rd ← rs XOR rt` |
| 111 | NOT | `rd ← NOT rs` |

**ALU2 / ALU2I** (`1100`, `1101`) — the only unit that drives the status flags

| funct | Mnemonic | Operation |
|---|---|---|
| 000 | MIN | signed minimum |
| 001 | MAX | signed maximum |
| 010 | MINU | unsigned minimum |
| 011 | MAXU | unsigned maximum |
| 100 | NEG | `rd ← −rs` |
| 101 | NAND | `rd ← rs NAND rt` |
| 110 | XNOR | `rd ← rs XNOR rt` |
| 111 | CMP | `rs − rt`, sets flags only (no register write) |

**SHIFT** (`1011`, 4-bit amount, 0–15)

| funct | Mnemonic | Operation |
|---|---|---|
| 00 | SLL | Shift left, zero fill |
| 01 | SRL | Shift right, zero fill |
| 10 | SRA | Shift right arithmetic (sign fill) |
| 11 | ROL | Rotate left (rotate right by *n* = rotate left by 16 − *n*) |

**BR** (`0111`)

| cond | Mnemonic | Taken if |
|---|---|---|
| 000 | BEQ | Z = 1 |
| 001 | BNE | Z = 0 |
| 010 | BLT | N ≠ V |
| 011 | BGE | N = V |
| 100 | BLE | Z = 1 or N ≠ V |
| 101 | BGT | Z = 0 and N = V |
| 110 | BLTU | C = 0 |
| 111 | BGEU | C = 1 |

**IO** (`1110`)

| funct | Mnemonic | Operation |
|---|---|---|
| 000 | SSD | `SSD ← rs` |
| 001 | SWI | `rd ← switches` |
| 010 / 011 | SSDI / SWI [addr] | Reserved, not implemented |

## Pipeline

The CPU is organised as **Fetch → Decode → Execute → Write-back**, separated by `IF/ID`, `DE/EX` and `EX/WB` pipeline registers.

| Stage | What happens |
|---|---|
| **Fetch** | Program Counter (counter + D flip-flop + return-address stack) addresses the synchronous ROM. The ROM output register acts as the IF/ID register. PC advances by 1 (16-bit) or 2 (32-bit instructions). |
| **Decode** | Control unit decodes the instruction combinationally. Register file is read, forwarding muxes resolve data hazards, and the **branch unit** drives the PC `JMP` input directly so jumps and branches take effect immediately. Data RAM is also read here. |
| **Execute** | `ALU`, `ALU2` and the shifter compute in parallel; an output "funnel" of muxes (driven by the control bits) selects one result. ALU2 flags are captured by a level-sensitive flag latch. |
| **Write-back** | The shared bus is distributed to the register file (`DEVICE[0]`), data RAM (`DEVICE[1]`) and seven-segment register (`DEVICE[2]`) depending on the enable bits. |

Pipeline registers capture on the **rising** clock edge; the register file and write-back devices are written on the **falling** edge, so written values are stable before the next rising edge.

### Clock cycles per instruction

Every instruction passes through the pipeline in 3 cycles, and once the pipeline is full the CPU completes **one instruction per clock (CPI = 1)**. 32-bit instructions need no extra cycle because both words are fetched together. A conditional branch effectively costs two cycles because a `CMP` must precede it.

## Hazard Handling

- **Register (RAW) hazards:** the `FwdSelUnit` compares the source registers of the instruction in Decode against the destination registers in Execute and Write-back, and steers the nearest result into the A/B operand pipeline registers (Execute result has priority over Write-back).
- **Memory hazards:** `MemHazUnit` detects a `LW` following a `SW` (or an `SW` separated by other instructions) to the same address and forwards the in-flight value, registering both the data and the "forwarded" flag so they stay aligned with the instruction.
- **Control hazards:** `JMP`, `JAL`, `JR` and `BR` are resolved in Decode; the PC is combinational so the next fetch already comes from the target. No stall or flush logic is needed (the `STL` inputs on the pipeline registers are unused).

## Components

| Component | Implementation | Description |
|---|---|---|
| Program Counter | Schematic | Counter, DFF, return-address stack, +1/+2 increment, `JMP`/`JAL`/`JR` |
| Instruction ROM | VHDL | Synchronous, 9-bit address, outputs `PC` and `PC+1` words |
| Data RAM | VHDL | Read on rising edge, write on falling edge |
| Register file | VHDL + schematic | 8 × 16-bit, two combinational read ports, demux-decoded write enable |
| Control Unit | VHDL | Single combinational process with safe defaults for every output |
| Branch Unit | VHDL | Evaluates `cond` against N/Z/C/V flags |
| Forward Select Unit | VHDL | Register hazard detection and mux selects |
| Memory Hazard Unit | VHDL | Store-to-load forwarding |
| ALU | VHDL | 17-bit arithmetic path for carry; no flags |
| ALU2 | VHDL | MIN/MAX/NEG/NAND/XNOR/CMP; generates N, Z, C, V |
| Shift Unit | VHDL | `numeric_std` shift/rotate, 4-bit amount |
| Pipeline registers | VHDL (`NBitPR`) | Generic width, optional stall and clock-divide inputs |
| Flag latch | VHDL (`NBitLatch`) | Transparent latch so `CMP` flags reach a following branch in the same cycle |

## On-Board I/O and Debugging

- **Inputs:** 10 slide switches (plus push buttons wired as `SW[11:10]`; upper bits tied to ground to form a 16-bit bus).
- **Outputs:** HEX0–HEX3 show the `SSD` register (4 hex digits).
- **Clock:** switch between the 50 MHz board clock and a slow divided clock for single-stepping the pipeline by eye.
- **LED status indicators:**

| LED | Signal |
|---|---|
| 0 | Stack full |
| 1 | Stack empty |
| 2 | SSD register write enable |
| 3 | `SWO` (switch → execute output) |
| 4 | Register being written |
| 5 | RAM being written |
| 6 | Slow clock |
| 7 | Count enabled (+1 or +2) |
| 8 | Clock in |
| 9 | Program halted |

- **Debug displays (HEX4–HEX5), selected with push buttons:**

| Buttons | Shows |
|---|---|
| `00` | Opcode in Decode and stack depth |
| `01` | Program counter |
| `10` | Execute output select code (see below) |

| Code | Execute output source |
|---|---|
| `01` | IO (switch → execute, or SSD register in) |
| `02` | Register A pass-through |
| `04` | Immediate |
| `08` | Shift unit |
| `10` | ALU2 |
| `20` | RAM |

## Testing and Verification

1. **Component testbenches (VHDL, QuestaSim)** with inline assertions:

   | Testbench | Asserts | Checks |
   |---|---|---|
   | `tb_ALU` | 8 | All eight ALU1 functions |
   | `tb_ALU2` | 11 | MIN/MAX (mixed sign), MINU, MAXU, NEG, NAND, XNOR, CMP |
   | `tb_NbitPR` | 8 | Pass-through, stall hold, resume |
   | `tb_NbitRegister` | 8 | Load, hold, clear |
   | `tb_ProgramCounter` | 6 | CLR, CE, JMP, JAL, JR, JMP priority over CE |

   No testbench was written for the control unit, shift unit, forward select unit or full CPU (this would have required converting every block diagram to VHDL), so these were verified on-board.

2. **On-board debugging** with the LED/seven-segment status indicators and slow clock, narrowing faults to a stage or control signal.

3. **Self-checking assembly programs** — each check runs one instruction, compares to an expected value with `CMP`, and on failure displays an error code and halts (`E0nn` for ALU, `E1nn` for flow). All passing displays **`600D`**.

   | Program | Checks | Result |
   |---|---|---|
   | `echo` | – | Display follows switches |
   | `selftest_alu` | 29 | `600D` – ALU1, ALU2, shift, memory |
   | `selftest_flow` | 34 | `600D` – all branch conditions, JMP, JAL, JR, NOP |
   | `selftest_imm` | 22 | `600D` – immediate forms of ALU2 and CMP |
   | `calc` | – | Correct results for all four operations |

   Recommended run order: `echo` → `selftest_flow` / `selftest_imm` → `selftest_alu` → `calc`.

### Notable bugs found

| Fault | Cause | Fix |
|---|---|---|
| ALU2 results not written to registers | `if not funct = "111"` parsed as `(not funct) = "111"` | `if funct /= "111"` and added `funct` to sensitivity list |
| `MAXU` returned signed maximum | Compared with `signed()`; testbench used only positive operands | Use `unsigned()` |
| `SRA` wrong for `amt > 1` | Sign bits not filled across the full shifted length | Use `shift_right(signed(...))` and remove the workaround logic |

## Assembler and Example Programs

A generic **Java assembler** was written alongside the CPU so the ISA could be changed quickly during the iterative design. The ISA is declared in a table-driven way (function tables plus `define` / `defineFamily` layouts for `reg`, `imm`, `addr`, `amt`, `func`, `cond`, `unused` fields). Its output is formatted so it can be pasted straight into the ROM definition under the `--START:` comment.

Example `echo.asm` (switches → display, forever):

```asm
LOOP:
    SWI R1
    SSD R1
    JMP LOOP
```

`calc.asm` is a four-function switch calculator (`+ − × ÷`) using subroutines (`JAL`/`JR`), shift-and-add multiplication and repeated-subtraction division:

| Switches | Meaning |
|---|---|
| `SW[3:0]` | A (0–15) |
| `SW[7:4]` | B (0–15) |
| `SW[9:8]` | Operation: 0 = add, 1 = subtract, 2 = multiply, 3 = divide |

The display shows `[Out][A][B]`; division shows `[remainder][quotient]`, and divide by zero shows `BADB`.

## Known Issues and Limitations

- **Timing:** Quartus reports *timing requirements not met* (negative setup/hold slack). This has not been observed to affect operation at the clock speeds used, but it has not been resolved. Switching rapidly between the 50 MHz and slow clock may cause errors that were not fully diagnosed.
- **Level-sensitive flag latch:** unconventional for FPGA designs and complicates timing analysis, though Quartus reported no hazards for it.
- **Fixed memory addresses:** addresses are encoded in the instruction (which enables Decode-stage memory access), so there are no pointers, arrays or register-indirect addressing.
- **Small architecture:** 8 registers and a 9-bit address space increase register pressure; there is no hardware multiply or divide (done in software).
- **No full-CPU testbench:** much system-level verification depends on hardware status indicators.
- **Clock speed:** the design prioritises a bubble-free pipeline over maximum frequency, since Decode does significant work (branching and memory access).

## Future Work

- Merge `JMP`/`JAL`/`JR` into one opcode (function bits), and `NOP`/`HALT` into another, to free up opcodes.
- Replace the level-sensitive flag latch with an edge-triggered flag register.
- Add register-indirect addressing and a unified memory model.
- Build an automated, self-checking VHDL testbench driven by assembled programs (easier if the whole design were VHDL).
- Explore deeper pipelines for higher clock frequency.

## Authors

- Chihab Chamkhi
