data = IO.read(File.join(File.dirname(__FILE__), "instructions.tsv"))
instructions = data.split(/\n/).map do |line|
  parts = line.split(/\t/)[0..2].map(&:strip)
  opcode = parts[1].gsub(/\$/, "0x").to_i(16)
  instr_parts = parts[0].gsub(".", "_").split(" ")
  enum_name = instr_parts.first.upcase
  operands = instr_parts[1..]
  [enum_name, opcode, parts[0], operands]
end


header = <<-HEADER
package com.dylibso.chicory.wasm.types;

import java.util.HashMap;
import java.util.Map;

/**
 *  This file is generated by gen-instr.rb. Do not edit by hand.
 */
public enum OpCode {
HEADER

middle = <<-MIDDLE

    private final int opcode;

    OpCode(int opcode) { this.opcode = opcode; }

    public int opcode() { return opcode; }

    private static final Map<Integer, OpCode> byOpCode = new HashMap<>();

    static {
        for (OpCode e : OpCode.values())
            byOpCode.put(e.opcode(), e);
    }

    public static OpCode byOpCode(int opcode) { return byOpCode.get(opcode); }

    private static final Map<OpCode, WasmEncoding[]> signature = new HashMap<>();

    public static WasmEncoding[] getSignature(OpCode o) {
        return signature.get(o);
    }

    static {
MIDDLE

code = header
instructions.each_with_index do |instr, i|
    sep = i == instructions.length - 1 ? ";" : ","
    code << "\t#{instr[0]}(0x#{"%02X" % instr[1]})#{sep} // #{instr[2]}\n"
end

code << middle

instructions.each_with_index do |instr, i|
    sig = instr[3].map do |p|
        case p
        when "<varuint>"
          "WasmEncoding.VARUINT"
        when "<varsint32>"
          "WasmEncoding.VARSINT32"
        when "<varsint64>"
          "WasmEncoding.VARSINT64"
        when "<float32>"
          "WasmEncoding.FLOAT32"
        when "<float64>"
          "WasmEncoding.FLOAT64"
        when "vec(<varuint>)"
          "WasmEncoding.VEC_VARUINT"
        else
          raise "Unknown param #{p}"
        end
    end.join(",")
    code << "\t\tsignature.put(#{instr[0]}, new WasmEncoding[]{#{sig}});\n"
end

code << <<-FOOTER
  }
}
FOOTER

IO.write("src/main/java/com/dylibso/chicory/wasm/types/OpCode.java", code)

