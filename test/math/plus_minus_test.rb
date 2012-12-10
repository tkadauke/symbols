# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class PlusMinusTest < Test::Unit::TestCase
  def test_should_define_unary_plus_minus_operator
    assert_equal [3, -3], 3.±.to_a
    assert_equal [∞, -∞], ∞.±.to_a
  end
  
  def test_should_define_binary_plus_minus_operator
    assert_equal [8, 2], 5.±(3).to_a
  end
  
  def test_should_define_plus_minus_prefix
    assert_equal [3, -3], ±(3).to_a
    assert_equal [∞, -∞], ±(∞).to_a
  end
end
