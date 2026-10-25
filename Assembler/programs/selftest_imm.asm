# =============================================================================
# selftest_imm.asm -- self-checking test: immediate forms of ALU2 and CMP
# =============================================================================
# MIN MAX MINU MAXU NAND XNOR and CMP with a 16-bit immediate in the second
# word (the opcode 1101 forms). Stops at the first mismatch.
#
#   display 600D   every check passed (the CPU then halts)
#   display E2nn   check Tnn failed (the CPU then halts); find "Tnn" below
#   anything else, nothing at all, or the CPU never halts
#                  something basic is broken; go back to the earlier tests
#
# Run selftest_alu.asm and selftest_flow.asm first: the ALU2 checks here
# compare with the register form of CMP, and the CMP checks use branches.
#
# REGISTERS   R1,R2 operands   R3 result   R4 expected value   R5 spare
#             R6 failure code   R7 link register for JAL/JR (assumed)
#             R0 is not used (CMP has no destination)
#
# Failure codes are loaded with LDI right before each check, so a broken ALU
# cannot corrupt them. R6 and R7 are not tested individually.
#
# ASSUMED SEMANTICS 
#   * the immediate is a 16-bit value; for signed operations (MIN, MAX, BLT,
#     BGE, BLE, BGT) 0xFFFF means -1, for unsigned ones it means 65535
#   * CMP Rs1,imm sets flags from Rs1 - imm
# =============================================================================

# ---- ALU2, immediate form ------------------------------------------------
LDI R1 0xFFFB
# T01  MIN imm   min(-5, 3) = -5 (0xFFFB)
LDI R6 0xE201
MIN R3 R1 3
LDI R4 0xFFFB
CMP R3 R4
BNE FAIL
# T02  MAX imm   max(-5, 3) = 3
LDI R6 0xE202
MAX R3 R1 3
LDI R4 0x0003
CMP R3 R4
BNE FAIL
# T03  MINU imm  minu(0xFFFB, 3) = 3
LDI R6 0xE203
MINU R3 R1 3
LDI R4 0x0003
CMP R3 R4
BNE FAIL
# T04  MAXU imm  maxu(0xFFFB, 3) = 0xFFFB
LDI R6 0xE204
MAXU R3 R1 3
LDI R4 0xFFFB
CMP R3 R4
BNE FAIL
# T05  MIN imm   min(3, 0xFFFF) = -1 (immediate read as signed)
LDI R6 0xE205
LDI R2 3
MIN R3 R2 0xFFFF
LDI R4 0xFFFF
CMP R3 R4
BNE FAIL
# T06  MAXU imm  maxu(3, 0xFFFF) = 0xFFFF (all 16 immediate bits)
LDI R6 0xE206
MAXU R3 R2 0xFFFF
LDI R4 0xFFFF
CMP R3 R4
BNE FAIL
LDI R1 0xF0F0
# T07  NAND imm  ~(0xF0F0 & 0x3C3C) = 0xCFCF
LDI R6 0xE207
NAND R3 R1 0x3C3C
LDI R4 0xCFCF
CMP R3 R4
BNE FAIL
# T08  XNOR imm  ~(0xF0F0 ^ 0x3C3C) = 0x3333
LDI R6 0xE208
XNOR R3 R1 0x3C3C
LDI R4 0x3333
CMP R3 R4
BNE FAIL

# ---- CMP, immediate form (values: R1 = 5, R3 = -2 = 0xFFFE, R4 = -32768 = 0x8000) ---
LDI R1 0x0005
LDI R3 0xFFFE
LDI R4 0x8000
# T09  BEQ taken: 5 == 5
LDI R6 0xE209
CMP R1 5
BEQ OK_09
JMP FAIL
OK_09:
# T10  BEQ not taken: 5 != 7
LDI R6 0xE20A
CMP R1 7
BEQ FAIL
# T11  BNE taken: 5 != 7
LDI R6 0xE20B
CMP R1 7
BNE OK_11
JMP FAIL
OK_11:
# T12  BNE not taken: 5 == 5
LDI R6 0xE20C
CMP R1 5
BNE FAIL
# T13  BLT taken: 5 < 7
LDI R6 0xE20D
CMP R1 7
BLT OK_13
JMP FAIL
OK_13:
# T14  BGE not taken: 5 >= 7 is false
LDI R6 0xE20E
CMP R1 7
BGE FAIL
# T15  BLT taken: -2 < 5 (signed)
LDI R6 0xE20F
CMP R3 5
BLT OK_15
JMP FAIL
OK_15:
# T16  BGEU taken: 0xFFFE >=u 5 (unsigned)
LDI R6 0xE210
CMP R3 5
BGEU OK_16
JMP FAIL
OK_16:
# T17  BGT taken: 5 > -2 (immediate read as signed)
LDI R6 0xE211
CMP R1 0xFFFE
BGT OK_17
JMP FAIL
OK_17:
# T18  BLTU taken: 5 <u 0xFFFE (immediate read as unsigned)
LDI R6 0xE212
CMP R1 0xFFFE
BLTU OK_18
JMP FAIL
OK_18:
# T19  BEQ taken: 0xFFFE == 0xFFFE (all 16 immediate bits)
LDI R6 0xE213
CMP R3 0xFFFE
BEQ OK_19
JMP FAIL
OK_19:
# T20  BNE taken: 0xFFFE != 0x7FFE (differ only in bit 15)
LDI R6 0xE214
CMP R3 0x7FFE
BNE OK_20
JMP FAIL
OK_20:
# T21  BLT taken: -32768 < 1 (0x8000 - 1 overflows)
LDI R6 0xE215
CMP R4 1
BLT OK_21
JMP FAIL
OK_21:
# T22  BGE not taken: -32768 >= 1 is false
LDI R6 0xE216
CMP R4 1
BGE FAIL

# ---- all checks passed ------------------------------------------------------
LDI R1 0x600D # GOOD
SSD R1
HALT

# ---- the first failing check lands here: show its code and stop ------------
FAIL:
SSD R6
HALT
