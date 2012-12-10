# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class LambdaTest < Test::Unit::TestCase
  def test_should_create_lambda
    called = false
    l = λ { called = true }
    l.call
    assert called
  end
end
