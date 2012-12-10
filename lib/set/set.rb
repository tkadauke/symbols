# encoding: UTF-8
module Enumerable
  alias ∀ all?
  alias ∃ find
end

class Array
  def ⊆(other)
    ∀ { |val| val.∈ other }
  end
  
  def ⊂(other)
    ⊆(other) && self.≠(other)
  end
  
  def ⊇(other)
    other.⊆(self)
  end
  
  def ⊃(other)
    other.⊂(self)
  end
  
  alias ∪ |
  alias ∩ &
  alias ∖ -
end

class Object
  def ∈(container)
    if container.is_a?(Class)
      self.is_a?(container)
    else
      container.include?(self)
    end
  end
  
  def ∉(container)
    !∈(container)
  end
end
