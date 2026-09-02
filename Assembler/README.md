# Generic ISA Assembler

A single Java file (`Assembler.java`). Your instruction set lives in the
`ISA_DEFINITION` block near the top of the file — a plain data structure —
not scattered across `switch` statements or individual methods. Edit that
block, recompile, done.

## Usage

```
javac Assembler.java
java Assembler <program.csv> [output.(txt|csv)]
```

- Default output (or any path ending in `.txt`): one hex value per line,
  zero-padded to the instruction width. Also printed to the console.
- Path ending in `.csv`: a verbose table — `address,hex,binary,source`.
- If you omit the output path, it defaults to `<program-name>.hex.txt`.

## 1. Defining your ISA (edit `Assembler.java`)

At the top of the file:

```java
static final int INSTRUCTION_WIDTH = 16;   // total bits per instruction
static final int OPCODE_WIDTH = 4;         // bits reserved for the opcode

static Map<String, InstrDef> buildISA() {
    Map<String, InstrDef> isa = new LinkedHashMap<>();

    isa.put("ADD", instr("0001", field("REG", 4), field("REG", 4), field("REG", 4)));
    isa.put("SUB", instr("0010", field("REG", 4), field("REG", 4), field("REG", 4)));
    isa.put("LI",  instr("0101", field("REG", 4), field("IMM", 8)));
    isa.put("JMP", instr("0110", field("LABEL", 12)));

    return isa;
}
```

- `instr(opcodeBits, fields...)` — `opcodeBits` is a literal binary string
  (must be exactly `OPCODE_WIDTH` bits long).
- `field(type, width)` — one operand field. Order matches the order operands
  appear in your program file.
- For every instruction, its field widths + `OPCODE_WIDTH` must sum to
  exactly `INSTRUCTION_WIDTH`. This is checked automatically at startup and
  will tell you exactly which mnemonic is wrong if it doesn't add up.

Supported field types (case-insensitive):

| Type    | Operand syntax        | Meaning |
|---------|------------------------|---------|
| `REG`   | `R0`..`R<2^width-1>`   | Register number |
| `IMM`   | `10`, `-3`, `0x0A`     | Immediate constant, stored as the low `width` bits |
| `LABEL` | any identifier         | Resolved to the (word) address of a matching `NAME:` label in the program |

Want another operand kind (shift amount, condition code, etc.)? Add one
`case` to `encodeField()` — that's the only method that knows how to turn
an operand token into bits, and it dispatches on field *type* (data), not
on instruction name, so it stays generic no matter how many instructions
you add.

## 2. Writing a program (`.csv`)

One instruction per row, comma-separated. `#` starts a comment; blank rows
are ignored. A row containing a single token ending in `:` (e.g. `LOOP:`)
defines a label:

```
# comment
LI,R1,10
LI,R2,20
LOOP:
ADD,R3,R1,R2
JMP,LOOP
```

## 3. Output

Plain text (default), one hex word per line:

```
510A
5214
1312
2431
```

CSV (pass an output filename ending in `.csv`) additionally shows address,
binary, and the original source line — useful while debugging:

```
address,hex,binary,source
0,510A,0101000100001010,"LI,R1,10"
1,5214,0101001000010100,"LI,R2,20"
```

## Files in this package

- `Assembler.java` — the assembler. Edit `ISA_DEFINITION` for your own ISA.
- `program_example.csv` — example program (matches your original snippet,
  plus a label + `JMP` demo showing the `LABEL` field type).
