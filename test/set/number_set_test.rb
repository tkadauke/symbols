# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class NumberSetTest < Test::Unit::TestCase
  def test_should_define_natural_number_set
    assert ! -1.∈(ℕ)
    assert 20.∈(ℕ)
  end
  
  def test_should_define_integer_number_set
    assert 20.∈(ℤ)
    assert -1.∈(ℤ)
    assert ! 10.5.∈(ℤ)
  end
  
  def test_should_define_integer_number_set
    assert Rational(4,5).∈(ℚ)
    assert 20.∈(ℚ)
    assert ! 10.5.∈(ℚ)
  end
  
  def test_should_define_real_number_set
    assert π.∈(ℝ)
    assert √2.∈(ℝ)
    assert 20.5.∈(ℝ)
    assert Rational(4,5).∈(ℝ)
    assert -1.∈(ℝ)
    assert ! i.∈(ℝ)
  end
  
  def test_should_define_complex_number_set
    assert √2.∈(ℂ)
    assert i.∈(ℂ)
  end
  
  def test_should_define_boolean_number_set
    assert true.∈(𝔹)
    assert false.∈(𝔹)
  end
end
