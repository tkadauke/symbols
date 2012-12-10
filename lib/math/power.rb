# encoding: UTF-8
class Numeric
  [:⁰, :¹, :², :³, :⁴, :⁵, :⁶, :⁷, :⁸, :⁹].each_with_index do |name, index|
    define_method name do
      self ** index
    end
  end
end
