import java.io.*;
import java.nio.file.*;
import java.util.*;

/**
 * ============================================================================
 *  Generic, data-driven assembler
 * ============================================================================
 *
 *  Your instruction set lives in ONE place: the ISA_DEFINITION section near
 *  the top of this file (a plain data structure -- a list of instruction
 *  descriptions). Nothing about a specific instruction is hardcoded into any
 *  method; every method below (assemble, encodeField, etc.) is generic and
 *  just walks whatever fields ISA_DEFINITION says a given mnemonic has.
 *
 *  To adapt this to your own ISA: edit ISA_DEFINITION (and INSTRUCTION_WIDTH /
 *  OPCODE_WIDTH if needed), then recompile. No other code changes required.
 *
 *  Usage:
 *      javac Assembler.java
 *      java Assembler <program.csv> [output.(txt|csv)]
 *
 *  Program file (.csv), one instruction per row, comma-separated:
 *
 *      # comments start with '#' and blank lines are ignored
 *      LI,R1,10
 *      LI,R2,20
 *      LOOP:
 *      ADD,R3,R1,R2
 *      SUB,R4,R3,R1
 *
 *  A row containing a single token ending in ':' (e.g. "LOOP:") defines a
 *  label, resolvable by any operand of type LABEL (see below).
 *
 *  Output:
 *      - default (or any path ending in .txt): one hex word per line,
 *        zero-padded to the instruction width.
 *      - path ending in .csv: a verbose table -- address,hex,binary,source.
 * ============================================================================
 */
public class Assembler {

    // ========================================================================
    //  ISA DEFINITION -- EDIT THIS SECTION FOR YOUR OWN INSTRUCTION SET
    // ========================================================================
    //
    //  INSTRUCTION_WIDTH : total bits in one instruction word.
    //  OPCODE_WIDTH      : bits reserved for the opcode field.
    //
    //  ISA_DEFINITION maps each mnemonic to:
    //    - its opcode, written as a binary string (must be OPCODE_WIDTH bits)
    //    - an ordered list of operand fields, each built with field(type, width)
    //
    //  For every instruction, OPCODE_WIDTH + (sum of its field widths) MUST
    //  equal INSTRUCTION_WIDTH. This is checked automatically at startup --
    //  you'll get a clear error naming the offending mnemonic if it doesn't.
    //
    //  Supported field types out of the box (case-insensitive):
    //    REG    a register operand, written "R<n>" in the program (e.g. R3).
    //           Valid range is 0 .. (2^width - 1).
    //    IMM    an immediate constant: decimal ("10", "-3") or hex ("0x0A").
    //           Stored as the low `width` bits (two's complement if negative).
    //    LABEL  a symbolic address (e.g. a branch target), resolved against
    //           labels defined in the program file with a "NAME:" row.
    //
    //  Want another operand kind (shift amount, condition code, ...)? Add one
    //  case to encodeField() near the bottom of the ISA-agnostic section --
    //  that's the only place operand *encoding* logic lives.
    // ========================================================================

    static final int INSTRUCTION_WIDTH = 16;
    static final int OPCODE_WIDTH = 4;

    static final Map<String, InstrDef> ISA_DEFINITION = buildISA();

    static Map<String, InstrDef> buildISA() {
        Map<String, InstrDef> isa = new LinkedHashMap<>();

        //           mnemonic   opcode(bin)   fields...
        isa.put("ADD", instr("0001", field("REG", 4), field("REG", 4), field("REG", 4)));
        isa.put("SUB", instr("0010", field("REG", 4), field("REG", 4), field("REG", 4)));
        isa.put("AND", instr("0011", field("REG", 4), field("REG", 4), field("REG", 4)));
        isa.put("OR",  instr("0100", field("REG", 4), field("REG", 4), field("REG", 4)));
        isa.put("LI",  instr("0101", field("REG", 4), field("IMM", 8)));

        // Example of a branch-style instruction using a LABEL field --
        // delete this if you don't need it, or use it as a template.
        isa.put("JMP", instr("0110", field("LABEL", 12)));

        return isa;
    }

    // ========================================================================
    //  Everything below this line is generic ISA-encoding machinery. It reads
    //  ISA_DEFINITION above; it does not know about ADD/SUB/LI/etc by name.
    // ========================================================================

    // ------------------------------------------------------------------
    // Small builder helpers so ISA_DEFINITION above reads like config data.
    // ------------------------------------------------------------------
    static FieldSpec field(String type, int width) {
        return new FieldSpec(type, width);
    }

    static InstrDef instr(String opcodeBits, FieldSpec... fields) {
        return new InstrDef(opcodeBits, Arrays.asList(fields));
    }

    // ------------------------------------------------------------------
    // Data model for a single operand field (e.g. a 4-bit register field,
    // or an 8-bit immediate field).
    // ------------------------------------------------------------------
    static final class FieldSpec {
        final String type;   // "REG", "IMM", "LABEL", ...
        final int width;     // bits

        FieldSpec(String type, int width) {
            this.type = type.toUpperCase();
            this.width = width;
        }
    }

    // ------------------------------------------------------------------
    // Data model for one instruction definition.
    // ------------------------------------------------------------------
    static final class InstrDef {
        final int opcodeValue;
        final List<FieldSpec> fields;

        InstrDef(String opcodeBits, List<FieldSpec> fields) {
            this.opcodeValue = Integer.parseInt(opcodeBits, 2);
            this.fields = fields;

            if (opcodeBits.length() != OPCODE_WIDTH || !opcodeBits.matches("[01]+")) {
                throw new AssemblyException(
                    "ISA_DEFINITION: opcode '" + opcodeBits + "' must be a binary string of exactly "
                    + OPCODE_WIDTH + " bits");
            }
            int totalFieldWidth = fields.stream().mapToInt(f -> f.width).sum();
            int total = OPCODE_WIDTH + totalFieldWidth;
            if (total != INSTRUCTION_WIDTH) {
                throw new AssemblyException(
                    "ISA_DEFINITION: field widths (" + OPCODE_WIDTH + " opcode + " + totalFieldWidth
                    + " fields = " + total + ") must add up to INSTRUCTION_WIDTH (" + INSTRUCTION_WIDTH + ")");
            }
        }
    }

    public static void main(String[] args) {
        if (args.length < 1) {
            System.err.println("Usage: java Assembler <program.csv> [output.(txt|csv)]");
            System.exit(1);
        }

        String programPath = args[0];
        String outputPath = args.length >= 2 ? args[1] : defaultOutputPath(programPath);

        try {
            List<String> sourceLines = loadProgramLines(programPath);
            List<AssembledLine> assembled = assembleProgram(sourceLines);
            writeOutput(assembled, outputPath);

            System.out.println("Assembled " + assembled.size() + " instruction(s).");
            System.out.println("Output written to: " + outputPath);

        } catch (AssemblyException e) {
            // Friendly, line-numbered error message for ISA/program mistakes.
            System.err.println("Assembly error: " + e.getMessage());
            System.exit(1);
        } catch (IOException e) {
            System.err.println("I/O error: " + e.getMessage());
            System.exit(1);
        }
    }

    static String defaultOutputPath(String programPath) {
        int dot = programPath.lastIndexOf('.');
        String base = dot >= 0 ? programPath.substring(0, dot) : programPath;
        return base + ".hex.txt";
    }

    // ========================================================================
    //  PROGRAM FILE LOADING (CSV) -- raw lines, comment/blank-stripped
    // ========================================================================

    static List<String> loadProgramLines(String path) throws IOException {
        List<String> raw = Files.readAllLines(Paths.get(path));
        List<String> cleaned = new ArrayList<>();

        for (String line : raw) {
            String l = stripComment(line).trim();
            if (l.isEmpty()) continue;
            cleaned.add(l);
        }
        return cleaned;
    }

    static String stripComment(String line) {
        int hash = line.indexOf('#');
        return hash >= 0 ? line.substring(0, hash) : line;
    }

    // ========================================================================
    //  ASSEMBLY (two passes: collect labels, then encode)
    // ========================================================================

    static final class AssembledLine {
        final int address;
        final String sourceLine;
        final int encoded;

        AssembledLine(int address, String sourceLine, int encoded) {
            this.address = address;
            this.sourceLine = sourceLine;
            this.encoded = encoded;
        }
    }

    static List<AssembledLine> assembleProgram(List<String> lines) {

        // ---- Pass 1: find labels ("NAME:") and assign each real
        //      instruction a word address (0, 1, 2, ...). ----
        Map<String, Integer> labels = new HashMap<>();
        List<String> instructionLines = new ArrayList<>();
        List<Integer> instructionLineNos = new ArrayList<>();

        int address = 0;
        for (int i = 0; i < lines.size(); i++) {
            String line = lines.get(i);
            if (isLabelDefinition(line)) {
                String name = line.substring(0, line.length() - 1).trim().toUpperCase();
                if (labels.containsKey(name)) {
                    throw new AssemblyException("line " + (i + 1) + ": duplicate label '" + name + "'");
                }
                labels.put(name, address);
            } else {
                instructionLines.add(line);
                instructionLineNos.add(i + 1);
                address++;
            }
        }

        // ---- Pass 2: encode each instruction, resolving REG/IMM/LABEL
        //      fields using ISA_DEFINITION. ----
        List<AssembledLine> result = new ArrayList<>();
        for (int pc = 0; pc < instructionLines.size(); pc++) {
            String line = instructionLines.get(pc);
            int lineNo = instructionLineNos.get(pc);
            int encoded = encodeInstruction(line, labels, lineNo);
            result.add(new AssembledLine(pc, line, encoded));
        }
        return result;
    }

    static boolean isLabelDefinition(String line) {
        // A bare "NAME:" row (no operands) defines a label.
        return line.matches("^[A-Za-z_][A-Za-z0-9_]*:$");
    }

    static int encodeInstruction(String line, Map<String, Integer> labels, int lineNo) {

        String[] tokens = line.split(",");
        for (int i = 0; i < tokens.length; i++) tokens[i] = tokens[i].trim();

        String mnemonic = tokens[0].toUpperCase();
        InstrDef def = ISA_DEFINITION.get(mnemonic);
        if (def == null) {
            throw new AssemblyException("line " + lineNo + ": unknown instruction '" + mnemonic + "'");
        }

        int expectedOperands = def.fields.size();
        int gotOperands = tokens.length - 1;
        if (gotOperands != expectedOperands) {
            throw new AssemblyException(
                "line " + lineNo + ": " + mnemonic + " expects " + expectedOperands
                + " operand(s), got " + gotOperands + " -> \"" + line + "\"");
        }

        // Place opcode in the most-significant bits, then each field
        // immediately below the previous one, in declaration order.
        int shift = INSTRUCTION_WIDTH - OPCODE_WIDTH;
        long result = ((long) def.opcodeValue) << shift;

        for (int i = 0; i < def.fields.size(); i++) {
            FieldSpec fieldSpec = def.fields.get(i);
            String operand = tokens[i + 1];
            shift -= fieldSpec.width;

            long value = encodeField(fieldSpec, operand, labels, lineNo, mnemonic);
            long mask = (1L << fieldSpec.width) - 1;
            result |= (value & mask) << shift;
        }

        return (int) result;
    }

    /**
     * Encodes one operand token according to its field type. Add new
     * "case" branches here to support additional operand kinds beyond
     * REG / IMM / LABEL. This is the ONLY place that knows how to turn
     * a raw operand token into bits -- it dispatches on field TYPE
     * (data), never on instruction mnemonic.
     */
    static long encodeField(FieldSpec fieldSpec, String operand, Map<String, Integer> labels,
                             int lineNo, String mnemonic) {
        switch (fieldSpec.type) {

            case "REG": {
                if (!operand.toUpperCase().startsWith("R")) {
                    throw new AssemblyException(
                        "line " + lineNo + ": " + mnemonic + " expected a register like 'R3', got '" + operand + "'");
                }
                int n = parseIntStrict(operand.substring(1), lineNo);
                int max = (1 << fieldSpec.width) - 1;
                if (n < 0 || n > max) {
                    throw new AssemblyException(
                        "line " + lineNo + ": register " + operand + " out of range 0.." + max);
                }
                return n;
            }

            case "IMM": {
                long value = parseImmediate(operand, lineNo);
                long min = -(1L << (fieldSpec.width - 1));
                long max = (1L << fieldSpec.width) - 1;
                if (value < min || value > max) {
                    throw new AssemblyException(
                        "line " + lineNo + ": immediate " + operand + " does not fit in "
                        + fieldSpec.width + " bits (range " + min + ".." + max + ")");
                }
                return value;
            }

            case "LABEL": {
                String name = operand.toUpperCase();
                Integer addr = labels.get(name);
                if (addr == null) {
                    throw new AssemblyException(
                        "line " + lineNo + ": undefined label '" + operand + "'");
                }
                return addr;
            }

            default:
                throw new AssemblyException(
                    "line " + lineNo + ": unsupported field type '" + fieldSpec.type
                    + "' -- add a case for it in encodeField()");
        }
    }

    static int parseIntStrict(String s, int lineNo) {
        try {
            return Integer.parseInt(s);
        } catch (NumberFormatException e) {
            throw new AssemblyException("line " + lineNo + ": expected an integer, got '" + s + "'");
        }
    }

    static long parseImmediate(String token, int lineNo) {
        try {
            String t = token.trim();
            if (t.toLowerCase().startsWith("0x")) {
                return Long.parseLong(t.substring(2), 16);
            }
            if (t.toLowerCase().startsWith("-0x")) {
                return -Long.parseLong(t.substring(3), 16);
            }
            return Long.parseLong(t);
        } catch (NumberFormatException e) {
            throw new AssemblyException("line " + lineNo + ": invalid immediate '" + token + "'");
        }
    }

    // ========================================================================
    //  OUTPUT
    // ========================================================================

    static void writeOutput(List<AssembledLine> assembled, String outputPath) throws IOException {
        int hexDigits = (INSTRUCTION_WIDTH + 3) / 4;
        StringBuilder sb = new StringBuilder();

        boolean csv = outputPath.toLowerCase().endsWith(".csv");
        if (csv) {
            sb.append("address,hex,binary,source\n");
        }

        for (AssembledLine a : assembled) {
            String hex = String.format("%0" + hexDigits + "X", a.encoded);
            if (csv) {
                String binary = toBinaryString(a.encoded, INSTRUCTION_WIDTH);
                sb.append(a.address).append(',')
                  .append(hex).append(',')
                  .append(binary).append(',')
                  .append('"').append(a.sourceLine.replace("\"", "'")).append('"')
                  .append('\n');
            } else {
                sb.append(hex).append('\n');
            }
            System.out.println(hex);
        }

        Files.write(Paths.get(outputPath), sb.toString().getBytes());
    }

    static String toBinaryString(int value, int width) {
        String s = Integer.toBinaryString(value);
        while (s.length() < width) s = "0" + s;
        if (s.length() > width) s = s.substring(s.length() - width);
        return s;
    }

    // ========================================================================
    //  A dedicated, unchecked exception type so assembly-time problems are
    //  clearly distinguished from ordinary bugs / I/O failures.
    // ========================================================================
    static final class AssemblyException extends RuntimeException {
        AssemblyException(String message) {
            super(message);
        }
    }
}
