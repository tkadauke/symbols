# encoding: UTF-8
class Numeric
  alias ≤ <=
  alias ≥ >=
  
  def ≈(other)
    (self - other).abs <= ϵ
  end
  
  def ≉(other)
    !(self.≈(other))
  end
end

class Object
  def ≠(other)
    self != other
  end
end
