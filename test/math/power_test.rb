# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class PowerTest < Test::Unit::TestCase
  def test_should_calculate_powers
    assert_equal 1, 2.⁰
    assert_equal 4, 2.²
    assert_equal 16, 2.⁴
    assert_equal 64, 2.⁶
  end
end
