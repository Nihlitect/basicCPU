# =============================================================================
# calc.asm -- interactive switch calculator: + - x /
# =============================================================================
# Reads the switches on every pass, performs one operation and shows the
# result on the seven-segment display, forever. Flip switches while it runs
# and the display follows.
#
# SWITCH LAYOUT (value returned by SWI)
#   SW[3:0]    A     0..15
#   SW[7:4]    B     0..15
#   SW[9:8]    OP    0 = A + B
#                    1 = A - B   (shown as an 8-bit two's complement byte)
#                    2 = A x B   (shift-and-add subroutine)
#                    3 = A / B   (repeated subtraction subroutine)
#   SW[15:10]  ignored
#
# DISPLAY LAYOUT   [ Out ][ A ][ B ]  = four hex digits  O O A B
#   Out is one byte: the sum, difference or product; for a division it is
#   [remainder][quotient], one digit each. A divide by zero shows BADB.
#
# THINGS TO TRY (A, B, OP -> display)
#    3,  4, 0 -> 0734         3,  4, 1 -> FF34         3,  4, 2 -> 0C34
#   15, 15, 0 -> 1EFF        15, 15, 2 -> E1FF
#   15,  4, 3 -> 33F4  (15 / 4 = 3 remainder 3)        7, 2, 3 -> 1372
#    5,  3, 3 -> 2153  (5 / 3 = 1 remainder 2)         9, 0, 3 -> BADB
#
# REGISTERS
#   R1  raw switch value, later the RESULT
#   R2  temporary                  R3  A          R4  B
#   R5  OP, later a working copy   R6  working copy
#   R7  link register for JAL/JR (assumed; nothing here keeps data in R7)
#   R0  not used
#   A and B (R3, R4) are never modified after they are decoded, so they can
#   be shown next to the result.
#
# Exercises: SWI, SSD, LDI, ADD/SUB/AND/OR (reg and imm), INC, SLL, SRL, CMP
#            (reg and imm), BEQ, BLTU, JMP, JAL, JR.
# =============================================================================

MAIN:
SWI R1                      # R1 = raw switches
AND R3 R1 0x0F              # R3 = A = SW[3:0]
SRL R4 R1 4                 # R4 = SW >> 4
AND R4 R4 0x0F              # R4 = B = SW[7:4]
SRL R5 R1 8                 # R5 = SW >> 8
AND R5 R5 0x03              # R5 = OP = SW[9:8]

# ---- choose the operation: OP 0, 1, 2, else 3 ----
CMP R5 0
BEQ DO_ADD
CMP R5 1
BEQ DO_SUB
CMP R5 2
BEQ DO_MUL
JMP DO_DIV

DO_ADD:
ADD R1 R3 R4                # result = A + B
JMP SHOW

DO_SUB:
SUB R1 R3 R4                # result = A - B
JMP SHOW

DO_MUL:
JAL MULTIPLY                # result = A x B
JMP SHOW

DO_DIV:
JAL DIVIDE                  # result = [remainder][quotient], or BADB

SHOW:
CMP R1 0xBADB
BEQ SHOW_RAW                # divide by zero: show BADB as it is
SLL R1 R1 8                 # Out -> [15:8]
SLL R2 R3 4                 # A   -> [7:4]
OR  R1 R1 R2                # [Out][A][0]    (back-to-back dependent instructions)
OR  R1 R1 R4                # [Out][A][B]
SHOW_RAW:
SSD R1
JMP MAIN

# ---- subroutine: R1 = R3 x R4 by shift-and-add; keeps R3 and R4 ----
MULTIPLY:
LDI R1 0                    # accumulator
OR  R5 R3 R3                # R5 = multiplicand (copy of A)
OR  R6 R4 R4                # R6 = multiplier   (copy of B)
MUL_LOOP:
CMP R6 0                    # multiplier used up?
BEQ MUL_DONE
AND R2 R6 1                 # lowest bit of the multiplier
CMP R2 0
BEQ MUL_SKIP                # bit clear -> nothing to add
ADD R1 R1 R5                # accumulator += multiplicand
MUL_SKIP:
SLL R5 R5 1                 # multiplicand *= 2
SRL R6 R6 1                 # multiplier /= 2
JMP MUL_LOOP
MUL_DONE:
JR

# ---- subroutine: R1 = [remainder][quotient] of R3 / R4; keeps R3 and R4 ----
DIVIDE:
CMP R4 0                    # B = 0?
BEQ DIV_ZERO
LDI R1 0                    # quotient
OR  R6 R3 R3                # R6 = what is left of A (becomes the remainder)
DIV_LOOP:
CMP R6 R4                   # what is left < B ?
BLTU DIV_DONE               # yes: finished
SUB R6 R6 R4                # take B out of it ...
INC R1 R1                   # ... and count it
JMP DIV_LOOP
DIV_DONE:
SLL R6 R6 4                 # remainder -> [7:4]
OR  R1 R1 R6                # [remainder][quotient]
JR
DIV_ZERO:
LDI R1 0xBADB
JR