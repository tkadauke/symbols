# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class ConstantsTest < Test::Unit::TestCase
  def test_should_define_pi
    assert respond_to?(:π)
    assert_equal Math::PI, π
  end
  
  def test_should_define_tau
    assert respond_to?(:τ)
    assert_equal 2*π, τ
  end
  
  def test_should_define_e
    assert respond_to?(:e)
    assert_equal Math::E, e
  end
  
  def test_should_define_i
    assert respond_to?(:i)
    assert_equal Complex::I, i
  end
  
  def test_should_define_epsilon
    assert respond_to?(:ϵ)
    assert_equal Float::EPSILON, ϵ
  end
  
  def test_should_define_infinity
    assert respond_to?(:∞)
    assert -∞ < ∞
    assert ∞ > -∞
    assert ∞ == ∞
    assert ∞ <= ∞
    assert ∞ >= ∞
  end
  
  def test_should_allow_nice_euler_formula
    v = e**(i*π)+1
    assert v.real == 0
    assert v.imag.≈ 0
  end
end
