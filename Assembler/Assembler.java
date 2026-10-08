import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
/**
 * A generic, data-driven assembler for a 16-bit ISA.
 *
 * The instruction set is described entirely by buildIsa() below. To change
 * the ISA, edit that table rather than the encoding code.
 *
 * Usage:
 *     java Assembler <program> [output.txt | output.csv]
 *
 * Input format (selected by USE_CSV_INPUT):
 *     CSV:              ADD,R1,R2,R3
 *     Space-separated:  ADD R1 R2 R3
 *
 * Syntax:
 *     - '#' starts a comment that runs to the end of the line.
 *     - A label sits on its own line:      LOOP:
 *     - Numbers are decimal or hex (0x1F). Address operands also accept labels.
 *     - NOP and HALT take no operands.
 *
 * Function mnemonics (the function name IS the mnemonic):
 *     ADD,R1,R2,R3     register form  (ALU)
 *     ADD,R1,R2,10     immediate form (ALUI) -- chosen automatically because
 *                      the last operand is a number, not a register
 *     MIN,R1,R2,R3     ALU2
 *     SL,R1,R2         shift
 *     SSD,R1           I/O
 *     BEQ,LOOP         branch
 *
 * 32-bit instructions:
 *     Forms with an immNextWord() field (LDI and the immediate form of the
 *     ALU functions) occupy two addresses, so the PC advances by 2 and labels
 *     account for it.
 *
 *         LDI,R4,32   ->  [n]   5800   0101 100X XXXX XXXX  (X written as 0)
 *                         [n+1] 0020   immediate = 32
 * Output:
 *     *.csv  ->  address,hex,binary,source   (one row per 16-bit word)
 *     other  ->  one hex word per line
 */
public class Assembler {
    // 1. CONFIGURATION
    /** true = comma-separated operands, false = whitespace-separated. */
    static final boolean USE_CSV_INPUT = false;
    static final int INSTRUCTION_WIDTH = 16;   // bits per word
    static final int OPCODE_WIDTH = 4;
    static final int HEX_DIGITS = (INSTRUCTION_WIDTH + 3) / 4;

    /** Shown in the "source" column for the second word of a 32-bit instruction. */
    static final String IMMEDIATE_WORD_LABEL = "(immediate)";

    // 2. FUNCTION / CONDITION TABLES  ({mnemonic, bit pattern})
    // Every name here becomes a mnemonic (see buildIsa). These must be
    // declared above ISA_DEFINITION, which is built during class
    // initialization and reads them.
    static final String[][] ALU = {
        {"ADD", "000"},
        {"SUB", "001"},
        {"INC", "010"},
        {"DEC", "011"},
        {"AND", "100"},
        {"OR",  "101"},
        {"XOR", "110"},
        {"NOT", "111"}};
    static final String[][] ALU2 = {
        {"MIN",  "000"},
        {"MAX",  "001"},
        {"MINU", "010"},
        {"MAXU", "011"},
        {"NEG",  "100"},
        {"NAND", "101"},
        {"XNOR", "110"},
        {"CMP",  "111"}};
    static final String[][] SHIFT = {
        {"SL",  "000"},
        {"SLL", "001"},
        {"SR",  "010"},
        {"SLR", "011"}};
    static final String[][] IO = {
        {"SSD", "000"},
        {"SWI", "001"}};
    static final String[][] BR = {
        {"BEQ",  "000"},
        {"BNE",  "001"},
        {"BLT",  "010"},
        {"BGE",  "011"},
        {"BLE",  "100"},
        {"BGT",  "101"},
        {"BLTU", "110"},
        {"BGEU", "111"}};
    // =========================================================================
    // 3. ISA DEFINITION
    // =========================================================================
    // An instruction layout is an opcode plus a list of fields. The list order
    // is both the order of operands in the source and, within each word, the
    // order of bits from the most-significant bit downward. Every word must
    // total INSTRUCTION_WIDTH bits (word 1 includes the opcode).
    //
    // Field kinds:
    //     reg(n)         register such as R3
    //     imm(n)         immediate value (decimal or hex)
    //     immNextWord()  16-bit immediate stored in a second word
    //                    (makes the instruction two words long)
    //     addr(n)        numeric address or label
    //     func(n)        function bits, supplied by the mnemonic (ADD, SUB, ...);
    //                    no operand in the source
    //     cond(n)        same as func(n); reads better for branch conditions
    //     nullField(n)   padding that still appears in the source as NULL or 0
    //     unused(n)      unused bits: no operand in the source, encoded as 0
    //
    // Two ways to register mnemonics:
    //     define(...)        one mnemonic, one layout            (LW, JMP, HALT, ...)
    //     defineFamily(...)  every name in a table becomes a mnemonic that uses
    //                        the given layout(s). If a family has several
    //                        layouts, the assembler picks the one whose
    //                        operands fit (ADD,R1,R2,R3 vs ADD,R1,R2,10).

    static final Map<String, List<Form>> ISA_DEFINITION = buildIsa();

    static Map<String, List<Form>> buildIsa() {
        Map<String, List<Form>> isa = new LinkedHashMap<>();
        define(isa, "NOP", instr("0000", unused(12)));                                                // NOP                          e.g.  NOP
        defineFamily(isa, ALU,
                                    instr("0001", reg(3), reg(3), reg(3), func(3)),     //                     ADD,Rd,Rs1,Rs2   register form  (ALU)
                                    instr("0010", reg(3), reg(3), unused(3),  func(3), immNextWord())//          ADD,Rd,Rs1,imm   immediate form (ALUI, two words)
                    );
        define(isa, "LW",  instr("0011", reg(3),   addr(9)));                                  // LW    Rd, address           e.g.  LW,R1,0x20
        define(isa, "SW",  instr("0100", reg(3),       addr(9)));                              // SW    Rs, address           e.g.  SW,R1,0x20
        define(isa, "LDI", instr("0101", reg(3),       unused(9), immNextWord()));             // LDI   Rd, immediate         e.g.  LDI,R1,10      (two words)
        defineFamily(isa, BR,       instr("0111", cond(3),     addr(9)));                               // BEQ,address  (BR)
        define(isa, "JMP", instr("1000", unused(3),    addr(9)));                              // JMP   NULL, address         e.g.  JMP,LOOP
        define(isa, "JAL", instr("1001", unused(3),    addr(9)));                              // JAL   NULL, address         e.g.  JAL,FUNC_START
        define(isa, "JR",  instr("1010", unused(12)));                                                // JR                          e.g. JR
        defineFamily(isa, SHIFT,    instr("1011", reg(3),  reg(3),   unused(3), func(3)));  // SL,Rd,Rs  (SHIFT)
        defineFamily(isa, ALU2,     instr("1100", reg(3),  reg(3),   reg(3),    func(3)));  // MIN,Rd,Rs1,Rs2  (ALU2)
        defineFamily(isa, IO,       instr("1110", reg(3),  unused(6),func(3)));                    // SSD, Rs  (IO)
        define(isa, "HALT",instr("1111", unused(12)));                                                // HALT                        e.g. HALT
        return isa;
    }

    /** Registers one mnemonic with one layout. */
    static void define(Map<String, List<Form>> isa, String mnemonic, InstrDef def) {
        if (def.functionField != null) {
            throw new AssemblyException(
                "ISA_DEFINITION: " + mnemonic + " has a func/cond field; "
                + "register it with defineFamily instead");
        }
        register(isa, mnemonic, new Form(def, 0));
    }
    /** Registers every name in `table` as a mnemonic for each of the given layouts. */
    static void defineFamily(Map<String, List<Form>> isa, String[][] table, InstrDef... layouts) {
        for (InstrDef def : layouts) {
            if (def.functionField == null) {
                throw new AssemblyException(
                    "ISA_DEFINITION: defineFamily needs a layout with a func/cond field");
            }

            int width = def.functionField.width;
            for (String[] entry : table) {
                String name = entry[0];
                String bits = entry[1];

                if (entry.length != 2 || bits.length() != width || !bits.matches("[01]+")) {
                    throw new AssemblyException(
                        "ISA_DEFINITION: '" + name + "' must map to exactly "
                        + width + " binary digits, got '" + bits + "'");
                }
                register(isa, name, new Form(def, Long.parseLong(bits, 2)));
            }
        }
    }
    static void register(Map<String, List<Form>> isa, String mnemonic, Form form) {
        String key = mnemonic.toUpperCase();
        List<Form> forms = isa.get(key);
        if (forms == null) {
            forms = new ArrayList<>();
            isa.put(key, forms);
        }
        // Two forms of one mnemonic must be told apart by their operands.
        for (Form existing : forms) {
            if (existing.def.describeOperands().equals(form.def.describeOperands())) {
                throw new AssemblyException(
                    "ISA_DEFINITION: mnemonic '" + key + "' is defined twice with the same operands ("
                    + form.def.describeOperands() + ")");
            }
        }
        forms.add(form);
    }
    // 4. DATA STRUCTURES
    enum FieldType {
        NULL("NULL"), UNUSED("unused"), REG("reg"), IMM("imm"), ADDR("addr"), FUNC("func");

        /** How the operand is described in error messages ("reg,reg,imm"). */
        final String displayName;

        FieldType(String displayName) {
            this.displayName = displayName;
        }
    }

    /** One field of an instruction. */
    static final class FieldSpec {
        final FieldType type;
        final int width;
        /** Which word of the instruction holds this field (0 = first). */
        final int word;

        FieldSpec(FieldType type, int width, int word) {
            this.type = type;
            this.width = width;
            this.word = word;
        }
        /**
         * UNUSED fields are encoded as zeros and FUNC fields come from the
         * mnemonic, so neither has an operand in the source.
         */
        boolean takesOperand() {
            return type != FieldType.UNUSED && type != FieldType.FUNC;
        }
    }
    /** An opcode plus the fields that follow it. */
    static final class InstrDef {
        final int opcodeValue;
        final List<FieldSpec> fields;
        /** How many words (and therefore addresses) the instruction occupies. */
        final int wordCount;
        /** How many source operands follow the mnemonic. */
        final int operandCount;
        /** The field filled in from the mnemonic (ADD, BEQ, ...), or null if there is none. */
        final FieldSpec functionField;

        InstrDef(String opcodeBits, List<FieldSpec> fields) {
            if (opcodeBits.length() != OPCODE_WIDTH || !opcodeBits.matches("[01]+")) { // VALIDATE OPCODE
                throw new AssemblyException(
                    "ISA_DEFINITION: opcode '" + opcodeBits
                    + "' must be a binary string of exactly " + OPCODE_WIDTH + " bits");
            }

            int lastWord = 0;
            int operands = 0;
            FieldSpec function = null;
            for (FieldSpec field : fields) {
                lastWord = Math.max(lastWord, field.word);
                if (field.takesOperand()) { // To determine how it is written
                    operands++;
                }
                if (field.type == FieldType.FUNC) {
                    if (function != null) {      // Validate
                        throw new AssemblyException(
                            "ISA_DEFINITION: opcode '" + opcodeBits
                            + "' has more than one func/cond field");
                    }
                    function = field; 
                }
            }

            // Every word must be filled exactly (the opcode counts toward word 1).
            int[] bitsInWord = new int[lastWord + 1];
            bitsInWord[0] = OPCODE_WIDTH;
            for (FieldSpec field : fields) {
                bitsInWord[field.word] += field.width;
            }
            for (int w = 0; w <= lastWord; w++) {
                if (bitsInWord[w] != INSTRUCTION_WIDTH) {
                    throw new AssemblyException(
                        "ISA_DEFINITION: word " + (w + 1) + " of opcode '" + opcodeBits
                        + "' has " + bitsInWord[w] + " bits (including the opcode in word 1)"
                        + "; it must be INSTRUCTION_WIDTH (" + INSTRUCTION_WIDTH + ")");
                }
            }

            this.opcodeValue = Integer.parseInt(opcodeBits, 2);
            this.fields = fields;
            this.wordCount = lastWord + 1;
            this.operandCount = operands;
            this.functionField = function;
        }

        /** The operand kinds in source order, e.g. "reg,reg,imm". */
        String describeOperands() {
            List<String> names = new ArrayList<>();
            for (FieldSpec field : fields) {
                if (field.takesOperand()) {
                    names.add(field.type.displayName);
                }
            }
            return names.isEmpty() ? "no operands" : String.join(",", names);
        }
    }

    /**
     * What a mnemonic can resolve to: an instruction layout, plus the bit
     * pattern for its func/cond field when it has one (ADD -> 000).
     */
    static final class Form {
        final InstrDef def;
        final long functionValue;

        Form(InstrDef def, long functionValue) {
            this.def = def;
            this.functionValue = functionValue;
        }
    }

    /** A cleaned-up instruction line together with its line number, for error messages. */
    static final class SourceLine {
        final int lineNo;
        final String text;

        SourceLine(int lineNo, String text) {
            this.lineNo = lineNo;
            this.text = text;
        }
    }

    /** One assembled 16-bit word. A 32-bit instruction produces two of these. */
    static final class AssembledLine {
        final int address;
        final String sourceLine;
        final int encoded;
        /** True for the second word of a multi-word instruction. */
        final boolean isContinuation;

        AssembledLine(int address, String sourceLine, int encoded, boolean isContinuation) {
            this.address = address;
            this.sourceLine = sourceLine;
            this.encoded = encoded;
            this.isContinuation = isContinuation;
        }
    }

    /** Thrown for problems in the assembly source or the ISA definition. */
    static final class AssemblyException extends RuntimeException {
        private static final long serialVersionUID = 1L;

        AssemblyException(String message) {
            super(message);
        }
    }

    // Short factory methods that keep the ISA table above readable.
    static InstrDef instr(String opcodeBits, FieldSpec... fields) {
        return new InstrDef(opcodeBits, Arrays.asList(fields));
    }
    static FieldSpec nullField(int width) {
        return new FieldSpec(FieldType.NULL, width, 0);
    }
    static FieldSpec unused(int width) {
        return new FieldSpec(FieldType.UNUSED, width, 0);
    }
    static FieldSpec reg(int width) {
        return new FieldSpec(FieldType.REG, width, 0);
    }
    static FieldSpec imm(int width) {
        return new FieldSpec(FieldType.IMM, width, 0);
    }
    /** A full-word immediate stored in the second word of the instruction. */
    static FieldSpec immNextWord() {
        return new FieldSpec(FieldType.IMM, INSTRUCTION_WIDTH, 1);
    }
    static FieldSpec addr(int width) {
        return new FieldSpec(FieldType.ADDR, width, 0);
    }
    /** Function bits taken from the mnemonic (ADD, SUB, ...). */
    static FieldSpec func(int width) {
        return new FieldSpec(FieldType.FUNC, width, 0);
    }
    /** Condition bits taken from the mnemonic (BEQ, BNE, ...). Same as func(). */
    static FieldSpec cond(int width) {
        return func(width);
    }
    
    // =========================================================================
    // 5. MAIN
    // =========================================================================
    public static void main(String[] args) {
        if (args.length < 1) { // VALIDATE INPUT
            System.err.println("Usage: java Assembler <program> [output.(txt|csv)]");
            System.err.println("Input format: " + inputFormatName());
            System.exit(1);
        }

        String programPath = args[0];
        String outputPath = (args.length >= 2) ? args[1] : defaultOutputPath(programPath); // validate

        try {
            List<String> sourceLines = loadProgramLines(programPath);
            List<AssembledLine> program = assembleProgram(sourceLines); // Main Assembly Process

            printHex(program);
            writeOutput(program, outputPath);

            System.out.println(
                "Assembled " + countInstructions(program) + " instruction(s) ("
                + program.size() + " word(s)).");
            System.out.println("Input format: " + inputFormatName());
            System.out.println("Output written to: " + outputPath);

        } catch (AssemblyException e) {
            exitWithError("Assembly error: " + e.getMessage());
        } catch (IOException e) {
            exitWithError("I/O error: " + e.getMessage());
        }
    }
    static void exitWithError(String message) {
        System.err.println(message);
        System.exit(1);
    }
    static String inputFormatName() {
        return USE_CSV_INPUT ? "CSV" : "space-separated";
    }
    /** "prog.csv" -> "prog.hex.txt" */
    static String defaultOutputPath(String programPath) {
        int dot = programPath.lastIndexOf('.');
        String base = (dot >= 0) ? programPath.substring(0, dot) : programPath;
        return base + ".hex.txt";
    }
    static int countInstructions(List<AssembledLine> program) {
        int count = 0;
        for (AssembledLine line : program) {
            if (!line.isContinuation) {
                count++;
            }
        }
        return count;
    }
    // =========================================================================
    // 6. LOADING THE PROGRAM FILE
    // =========================================================================
    /** Reads the file, dropping comments and blank lines. */
    static List<String> loadProgramLines(String path) throws IOException {
        List<String> cleaned = new ArrayList<>();

        for (String rawLine : Files.readAllLines(Paths.get(path))) {
            String line = stripComment(rawLine).trim();
            if (!line.isEmpty()) {
                cleaned.add(line);
            }
        }
        return cleaned;
    }
    static String stripComment(String line) {
        int hash = line.indexOf('#');
        return (hash >= 0) ? line.substring(0, hash) : line;
    }
    // =========================================================================
    // 7. ASSEMBLY (two passes)
    // =========================================================================
    static List<AssembledLine> assembleProgram(List<String> lines) {
        Map<String, Integer> labels = new HashMap<>();
        List<SourceLine> instructions = new ArrayList<>();

        // Pass 1: record each label's address and collect the instruction lines.
        // Addresses count 16-bit words, so a two-word instruction advances by 2.
        int address = 0;
        for (int i = 0; i < lines.size(); i++) {
            int lineNo = i + 1;
            String text = lines.get(i);

            if (isLabelDefinition(text)) {
                String name = text.substring(0, text.length() - 1).toUpperCase();
                if (labels.containsKey(name)) {
                    throw error(lineNo, "duplicate label '" + name + "'");
                }
                labels.put(name, address);
            } else {
                instructions.add(new SourceLine(lineNo, text));
                address += instructionSizeInWords(text); // 1: 16bit, 2: 32bit
            }
        }
        // Pass 2: encode every instruction, now that all labels are known.
        List<AssembledLine> program = new ArrayList<>();
        address = 0;
        for (SourceLine source : instructions) {
            int[] words = encodeInstruction(source, labels);

            for (int w = 0; w < words.length; w++) {
                boolean isContinuation = (w > 0);
                String shownSource = isContinuation ? IMMEDIATE_WORD_LABEL : source.text;
                program.add(new AssembledLine(address, shownSource, words[w], isContinuation));
                address++;
            }
        }
        return program;
    }

    /**
     * How many words the instruction on this line will occupy. The size
     * depends on which form is chosen (ADD,R1,R2,R3 is one word, ADD,R1,R2,10
     * is two). A line that can't be resolved counts as one word here; pass 2
     * reports the error with its line number.
     */
    static int instructionSizeInWords(String line) {
        String[] tokens = tokenize(line);
        if (tokens.length == 0) {
            return 1;
        }

        try {
            return resolveForm(tokens, 0, line).def.wordCount;
        } catch (AssemblyException e) {
            return 1;
        }
    }
    /** A label sits alone on its line, e.g. "LOOP:". */
    static boolean isLabelDefinition(String line) {
        return line.matches("^[A-Za-z_][A-Za-z0-9_]*:$");
    }

    static AssemblyException error(int lineNo, String message) {
        return new AssemblyException("line " + lineNo + ": " + message);
    }


    // =========================================================================
    // 8. INSTRUCTION ENCODING
    // =========================================================================
    /** Encodes one instruction into one or more 16-bit words. */
    static int[] encodeInstruction(SourceLine source, Map<String, Integer> labels) {
        int lineNo = source.lineNo;
        String[] tokens = tokenize(source.text);

        if (tokens.length == 0) {   // Validate
            throw error(lineNo, "empty instruction");
        }

        String mnemonic = tokens[0].toUpperCase(); // Clean

        Form form = resolveForm(tokens, lineNo, source.text);
        InstrDef def = form.def;

        // shift[w] = bit position just above where the next field of word w goes.
        // Word 0 starts below the opcode; later words start at the top.
        long[] words = new long[def.wordCount];
        int[] shift = new int[def.wordCount];
        Arrays.fill(shift, INSTRUCTION_WIDTH);

        shift[0] = INSTRUCTION_WIDTH - OPCODE_WIDTH;
        words[0] = (long) def.opcodeValue << shift[0];

        // Each field is placed just below the previous field in the same word.
        int nextOperand = 1;
        for (FieldSpec field : def.fields) {
            long value = 0;
            if (field.type == FieldType.FUNC) {
                value = form.functionValue;                  // comes from the mnemonic
            } else if (field.takesOperand()) {
                String operand = tokens[nextOperand++];
                value = encodeField(field, operand, labels, lineNo, mnemonic);
            }

            shift[field.word] -= field.width;
            words[field.word] |= (value & mask(field.width)) << shift[field.word];
        }

        int[] result = new int[def.wordCount];
        for (int w = 0; w < result.length; w++) {
            result[w] = (int) words[w];
        }
        return result;
    }

    /**
     * Decides which form of the mnemonic a line uses. Some mnemonics have
     * several (ADD with a register or with an immediate); the operands pick.
     */
    static Form resolveForm(String[] tokens, int lineNo, String sourceText) {
        String mnemonic = tokens[0].toUpperCase();              // Clean
        List<Form> candidates = ISA_DEFINITION.get(mnemonic);

        if (candidates == null) {                               // Validate 
            throw error(lineNo, "unknown instruction '" + mnemonic + "'");
        }

        // Keep the forms that take this many operands.
        int actualOperands = tokens.length - 1;
        List<Form> sameLength = new ArrayList<>();
        for (Form form : candidates) {
            if (form.def.operandCount == actualOperands) {
                sameLength.add(form);
            }
        }

        if (sameLength.isEmpty()) {
            throw error(lineNo,
                mnemonic + " expects " + describeOperandCounts(candidates)
                + " operand(s), got " + actualOperands + " -> \"" + sourceText + "\"");
        }

        // Only one possibility: use it, so field errors stay specific
        // (e.g. "register R9 out of range" rather than "no form matches").
        if (sameLength.size() == 1) {
            return sameLength.get(0);
        }

        for (Form form : sameLength) {
            if (operandsLookLikeForm(form.def, tokens)) {
                return form;
            }
        }

        throw error(lineNo,
            mnemonic + " operands don't match any form (expected "
            + describeForms(candidates) + ") -> \"" + sourceText + "\"");
    }

    /** True if each operand has the right general shape for its field. */
    static boolean operandsLookLikeForm(InstrDef def, String[] tokens) {
        int nextOperand = 1;
        for (FieldSpec field : def.fields) {
            if (field.takesOperand() && !operandLooksLike(field.type, tokens[nextOperand++])) {
                return false;
            }
        }
        return true;
    }

    static boolean operandLooksLike(FieldType type, String operand) {
        switch (type) {
            case NULL: return operand.equalsIgnoreCase("NULL") || operand.equals("0");
            case REG:  return operand.matches("(?i)R[0-9]+");
            case IMM:  return looksLikeNumber(operand);
            case ADDR: return looksLikeNumber(operand) || operand.matches("[A-Za-z_][A-Za-z0-9_]*");
            default:   return false;
        }
    }

    /** "3" or "2 or 3" */
    static String describeOperandCounts(List<Form> forms) {
        Set<Integer> counts = new TreeSet<>();
        for (Form form : forms) {
            counts.add(form.def.operandCount);
        }

        StringBuilder text = new StringBuilder();
        for (int count : counts) {
            if (text.length() > 0) {
                text.append(" or ");
            }
            text.append(count);
        }
        return text.toString();
    }

    /** "reg,reg,reg or reg,reg,imm" */
    static String describeForms(List<Form> forms) {
        List<String> descriptions = new ArrayList<>();
        for (Form form : forms) {
            descriptions.add(form.def.describeOperands());
        }
        return String.join(" or ", descriptions);
    }

    /** Splits a line into mnemonic + operands according to USE_CSV_INPUT. */
    static String[] tokenize(String line) {
        if (USE_CSV_INPUT) {
            // "ADD, R1 ,R2,R3" -> whitespace around commas is ignored.
            String[] tokens = line.split(",");
            for (int i = 0; i < tokens.length; i++) {
                tokens[i] = tokens[i].trim();
            }
            return tokens;
        }

        // Any run of spaces/tabs separates tokens.
        return line.trim().split("\\s+");
    }

    /** A bit mask with the low `width` bits set. */
    static long mask(int width) {
        return (1L << width) - 1;
    }


    // =========================================================================
    // 9. FIELD ENCODING (one method per operand type)
    // =========================================================================

    static long encodeField(
            FieldSpec field,
            String operand,
            Map<String, Integer> labels,
            int lineNo,
            String mnemonic) {

        switch (field.type) {
            case NULL: return encodeNull(operand, lineNo, mnemonic);
            case REG:  return encodeRegister(field, operand, lineNo, mnemonic);
            case IMM:  return encodeImmediate(field, operand, lineNo);
            case ADDR: return encodeAddress(field, operand, labels, lineNo);
            default:   throw new IllegalStateException(
                           "Field type " + field.type + " does not take an operand");
        }
    }

    /**
     * Padding field. The source must still contain a token for it: either
     * the word NULL or the number 0 (e.g. "JMP,NULL,10").
     */
    static long encodeNull(String operand, int lineNo, String mnemonic) {
        if (!operand.equalsIgnoreCase("NULL") && !operand.equals("0")) {
            throw error(lineNo,
                mnemonic + " expected NULL/0 for this field, got '" + operand + "'");
        }
        return 0;
    }

    /** A register such as "R3". */
    static long encodeRegister(FieldSpec field, String operand, int lineNo, String mnemonic) {
        if (!operand.toUpperCase().startsWith("R")) {
            throw error(lineNo,
                mnemonic + " expected a register like 'R3', got '" + operand + "'");
        }

        int number = parseIntStrict(operand.substring(1), lineNo);
        int max = (1 << field.width) - 1;

        if (number < 0 || number > max) {
            throw error(lineNo, "register " + operand + " out of range 0.." + max);
        }
        return number;
    }

    /**
     * An immediate value. Accepts either a signed or an unsigned number that
     * fits in the field; the value is truncated to the field width later.
     */
    static long encodeImmediate(FieldSpec field, String operand, int lineNo) {
        long value = parseNumber(operand, lineNo);

        long min = -(1L << (field.width - 1));
        long max = mask(field.width);

        if (value < min || value > max) {
            throw error(lineNo,
                "immediate " + operand + " does not fit in " + field.width
                + " bits (range " + min + ".." + max + ")");
        }
        return value;
    }

    /** An address: a decimal/hex number, or the name of a label. */
    static long encodeAddress(
            FieldSpec field, String operand, Map<String, Integer> labels, int lineNo) {

        long max = mask(field.width);

        if (looksLikeNumber(operand)) {
            long value = parseNumber(operand, lineNo);
            if (value < 0 || value > max) {
                throw error(lineNo,
                    "address " + operand + " does not fit in " + field.width
                    + " bits (range 0.." + max + ")");
            }
            return value;
        }

        Integer labelAddress = labels.get(operand.toUpperCase());
        if (labelAddress == null) {
            throw error(lineNo, "undefined label '" + operand + "'");
        }
        if (labelAddress > max) {
            throw error(lineNo,
                "label address " + labelAddress + " does not fit in " + field.width + " bits");
        }
        return labelAddress;
    }


    // =========================================================================
    // 10. NUMBER PARSING
    // =========================================================================
    /** True for decimal ("12", "-3") or hex ("0x0C", "-0x0C") literals. */
    static boolean looksLikeNumber(String token) {
        return token.matches("-?(0[xX][0-9a-fA-F]+|[0-9]+)");
    }

    /** Parses a decimal or hex literal (hex may be negated: -0x10). */
    static long parseNumber(String token, int lineNo) {
        try {
            String text = token.trim();
            String lower = text.toLowerCase();

            if (lower.startsWith("-0x")) {
                return -Long.parseLong(text.substring(3), 16);
            }
            if (lower.startsWith("0x")) {
                return Long.parseLong(text.substring(2), 16);
            }
            return Long.parseLong(text);

        } catch (NumberFormatException e) {
            throw error(lineNo, "invalid immediate '" + token + "'");
        }
    }
    static int parseIntStrict(String text, int lineNo) { // With Validation/Error Handling
        try {
            return Integer.parseInt(text);
        } catch (NumberFormatException e) {
            throw error(lineNo, "expected an integer, got '" + text + "'");
        }
    }
    // =========================================================================
    // 11. OUTPUT
    /** Echoes each encoded word to stdout as hex. */
    static void printHex(List<AssembledLine> program) {
        for (AssembledLine line : program) {
            System.out.println(toHex(line.encoded));
        }
    }

    /** Writes the program to a file: CSV if the name ends in .csv, else plain hex. */
    static void writeOutput(List<AssembledLine> program, String outputPath) throws IOException {
        boolean csv = outputPath.toLowerCase().endsWith(".csv");
        StringBuilder out = new StringBuilder();
        if (csv) {
            out.append("address,hex,binary,source\n");
        }
        for (AssembledLine line : program) {
            if (csv) {
                out.append(toCsvRow(line));
            } else {
                out.append(toHex(line.encoded)).append('\n');
            }
        }
        Files.write(Paths.get(outputPath), out.toString().getBytes());
    }

    /** address,hex,binary,"source"  (double quotes in the source become single quotes). */
    static String toCsvRow(AssembledLine line) {
        String source = line.sourceLine.replace("\"", "'");

        return line.address
            + "," + toHex(line.encoded)
            + "," + toBinaryString(line.encoded, INSTRUCTION_WIDTH)
            + ",\"" + source + "\"\n";
    }
    static String toHex(int value) {
        return String.format("%0" + HEX_DIGITS + "X", value);
    }
    /** The low `width` bits of value, as a zero-padded binary string. */
    static String toBinaryString(int value, int width) {
        String padded = String.format("%" + width + "s", Integer.toBinaryString(value))
                              .replace(' ', '0');
        return padded.substring(padded.length() - width);
    }
}