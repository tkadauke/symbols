# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class ModTest < Test::Unit::TestCase
  def test_should_calculate_mod_with_rest
    assert 5.≡ 2, 3
    assert 8.≡ 2, 3
  end
end
