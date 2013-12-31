#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.10
# from Racc grammer file "".
#

require 'racc/parser.rb'
module TPPlus
  class Parser < Racc::Parser


  include TPPlus::Nodes

  attr_reader :interpreter
  def initialize(scanner, interpreter = TPPlus::Interpreter.new)
    @scanner       = scanner
    @interpreter   = interpreter
    super()
  end

  def next_token
    t = @scanner.next_token
    @interpreter.line_count += 1 if t == [:NEWLINE,"\n"]

    puts t.inspect
    t
  end

  def parse
    do_parse
    @interpreter
  rescue Racc::ParseError => e
    raise "Parse error on line #{@interpreter.line_count+1}: #{e}"
  end
##### State transition tables begin ###

racc_action_table = [
    15,    18,     9,     8,    15,    18,     9,     8,    93,    18,
    14,    33,    25,    38,    14,    18,    19,    18,    73,    16,
    19,    39,    40,    16,    19,    15,    18,     9,     8,    76,
    19,    64,    19,    33,    25,    14,    12,    33,    25,    13,
    12,    19,    43,    13,    16,    41,    15,    18,     9,     8,
    15,    76,     9,     8,    33,    25,    14,    54,    55,    81,
    14,    12,    19,    56,    13,    16,    71,    69,    70,    16,
    82,    15,    18,     9,     8,    58,    59,    60,    62,    83,
    61,    14,    12,   102,   103,    13,    12,    19,    84,    13,
    16,    48,    49,    52,    53,    50,    51,    54,    55,    58,
    59,    60,    62,    56,    61,    33,    25,    12,    33,    25,
    13,    33,    25,    33,    25,    37,    36,    87,    35,    26,
    25,    89,    25,    91,    92,    74,    94,    95,    96,    97,
   100,   100,    21,   104,   105,    33,    33,   109,   110,   111 ]

racc_action_check = [
     0,     0,     0,     0,    34,    34,    34,    34,    84,    23,
     0,    74,    74,    17,    34,     2,     0,    44,    39,     0,
    34,    17,    17,    34,    23,    76,    76,    76,    76,    45,
     2,    35,    44,    47,    47,    76,     0,    12,    12,     0,
    34,    76,    26,    34,    76,    21,     4,     4,     4,     4,
    22,    63,    22,    22,    13,    13,     4,    77,    77,    64,
    22,    76,     4,    77,    76,     4,    37,    37,    37,    22,
    69,    27,    27,    27,    27,    29,    29,    29,    29,    70,
    29,    27,     4,   100,   100,     4,    22,    27,    71,    22,
    27,    28,    28,    28,    28,    28,    28,    28,    28,    78,
    78,    78,    78,    28,    78,    46,    46,    27,    73,    73,
    27,    38,    38,    57,    57,    16,    15,    75,    14,     9,
     8,    80,    81,    82,    83,    40,    90,    91,    92,    93,
    94,    98,     1,   102,   103,   104,   105,   106,   107,   108 ]

racc_action_pointer = [
    -3,   132,    11,   nil,    43,   nil,   nil,   nil,    98,   116,
   nil,   nil,    16,    33,   104,    94,   113,   -10,   nil,   nil,
   nil,    45,    47,     5,   nil,   nil,    20,    68,    66,    42,
   nil,   nil,   nil,   nil,     1,    16,   nil,    58,    90,    -5,
   102,   nil,   nil,   nil,    13,   -11,    84,    12,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    92,   nil,   nil,
   nil,   nil,   nil,    11,    16,   nil,   nil,   nil,   nil,    25,
    34,    43,   nil,    87,   -10,    76,    22,    26,    66,   nil,
    80,   100,   102,   103,   -13,   nil,   nil,   nil,   nil,   nil,
    82,    81,    82,    83,   116,   nil,   nil,   nil,   117,   nil,
    67,   nil,    90,    91,   114,   115,    93,   114,    95,   nil,
   nil,   nil ]

racc_action_default = [
    -1,   -65,    -2,    -3,    -7,   -10,   -11,   -12,   -65,   -65,
   -15,   -16,   -65,   -65,   -65,   -65,   -32,   -65,   -62,   -63,
   -64,   -65,    -5,    -6,   -13,   -32,   -65,    -8,   -33,   -35,
   -37,   -53,   -54,   -55,    -8,   -65,   -27,   -65,   -65,   -65,
   -65,   112,    -4,   -14,    -9,   -20,   -65,   -65,   -39,   -40,
   -41,   -42,   -43,   -44,   -45,   -46,   -47,   -65,   -48,   -49,
   -50,   -51,   -52,   -20,   -65,   -28,   -56,   -57,   -58,   -65,
   -65,   -65,   -29,   -65,   -65,   -65,    -8,   -34,   -36,   -38,
   -65,   -65,   -65,   -65,   -65,   -30,   -31,   -17,   -19,   -18,
   -65,   -65,   -65,   -65,   -65,   -59,   -60,   -61,   -21,   -22,
   -65,   -23,   -65,   -65,   -65,   -65,   -65,   -65,   -65,   -24,
   -26,   -25 ]

racc_goto_table = [
    17,    75,    27,    34,    17,    45,    99,     2,    24,    22,
   101,    23,    63,   107,   108,   106,    42,    98,     1,    80,
    65,    77,    17,    46,    78,    79,    66,    17,    72,    67,
    22,    68,   nil,   nil,    17,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    22,   nil,   nil,    88,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    85,    86,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    17,   nil,   nil,   nil,
   nil,    90 ]

racc_goto_check = [
     9,    13,    12,    12,     9,     5,    15,     2,     9,     4,
    15,     2,     5,    17,    17,    16,     3,    14,     1,    13,
    18,    19,     9,    20,    21,    23,    25,     9,    12,    26,
     4,    27,   nil,   nil,     9,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,     4,   nil,   nil,     5,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    12,    12,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,     9,   nil,   nil,   nil,
   nil,     9 ]

racc_goto_pointer = [
   nil,    18,     7,    -6,     7,   -22,   nil,   nil,   nil,     0,
   nil,   nil,   -10,   -44,   -77,   -88,   -89,   -91,   -17,   -25,
    -5,   -23,   nil,   -32,   nil,   -11,    -8,    -6,   nil ]

racc_goto_default = [
   nil,   nil,    44,     3,     4,   nil,     5,     6,     7,    32,
    10,    11,   nil,   nil,   nil,   nil,   nil,    31,   nil,    28,
   nil,    29,    47,    30,    57,   nil,   nil,   nil,    20 ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 48, :_reduce_none,
  1, 48, :_reduce_2,
  1, 49, :_reduce_3,
  3, 49, :_reduce_4,
  2, 49, :_reduce_5,
  2, 49, :_reduce_6,
  1, 49, :_reduce_7,
  0, 52, :_reduce_none,
  1, 52, :_reduce_9,
  1, 50, :_reduce_10,
  1, 50, :_reduce_11,
  1, 50, :_reduce_12,
  2, 50, :_reduce_13,
  3, 50, :_reduce_14,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  5, 58, :_reduce_17,
  5, 58, :_reduce_18,
  2, 60, :_reduce_19,
  0, 60, :_reduce_none,
  7, 55, :_reduce_21,
  1, 61, :_reduce_22,
  2, 61, :_reduce_23,
  5, 62, :_reduce_24,
  5, 62, :_reduce_25,
  2, 63, :_reduce_26,
  2, 57, :_reduce_27,
  3, 53, :_reduce_28,
  3, 54, :_reduce_29,
  4, 54, :_reduce_30,
  4, 54, :_reduce_31,
  1, 56, :_reduce_32,
  1, 59, :_reduce_33,
  3, 59, :_reduce_34,
  1, 66, :_reduce_35,
  3, 66, :_reduce_36,
  1, 68, :_reduce_none,
  3, 68, :_reduce_38,
  1, 67, :_reduce_none,
  1, 67, :_reduce_none,
  1, 67, :_reduce_none,
  1, 67, :_reduce_none,
  1, 67, :_reduce_none,
  1, 67, :_reduce_none,
  1, 69, :_reduce_none,
  1, 69, :_reduce_none,
  1, 69, :_reduce_none,
  1, 71, :_reduce_none,
  1, 71, :_reduce_none,
  1, 71, :_reduce_none,
  1, 71, :_reduce_none,
  1, 71, :_reduce_none,
  1, 70, :_reduce_none,
  1, 70, :_reduce_none,
  1, 64, :_reduce_55,
  1, 65, :_reduce_none,
  1, 65, :_reduce_none,
  1, 65, :_reduce_none,
  4, 72, :_reduce_59,
  4, 74, :_reduce_60,
  4, 73, :_reduce_61,
  1, 75, :_reduce_62,
  1, 51, :_reduce_63,
  1, 51, :_reduce_64 ]

racc_reduce_n = 65

racc_shift_n = 112

racc_token_table = {
  false => 0,
  :error => 1,
  :ASSIGN => 2,
  :AT_SYM => 3,
  :COMMENT => 4,
  :JUMP => 5,
  :IO_METHOD => 6,
  :INPUT => 7,
  :OUTPUT => 8,
  :NUMREG => 9,
  :POSREG => 10,
  :VREG => 11,
  :SREG => 12,
  :MOVE => 13,
  :DOT => 14,
  :TO => 15,
  :AT => 16,
  :TERM => 17,
  :SEMICOLON => 18,
  :NEWLINE => 19,
  :REAL => 20,
  :DIGIT => 21,
  :WORD => 22,
  :EQUAL => 23,
  :UNITS => 24,
  :EEQUAL => 25,
  :NOTEQUAL => 26,
  :GTE => 27,
  :LTE => 28,
  :LT => 29,
  :GT => 30,
  :PLUS => 31,
  :MINUS => 32,
  :STAR => 33,
  :SLASH => 34,
  :DIV => 35,
  :AND => 36,
  :OR => 37,
  :MOD => 38,
  :IF => 39,
  :ELSE => 40,
  :END => 41,
  :UNLESS => 42,
  "(" => 43,
  ")" => 44,
  "[" => 45,
  "]" => 46 }

racc_nt_base = 47

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "ASSIGN",
  "AT_SYM",
  "COMMENT",
  "JUMP",
  "IO_METHOD",
  "INPUT",
  "OUTPUT",
  "NUMREG",
  "POSREG",
  "VREG",
  "SREG",
  "MOVE",
  "DOT",
  "TO",
  "AT",
  "TERM",
  "SEMICOLON",
  "NEWLINE",
  "REAL",
  "DIGIT",
  "WORD",
  "EQUAL",
  "UNITS",
  "EEQUAL",
  "NOTEQUAL",
  "GTE",
  "LTE",
  "LT",
  "GT",
  "PLUS",
  "MINUS",
  "STAR",
  "SLASH",
  "DIV",
  "AND",
  "OR",
  "MOD",
  "IF",
  "ELSE",
  "END",
  "UNLESS",
  "\"(\"",
  "\")\"",
  "\"[\"",
  "\"]\"",
  "$start",
  "program",
  "statements",
  "statement",
  "terminator",
  "block",
  "definition",
  "assignment",
  "motion_statement",
  "var",
  "label_definition",
  "conditional",
  "expression",
  "else_block",
  "motion_modifiers",
  "motion_modifier",
  "speed",
  "number",
  "definable",
  "simple_expression",
  "relop",
  "term",
  "addop",
  "factor",
  "mulop",
  "numreg",
  "output",
  "posreg",
  "comment" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

def _reduce_2(val, _values, result)
 @interpreter.nodes = val[0] 
    result
end

def _reduce_3(val, _values, result)
 result = val 
    result
end

def _reduce_4(val, _values, result)
 result = val[0] << val[1] << val[2] 
    result
end

def _reduce_5(val, _values, result)
 result = val[0] << val[1] 
    result
end

def _reduce_6(val, _values, result)
 result = [val[0]] << val[1] 
    result
end

def _reduce_7(val, _values, result)
 result = [val[0]] 
    result
end

# reduce 8 omitted

def _reduce_9(val, _values, result)
 result = val[0] 
    result
end

def _reduce_10(val, _values, result)
 result = val[0] 
    result
end

def _reduce_11(val, _values, result)
 result = val[0] 
    result
end

def _reduce_12(val, _values, result)
 result = val[0] 
    result
end

def _reduce_13(val, _values, result)
 result = IOMethodNode.new(val[0],val[1]) 
    result
end

def _reduce_14(val, _values, result)
 result = JumpNode.new(val[2]) 
    result
end

# reduce 15 omitted

# reduce 16 omitted

def _reduce_17(val, _values, result)
 result = ConditionalNode.new("if",val[1],val[2],val[3]) 
    result
end

def _reduce_18(val, _values, result)
 result = ConditionalNode.new("unless",val[1],val[2],val[3]) 
    result
end

def _reduce_19(val, _values, result)
 result = val[1] 
    result
end

# reduce 20 omitted

def _reduce_21(val, _values, result)
 result = MotionNode.new(val[0],val[4],val[6]) 
    result
end

def _reduce_22(val, _values, result)
 result = val 
    result
end

def _reduce_23(val, _values, result)
 result = val[0] << val[1] 
    result
end

def _reduce_24(val, _values, result)
 result = SpeedNode.new(val[3]) 
    result
end

def _reduce_25(val, _values, result)
 result = TerminationNode.new(val[3]) 
    result
end

def _reduce_26(val, _values, result)
 result = [val[0],UnitsNode.new(val[1])] 
    result
end

def _reduce_27(val, _values, result)
 result = LabelDefinitionNode.new(val[1]) 
    result
end

def _reduce_28(val, _values, result)
 result = DefinitionNode.new(val[0],val[2]) 
    result
end

def _reduce_29(val, _values, result)
 result = AssignmentNode.new(val[0],val[2]) 
    result
end

def _reduce_30(val, _values, result)
 result = AssignmentNode.new(
                                           val[0],
                                           ExpressionNode.new(val[0],val[1],val[3])
                                         )
                                       
    result
end

def _reduce_31(val, _values, result)
 result = AssignmentNode.new(
                                           val[0],
                                           ExpressionNode.new(val[0],val[1],val[3])
                                         )
                                       
    result
end

def _reduce_32(val, _values, result)
 result = VarNode.new(val[0]) 
    result
end

def _reduce_33(val, _values, result)
 result = val[0] 
    result
end

def _reduce_34(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

def _reduce_35(val, _values, result)
 result = val[0] 
    result
end

def _reduce_36(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

# reduce 37 omitted

def _reduce_38(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

# reduce 39 omitted

# reduce 40 omitted

# reduce 41 omitted

# reduce 42 omitted

# reduce 43 omitted

# reduce 44 omitted

# reduce 45 omitted

# reduce 46 omitted

# reduce 47 omitted

# reduce 48 omitted

# reduce 49 omitted

# reduce 50 omitted

# reduce 51 omitted

# reduce 52 omitted

# reduce 53 omitted

# reduce 54 omitted

def _reduce_55(val, _values, result)
 result = DigitNode.new(val[0]) 
    result
end

# reduce 56 omitted

# reduce 57 omitted

# reduce 58 omitted

def _reduce_59(val, _values, result)
 result = NumregNode.new(val[2].to_i) 
    result
end

def _reduce_60(val, _values, result)
 result = PosregNode.new(val[2].to_i) 
    result
end

def _reduce_61(val, _values, result)
 result = IONode.new(val[0], val[2].to_i) 
    result
end

def _reduce_62(val, _values, result)
 result = CommentNode.new(val[0]) 
    result
end

def _reduce_63(val, _values, result)
 result = TerminatorNode.new 
    result
end

def _reduce_64(val, _values, result)
 result = val[0] 
    result
end

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module TPPlus
