# encoding: UTF-8
class Numeric
  alias ≤ <=
  alias ≥ >=
  
  def ≈(other)
    (self - other).abs <= ϵ
  end
end

class Object
  def ≠(other)
    self != other
  end
end
