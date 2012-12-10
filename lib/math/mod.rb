# encoding: UTF-8
class Fixnum
  def ≡(rest, divisor)
    (self - rest) % divisor == 0
  end
end
