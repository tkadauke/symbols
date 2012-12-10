# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class NumericTest < Test::Unit::TestCase
  def test_should_multiply_with_x_operator
    assert_equal 15, 3.×(5)
  end
  
  def test_should_calculate_promille
    assert_equal 0.001, 1.‰
  end
  
  def test_should_calculate_pro_ten_thousand
    assert_equal 0.0001, 1.‱
  end
end
