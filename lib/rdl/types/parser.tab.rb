#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.9
# from Racc grammer file "".
#

require 'racc/parser.rb'


require_relative 'lexer.rex'

module RDL::Type

class Parser < Racc::Parser

module_eval(<<'...end parser.racc/module_eval...', 'parser.racc', 183)

def initialize()
  @yydebug = true
end

...end parser.racc/module_eval...
##### State transition tables begin ###

racc_action_table = [
   116,   105,   101,    97,    98,    99,   100,   102,   103,   104,
   106,   107,   108,   109,   110,   111,    96,   112,   113,    95,
     7,   114,   115,   117,   118,   119,   120,   116,   105,   101,
    97,    98,    99,   100,   102,   103,   104,   106,   107,   108,
   109,   110,   111,    96,   112,   113,    95,    66,   114,   115,
   117,   118,   119,   120,   116,   105,   101,    97,    98,    99,
   100,   102,   103,   104,   106,   107,   108,   109,   110,   111,
    96,   112,   113,    95,    67,   114,   115,   117,   118,   119,
   120,   116,   105,   101,    97,    98,    99,   100,   102,   103,
   104,   106,   107,   108,   109,   110,   111,    96,   112,   113,
    95,    68,   114,   115,   117,   118,   119,   120,    20,    69,
    18,    19,    64,    21,    28,    30,    13,    15,     5,     6,
    11,    70,    16,    56,    17,    37,    31,    32,    20,    71,
    18,    19,     7,    21,    28,    30,    13,    15,    72,    37,
    11,    73,    16,    75,    17,    63,    31,    32,    20,    78,
    18,    19,    38,    21,    62,    14,    13,    15,    83,    56,
    11,    59,    16,    86,    17,    20,    81,    18,    19,    55,
    21,    54,    14,    13,    15,     7,    53,    11,    91,    16,
    20,    17,    18,    19,    65,    21,    52,    14,    13,    15,
    51,   122,    11,   123,    16,    20,    17,    18,    19,    37,
    21,   125,    14,    13,    15,    20,   126,    18,    19,    16,
    21,    17,    47,    13,    15,    36,    34,    11,     7,    16,
    20,    17,    18,    19,   130,    21,   132,    14,    13,    15,
   133,    69,    11,   134,    16,    20,    17,    18,    19,     8,
    21,   136,    14,    13,    15,   nil,   nil,    11,   nil,    16,
    20,    17,    18,    19,   nil,    21,   nil,    14,    13,    15,
    20,   nil,    18,    19,    16,    21,    17,    14,    13,    15,
    20,   nil,    18,    19,    16,    21,    17,    14,    13,    15,
   nil,   nil,    11,   nil,    16,    20,    17,    18,    19,   nil,
    21,   nil,    14,    13,    15,   nil,   nil,    11,   nil,    16,
    20,    17,    18,    19,   nil,    21,   nil,    14,    13,    15,
    20,   nil,    18,    19,    16,    21,    17,    14,    13,    15,
    20,   nil,    18,    19,    16,    21,    17,    14,    13,    15,
   nil,   nil,    11,   nil,    16,    20,    17,    18,    19,   nil,
    21,   nil,    14,    13,    15,   nil,   nil,    11,   nil,    16,
    42,    17,    40,    41,   nil,   nil,    42,    38,    40,    41,
    43,   nil,     7,    38,   nil,   nil,    43 ]

racc_action_check = [
   134,   134,   134,   134,   134,   134,   134,   134,   134,   134,
   134,   134,   134,   134,   134,   134,   134,   134,   134,   134,
    75,   134,   134,   134,   134,   134,   134,    95,    95,    95,
    95,    95,    95,    95,    95,    95,    95,    95,    95,    95,
    95,    95,    95,    95,    95,    95,    95,    44,    95,    95,
    95,    95,    95,    95,    78,    78,    78,    78,    78,    78,
    78,    78,    78,    78,    78,    78,    78,    78,    78,    78,
    78,    78,    78,    78,    45,    78,    78,    78,    78,    78,
    78,    94,    94,    94,    94,    94,    94,    94,    94,    94,
    94,    94,    94,    94,    94,    94,    94,    94,    94,    94,
    94,    46,    94,    94,    94,    94,    94,    94,     7,    47,
     7,     7,    42,     7,     7,     7,     7,     7,     0,     0,
     7,    48,     7,    30,     7,    47,     7,     7,    53,    49,
    53,    53,     0,    53,    53,    53,    53,    53,    50,    30,
    53,    51,    53,    52,    53,    41,    53,    53,    56,    54,
    56,    56,    55,    56,    40,    56,    56,    56,    61,    38,
    56,    35,    56,    64,    56,    81,    56,    81,    81,    29,
    81,    27,    81,    81,    81,    69,    26,    81,    74,    81,
    91,    81,    91,    91,    43,    91,    23,    91,    91,    91,
    20,    86,    91,    89,    91,   122,    91,   122,   122,    14,
   122,    92,   122,   122,   122,    17,    93,    17,    17,   122,
    17,   122,    17,    17,    17,    12,     8,    17,     6,    17,
    11,    17,    11,    11,   123,    11,   124,    11,    11,    11,
   128,   130,    11,   132,    11,     5,    11,     5,     5,     1,
     5,   135,     5,     5,     5,   nil,   nil,     5,   nil,     5,
    62,     5,    62,    62,   nil,    62,   nil,    62,    62,    62,
    65,   nil,    65,    65,    62,    65,    62,    65,    65,    65,
    31,   nil,    31,    31,    65,    31,    65,    31,    31,    31,
   nil,   nil,    31,   nil,    31,    32,    31,    32,    32,   nil,
    32,   nil,    32,    32,    32,   nil,   nil,    32,   nil,    32,
    63,    32,    63,    63,   nil,    63,   nil,    63,    63,    63,
    36,   nil,    36,    36,    63,    36,    63,    36,    36,    36,
    37,   nil,    37,    37,    36,    37,    36,    37,    37,    37,
   nil,   nil,    37,   nil,    37,    70,    37,    70,    70,   nil,
    70,   nil,    70,    70,    70,   nil,   nil,    70,   nil,    70,
    16,    70,    16,    16,   nil,   nil,    66,    16,    66,    66,
    16,   nil,    16,    66,   nil,   nil,    66 ]

racc_action_pointer = [
   113,   239,   nil,   nil,   nil,   228,   199,   101,   216,   nil,
   nil,   213,   211,   nil,   172,   nil,   343,   198,   nil,   nil,
   176,   nil,   nil,   166,   nil,   nil,   174,   157,   nil,   167,
   112,   263,   278,   nil,   nil,   141,   303,   313,   148,   nil,
   146,   137,    98,   176,    45,    52,    79,    98,   119,   105,
   114,   119,   122,   121,   128,   138,   141,   nil,   nil,   nil,
   nil,   130,   243,   293,   141,   253,   349,   nil,   nil,   156,
   328,   nil,   nil,   nil,   175,     1,   nil,   nil,    52,   nil,
   nil,   158,   nil,   nil,   nil,   nil,   183,   nil,   nil,   191,
   nil,   173,   179,   184,    79,    25,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   188,   210,   212,   nil,   nil,   nil,   208,   nil,
   220,   nil,   212,   nil,    -2,   219,   nil ]

racc_action_default = [
   -85,   -85,    -1,    -2,    -3,   -85,   -85,   -11,   -85,    -4,
   -59,   -85,   -71,   -73,   -74,   -75,   -63,   -85,   -81,   -82,
   -85,   -84,    -5,   -85,   -12,   -13,   -14,   -17,   -20,   -21,
   -74,   -85,   -85,   -54,   137,   -85,   -85,   -85,   -85,   -64,
   -85,   -85,   -85,   -85,   -69,   -85,   -85,   -74,   -61,   -85,
   -85,   -85,   -57,   -85,   -19,   -85,   -85,   -52,   -53,   -60,
   -72,   -85,   -85,   -85,   -85,   -85,   -63,   -77,   -80,   -85,
   -85,   -78,   -79,   -83,   -85,   -85,   -15,   -16,   -85,   -22,
   -23,   -85,   -56,   -76,   -65,   -66,   -85,   -68,   -70,    -9,
   -62,   -85,   -85,   -85,   -24,   -85,   -27,   -28,   -29,   -30,
   -31,   -32,   -33,   -34,   -35,   -36,   -37,   -38,   -39,   -40,
   -41,   -42,   -43,   -44,   -45,   -46,   -47,   -48,   -49,   -50,
   -51,   -55,   -85,   -85,    -6,   -58,   -18,   -25,   -85,   -67,
   -85,   -10,    -7,   -26,   -85,   -85,    -8 ]

racc_goto_table = [
    50,     9,    93,    33,    60,     2,    49,    35,    25,    24,
    39,    22,    46,    80,    23,    74,     4,     3,   127,   128,
     1,    45,   nil,   nil,   nil,   nil,    61,    57,    58,   nil,
    84,    85,   nil,    87,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    33,
   nil,   nil,    82,   nil,    77,    76,    79,   nil,   135,    90,
    39,   nil,    88,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    89,   nil,   nil,   121,   nil,   nil,
    92,   nil,   nil,   nil,   nil,   nil,   nil,   124,   nil,   nil,
   129,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   131 ]

racc_goto_check = [
     9,     5,     8,     5,    17,     2,    18,     5,    11,    10,
    14,     2,    20,    15,     6,     7,     4,     3,     8,     8,
     1,     2,   nil,   nil,   nil,   nil,    18,     5,     5,   nil,
    17,    17,   nil,    17,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     5,
   nil,   nil,     5,   nil,    11,    10,    11,   nil,     8,    18,
    14,   nil,    20,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,     2,   nil,   nil,     5,   nil,   nil,
     2,   nil,   nil,   nil,   nil,   nil,   nil,     5,   nil,   nil,
    17,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,     9 ]

racc_goto_pointer = [
   nil,    20,     5,    17,    16,    -4,     7,   -37,   -76,   -17,
     2,     1,   nil,   nil,    -6,   -43,   nil,   -32,   -11,   nil,
    -4,   nil ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,    48,   nil,   nil,   nil,   nil,
   nil,   nil,    26,    27,    29,   nil,    94,    10,   nil,    44,
   nil,    12 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 31, :_reduce_1,
  1, 31, :_reduce_2,
  1, 31, :_reduce_3,
  2, 33, :_reduce_4,
  2, 34, :_reduce_5,
  6, 32, :_reduce_6,
  7, 32, :_reduce_7,
  10, 32, :_reduce_8,
  3, 39, :_reduce_9,
  5, 39, :_reduce_10,
  0, 36, :_reduce_11,
  1, 36, :_reduce_12,
  1, 36, :_reduce_13,
  1, 40, :_reduce_14,
  3, 40, :_reduce_15,
  3, 40, :_reduce_16,
  1, 42, :_reduce_17,
  5, 42, :_reduce_18,
  2, 42, :_reduce_19,
  1, 42, :_reduce_20,
  1, 41, :_reduce_21,
  3, 41, :_reduce_22,
  3, 44, :_reduce_23,
  1, 38, :_reduce_24,
  2, 38, :_reduce_25,
  3, 38, :_reduce_26,
  1, 46, :_reduce_27,
  1, 46, :_reduce_28,
  1, 46, :_reduce_29,
  1, 46, :_reduce_30,
  1, 46, :_reduce_31,
  1, 46, :_reduce_32,
  1, 46, :_reduce_33,
  1, 46, :_reduce_34,
  1, 46, :_reduce_35,
  1, 46, :_reduce_36,
  1, 46, :_reduce_37,
  1, 46, :_reduce_38,
  1, 46, :_reduce_39,
  1, 46, :_reduce_40,
  1, 46, :_reduce_41,
  1, 46, :_reduce_42,
  1, 46, :_reduce_43,
  1, 46, :_reduce_44,
  1, 46, :_reduce_45,
  1, 46, :_reduce_46,
  1, 46, :_reduce_47,
  1, 46, :_reduce_48,
  1, 46, :_reduce_49,
  1, 46, :_reduce_50,
  1, 46, :_reduce_51,
  2, 43, :_reduce_52,
  2, 43, :_reduce_53,
  1, 43, :_reduce_54,
  2, 45, :_reduce_55,
  1, 45, :_reduce_56,
  0, 37, :_reduce_57,
  3, 37, :_reduce_58,
  1, 35, :_reduce_59,
  3, 35, :_reduce_60,
  1, 48, :_reduce_61,
  3, 48, :_reduce_62,
  0, 49, :_reduce_none,
  1, 49, :_reduce_64,
  3, 49, :_reduce_65,
  3, 49, :_reduce_66,
  5, 49, :_reduce_67,
  3, 49, :_reduce_68,
  1, 50, :_reduce_69,
  3, 50, :_reduce_70,
  1, 47, :_reduce_71,
  3, 47, :_reduce_72,
  1, 51, :_reduce_73,
  1, 51, :_reduce_74,
  1, 51, :_reduce_75,
  4, 51, :_reduce_76,
  3, 51, :_reduce_77,
  3, 51, :_reduce_78,
  3, 51, :_reduce_79,
  3, 51, :_reduce_80,
  1, 51, :_reduce_81,
  1, 51, :_reduce_82,
  3, 51, :_reduce_83,
  1, 51, :_reduce_84 ]

racc_reduce_n = 85

racc_shift_n = 137

racc_token_table = {
  false => 0,
  :error => 1,
  :COMMA => 2,
  :RARROW => 3,
  :OR => 4,
  :HASH_TYPE => 5,
  :HASH_QUERY => 6,
  :CONST_BEGIN => 7,
  :RASSOC => 8,
  :FIXNUM => 9,
  :FLOAT => 10,
  :COLON => 11,
  :DOT => 12,
  :DOTS => 13,
  :ID => 14,
  :SYMBOL => 15,
  :SPECIAL_ID => 16,
  :STRING => 17,
  :PREDCHAR => 18,
  :LPAREN => 19,
  :RPAREN => 20,
  :LBRACE => 21,
  :RBRACE => 22,
  :LBRACKET => 23,
  :RBRACKET => 24,
  :QUERY => 25,
  :STAR => 26,
  :LESS => 27,
  :GREATER => 28,
  :EOF => 29 }

racc_nt_base = 30

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
  "COMMA",
  "RARROW",
  "OR",
  "HASH_TYPE",
  "HASH_QUERY",
  "CONST_BEGIN",
  "RASSOC",
  "FIXNUM",
  "FLOAT",
  "COLON",
  "DOT",
  "DOTS",
  "ID",
  "SYMBOL",
  "SPECIAL_ID",
  "STRING",
  "PREDCHAR",
  "LPAREN",
  "RPAREN",
  "LBRACE",
  "RBRACE",
  "LBRACKET",
  "RBRACKET",
  "QUERY",
  "STAR",
  "LESS",
  "GREATER",
  "EOF",
  "$start",
  "entry",
  "method_type",
  "bare_type",
  "query_type",
  "type_expr",
  "arg_list",
  "block",
  "pred_string",
  "method_sig_list",
  "nonempty_arg_list",
  "named_arg_list",
  "arg",
  "base_arg",
  "named_arg",
  "base_arg_query_only",
  "pred_char",
  "union_type",
  "type_expr_comma_list",
  "hash_expr",
  "hash_expr_comma_list",
  "single_type" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'parser.racc', 18)
  def _reduce_1(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 19)
  def _reduce_2(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 20)
  def _reduce_3(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 23)
  def _reduce_4(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 26)
  def _reduce_5(val, _values, result)
     result = RDL::Type::MethodType.new val[1].args, val[1].block, val[1].ret 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 30)
  def _reduce_6(val, _values, result)
            result = RDL::Type::MethodType.new val[1], val[3], val[5]
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 33)
  def _reduce_7(val, _values, result)
            result = RDL::Type::MethodType.new val[1], val[3], RDL::Type::AnnotatedArgType.new(val[6], val[5])
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 36)
  def _reduce_8(val, _values, result)
            result = RDL::Type::MethodType.new val[1], val[3], RDL::Type::DependentArgType.new(val[6], val[5], val[8])
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 40)
  def _reduce_9(val, _values, result)
     result = [val[0].to_sym, val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 41)
  def _reduce_10(val, _values, result)
     result = [val[0].to_sym, val[2]] + val[4] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 44)
  def _reduce_11(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 45)
  def _reduce_12(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 47)
  def _reduce_13(val, _values, result)
          result = [RDL::Type::FiniteHashType.new(Hash[*val[0]])]
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 50)
  def _reduce_14(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 51)
  def _reduce_15(val, _values, result)
     result = val[2].unshift val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 52)
  def _reduce_16(val, _values, result)
     # named arg list must come last
      result = [val[0], RDL::Type::FiniteHashType.new(Hash[*val[2]])]
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 56)
  def _reduce_17(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 57)
  def _reduce_18(val, _values, result)
    result = RDL::Type::DependentArgType.new(val[1], val[0], val[3])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 58)
  def _reduce_19(val, _values, result)
     result = RDL::Type::AnnotatedArgType.new(val[1], val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 59)
  def _reduce_20(val, _values, result)
     result = RDL::Type::DotsQuery.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 61)
  def _reduce_21(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 62)
  def _reduce_22(val, _values, result)
     result = val[0] + val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 64)
  def _reduce_23(val, _values, result)
     result = [val[0].to_sym, val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 67)
  def _reduce_24(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 68)
  def _reduce_25(val, _values, result)
     result = val[0] + val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 69)
  def _reduce_26(val, _values, result)
     result = val[0] + val[1] + val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 72)
  def _reduce_27(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 73)
  def _reduce_28(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 74)
  def _reduce_29(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 75)
  def _reduce_30(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 76)
  def _reduce_31(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 77)
  def _reduce_32(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 78)
  def _reduce_33(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 79)
  def _reduce_34(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 80)
  def _reduce_35(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 81)
  def _reduce_36(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 82)
  def _reduce_37(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 83)
  def _reduce_38(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 84)
  def _reduce_39(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 85)
  def _reduce_40(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 86)
  def _reduce_41(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 87)
  def _reduce_42(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 88)
  def _reduce_43(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 89)
  def _reduce_44(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 90)
  def _reduce_45(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 91)
  def _reduce_46(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 92)
  def _reduce_47(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 93)
  def _reduce_48(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 94)
  def _reduce_49(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 95)
  def _reduce_50(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 96)
  def _reduce_51(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 98)
  def _reduce_52(val, _values, result)
     result = RDL::Type::OptionalType.new val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 99)
  def _reduce_53(val, _values, result)
     result = RDL::Type::VarargType.new val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 100)
  def _reduce_54(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 102)
  def _reduce_55(val, _values, result)
     result = RDL::Type::OptionalType.new val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 103)
  def _reduce_56(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 106)
  def _reduce_57(val, _values, result)
     result = nil 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 107)
  def _reduce_58(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 110)
  def _reduce_59(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 111)
  def _reduce_60(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 114)
  def _reduce_61(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 115)
  def _reduce_62(val, _values, result)
     result = [val[0]] + val[2] 
    result
  end
.,.,

# reduce 63 omitted

module_eval(<<'.,.,', 'parser.racc', 118)
  def _reduce_64(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 119)
  def _reduce_65(val, _values, result)
     result = [val[0].to_i, val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 120)
  def _reduce_66(val, _values, result)
     result = [val[0].to_f, val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 122)
  def _reduce_67(val, _values, result)
        result = [Kernel.const_get(val[0]), val[2]]
  
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 124)
  def _reduce_68(val, _values, result)
     result = [val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 127)
  def _reduce_69(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 128)
  def _reduce_70(val, _values, result)
     result = val[0] + val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 131)
  def _reduce_71(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 132)
  def _reduce_72(val, _values, result)
     result = RDL::Type::UnionType.new val[0], val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 135)
  def _reduce_73(val, _values, result)
     result = RDL::Type::SingletonType.new(val[0].to_sym) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 137)
  def _reduce_74(val, _values, result)
          if val[0] == 'nil' then
        result = RDL::Type::NilType.new
      elsif val[0] =~ /^[a-z_]+\w*\'?/ then
        result = RDL::Type::VarType.new(val[0].to_sym)
      else
        result = RDL::Type::NominalType.new val[0]
      end
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 146)
  def _reduce_75(val, _values, result)
          if $__rdl_special_types.has_key? val[0] then
        result = $__rdl_special_types[val[0]]
      else
        fail "Unexpected special type identifier #{val[0]}"
      end
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 153)
  def _reduce_76(val, _values, result)
          n = RDL::Type::NominalType.new(val[0])
      result = RDL::Type::GenericType.new(n, *val[2])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 156)
  def _reduce_77(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 158)
  def _reduce_78(val, _values, result)
          result = RDL::Type::TupleType.new(*val[1])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 161)
  def _reduce_79(val, _values, result)
          result = RDL::Type::StructuralType.new(Hash[*val[1]])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 164)
  def _reduce_80(val, _values, result)
          result = RDL::Type::FiniteHashType.new(Hash[*val[1]])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 166)
  def _reduce_81(val, _values, result)
     result = RDL::Type::SingletonType.new(val[0].to_i) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 167)
  def _reduce_82(val, _values, result)
     result = RDL::Type::SingletonType.new(val[0].to_f) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 169)
  def _reduce_83(val, _values, result)
          result =  RDL::Type::SingletonType.new(Kernel.const_get(val[1]))
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 173)
  def _reduce_84(val, _values, result)
     result = RDL::Type::WildQuery.new 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser


end
