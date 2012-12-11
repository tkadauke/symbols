# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class SetTest < Test::Unit::TestCase
  def test_should_define_for_all
    assert [1,2,3].∀ { |x| x < 10 }
    assert ! [1,2,3].∀ { |x| x > 10 }
  end
  
  def test_should_define_exist
    assert [1,2,3].∃ { |x| x % 2 == 0 }
    assert ! [1,2,3].∃ { |x| x % 14 == 0 }
  end
  
  def test_should_define_not_exist
    assert [1,2,3].∄ { |x| x % 2 == 37 }
  end
  
  def test_should_define_subset
    assert [1,2,3].⊆([1,2,3,4,5])
    assert [1,2,3].⊆([1,2,3])
    assert ! [1,2,4].⊆([1,2,3])
  end
  
  def test_should_define_proper_subset
    assert [1,2,3].⊂([1,2,3,4,5])
    assert ! [1,2,3].⊂([1,2,3])
  end
  
  def test_should_define_superset
    assert [1,2,3,4,5].⊇([1,2,3,4,5])
    assert [1,2,3].⊇([1,2,3])
    assert ! [1,2,3].⊇([1,2,4])
  end
  
  def test_should_define_proper_superset
    assert [1,2,3,4,5].⊃([1,2,3])
    assert ! [1,2,3].⊃([1,2,3])
  end
  
  def test_should_define_union
    assert_equal [1,2,5,6], [1,2].∪([5,6])
    assert_equal [1,2,5,6], [1,2,5].∪([2,5,6])
  end
  
  def test_should_define_intersection
    assert_equal [], [1,2].∩([5,6])
    assert_equal [2,5], [1,2,5].∩([2,5,6])
  end
  
  def test_should_define_difference
    assert_equal [1], [1,2,5].∖([2,5,6])
    assert_equal [1,2,5], [1,2,5].∖([4,9,10])
  end
  
  def test_should_calculate_sum
    assert_equal 10, [1,2,3,4].∑
  end
  
  def test_should_return_if_element_is_in_container
    assert 4.∈([4,5,6])
    assert "foo".∈(["foo", "bar", "baz"])
  end
  
  def test_should_return_if_element_is_in_range
    assert 4.∈(1..10)
  end
  
  def test_should_return_if_element_is_in_number_set
    set = NumberSet.new { |x| x % 2 == 0 }
    assert 4.∈(set)
    assert ! 5.∈(set)
  end
  
  def test_should_return_if_element_is_of_type
    assert 4.∈(Fixnum)
    assert "foo".∈(String)
  end
  
  def test_should_define_not_element
    assert 5.∉(1..3)
    assert 5.0.∉(Fixnum)
    assert 3.∉(String)
  end
end
