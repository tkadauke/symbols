# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class NumericPairTest < Test::Unit::TestCase
  def test_should_initialize
    pair = NumericPair.new(1, 2)
    assert_equal [1, 2], pair.to_a
  end
  
  def test_should_initialize_from_plus_minus
    pair = 5.±(2)
    assert_equal [7, 3], pair.to_a
  end
  
  def test_should_initialize_from_minus_plus
    pair = 5.∓(2)
    assert_equal [3, 7], pair.to_a
  end
  
  def test_should_allow_chain_of_plus_minus_with_number
    pair = 5.±(2).±(1)
    assert_equal [8, 2], pair.to_a
  end
  
  def test_should_allow_chain_of_plus_minus_with_pair
    pair = 5.±(2).±(1.±(1))
    assert_equal [9, 3], pair.to_a
  end
  
  def test_should_allow_chain_of_minus_plus_with_number
    pair = 5.±(2).∓(1)
    assert_equal [6, 4], pair.to_a
  end
  
  def test_should_allow_chain_of_minus_plus_with_pair
    pair = 5.±(2).∓(1.±(1))
    assert_equal [5, 3], pair.to_a
  end
  
  def test_should_allow_numeric_operators
    assert_equal [6, 4], (3.±(1) + 2).to_a
    assert_equal [2, 0], (3.±(1) - 2).to_a
    assert_equal [2, 1], (3.±(1) / 2).to_a
  end
  
  def test_should_convert_to_range
    assert_equal (2..4), 3.∓(1).to_range
  end
  
  def test_should_inspect
    assert_equal '[4, 2]', 3.±(1).inspect
  end
  
  def test_should_sort
    assert_equal [2, 3], NumericPair.new(2, 3).sort.to_a
    assert_equal [-2, 4], NumericPair.new(4, -2).sort.to_a
    assert_equal 4.±(2).sort, 4.∓(2).sort
  end
  
  def test_should_test_for_equality
    assert NumericPair.new(2, 3) == NumericPair.new(2, 3)
    assert !(NumericPair.new(2, 3) == NumericPair.new(3, 4))
  end
  
  def test_should_test_for_inequality
    assert !(NumericPair.new(2, 3) != NumericPair.new(2, 3))
    assert NumericPair.new(2, 3) != NumericPair.new(3, 4)
  end
  
  def test_should_solve_quadratic_formula
    a = 1; b = 0; c = -4
    pair = (-b.±(√(b.²-4*a*c)))/2*a
    assert_equal [-2, 2], pair.to_a
  end
end
