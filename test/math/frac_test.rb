# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class FracTest < Test::Unit::TestCase
  def test_should_define_fractions
    assert ⅛ == 0.125
    assert ⅙ == 1.0/6.0
    assert ⅕ == 0.2
    assert ¼ == 0.25
    assert ⅓ == 1.0/3.0
    assert ⅜ == 0.375
    assert ⅖ == 0.4
    assert ½ == 0.5
    assert ⅗ == 0.6
    assert ⅝ == 0.625
    assert ⅔ == 2.0/3.0
    assert ¾ == 0.75
    assert ⅘ == 0.8
    assert ⅚ == 5.0/6.0
    assert ⅞ == 0.875
  end
end
