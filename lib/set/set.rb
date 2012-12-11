# encoding: UTF-8
module Enumerable
  alias ∀ all?
  alias ∃ find
  
  def ∄(&block)
    !∃(&block)
  end
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
  
  def ∑
    inject(0) { |mem, var| mem += var }
  end
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
