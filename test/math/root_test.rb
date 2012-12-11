# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class RootTest < Test::Unit::TestCase
  def test_should_define_sqrt_2
    assert_equal √(2), √2
  end
  
  def test_should_define_sqrt_3
    assert_equal √(3), √3
  end
  
  def test_should_define_sqrt_5
    assert_equal √(5), √5
  end
  
  def test_should_define_square_root
    assert_equal 2, √(4)
    assert_equal Math.sqrt(5), √(5)
  end
  
  def test_should_calculate_roots
    assert_equal 2, ³√(8)
    assert_equal 2, ⁴√(16)
    assert_equal 2, ⁵√(32)
  end
  
  def test_should_define_root_shortcuts
    assert_equal 2, ∛(8)
    assert_equal 2, ∜(16)
  end
end
