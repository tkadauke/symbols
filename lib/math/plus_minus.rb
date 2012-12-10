# encoding: UTF-8
class Numeric
  def ±(other = nil)
    if other
      NumericPair.new(self + other, self - other)
    else
      NumericPair.new(self, -self)
    end
  end
  
  def ∓(other = nil)
    if other
      NumericPair.new(self - other, self + other)
    else
      NumericPair.new(-self, self)
    end
  end
end

module Kernel
  def ±(numeric)
    numeric.±
  end

  def ∓(numeric)
    numeric.∓
  end
end
