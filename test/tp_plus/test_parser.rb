require 'test_helper'

class TestParser < Test::Unit::TestCase
  include TPPlus::Nodes

  def setup
    @scanner = TPPlus::Scanner.new
    @parser  = TPPlus::Parser.new @scanner
    @interpreter = @parser.interpreter
  end

  def parse(s)
    @scanner.scan_setup(s)
    @parser.parse
  end

  def last_node
    @last_node ||= @interpreter.nodes.last
  end

  def assert_node_type(t, n)
    assert_equal t, n.class
  end

  def test_minimum_prog
    parse("")
  end

  def blank_prog
    parse("\n\n\n\n\n")
  end

  def test_comment
    parse("# foo")
    assert_node_type CommentNode, last_node
  end

  def test_numreg_definition
    parse("foo := R[1]")
    assert_node_type DefinitionNode, last_node
  end

  def test_assignment
    parse("foo = 1")
    assert_node_type AssignmentNode, last_node
  end

  def test_label_definition
    parse("@foo")
    assert_not_nil @interpreter.labels[:foo]
  end

  def test_duplicate_label_error
    assert_raise(RuntimeError) do
      parse("@foo\n@foo")
    end
  end

  def test_jump_to
    parse("@foo\njump_to @foo")
    assert_node_type JumpNode, last_node
  end

  def test_plus_equal
    parse("foo += 1")
    l = last_node
    assert_node_type AssignmentNode, l
    assert_node_type VarNode, l.identifier
    assert_node_type ExpressionNode, l.assignable
    assert_node_type VarNode, l.assignable.left_op
  end

  def test_minus_equal
    parse("foo -= 1")
    l = last_node
    assert_node_type AssignmentNode, l
    assert_node_type VarNode, l.identifier
    assert_node_type ExpressionNode, l.assignable
    assert_node_type VarNode, l.assignable.left_op
  end

  def test_turn_on
    parse("turn_on foo")
    assert_node_type IOMethodNode, last_node
  end

  def test_turn_off
    parse("turn_off foo")
    assert_node_type IOMethodNode, last_node
  end

  def test_toggle
    parse("toggle foo")
    assert_node_type IOMethodNode, last_node
  end

  def test_motion
    parse("linear_move.to(home).at(2000mm/s).term(0)")
    assert_node_type MotionNode, last_node
  end

  def test_simple_if
    parse("if 1==1 \n\n\njump_to @foo\nend")
    assert_node_type ConditionalNode, last_node
  end

  def test_if_with_else
    parse("if 1==1 \n\n\njump_to @foo\n else \n# something\nend")
    assert_node_type ConditionalNode, last_node
  end

  def test_simple_unless
    parse("unless 1==1\njump_to @foo\nend")
    assert_node_type ConditionalNode, last_node
  end
end