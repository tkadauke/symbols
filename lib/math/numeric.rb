# encoding: UTF-8
class Numeric
  def ×(other)
    self * other
  end
  
  def ‰
    self / 1000.0
  end
  
  def ‱
    self / 10000.0
  end
end
