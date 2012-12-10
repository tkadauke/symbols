# encoding: UTF-8
class NumericPair
  attr_accessor :first, :second
  
  def initialize(first, second)
    @first, @second = first, second
  end
  
  def ±(other)
    if other.is_a?(NumericPair)
      NumericPair.new(first + other.first, second - other.second)
    else
      NumericPair.new(first + other, second - other)
    end
  end
  
  def ∓(other)
    if other.is_a?(NumericPair)
      NumericPair.new(first - other.first, second + other.second)
    else
      NumericPair.new(first - other, second + other)
    end
  end
  
  def method_missing(method, *args)
    if first.respond_to?(method) && second.respond_to?(method)
      NumericPair.new(first.send(method, *args), second.send(method, *args))
    else
      super
    end
  end
  
  def to_a
    [first, second]
  end
  
  def sort
    NumericPair.new(*to_a.sort)
  end
  
  def to_range
    first..second
  end
  
  def ==(other)
    first == other.first && second == other.second
  end
  
  def inspect
    to_a.inspect
  end
end
