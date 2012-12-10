# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class ComparisonTest < Test::Unit::TestCase
  def test_should_define_lower_equal_operator
    assert 3.≤ 4
    assert 2.5.≤ 4
    assert 5.≤ 5
  end

  def test_should_define_greater_equal_operator
    assert 4.≥ 3
    assert 4.≥ 2.5
    assert 5.≥ 5
  end
  
  def test_should_define_inequality_operator
    assert 5.≠ 10
    assert 2.0.≠ 4
    assert !(4.≠ 4)
  end
  
  def test_should_define_approximate_equality_operator
    assert 3.≈(3)
    assert ϵ.≈(0.0)
  end
end
