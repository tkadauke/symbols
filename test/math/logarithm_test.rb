# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class LogarithmTest < Test::Unit::TestCase
  def test_should_calculate_logarithms
    assert_equal 2, log₂(4)
    assert_equal 6, log₂(64)
    assert_equal 1, log₁₀(10)
    assert_equal 2, log₁₀(100)
  end
  
  def test_should_calculate_ln
    assert_equal 1, ln(e)
  end
end
