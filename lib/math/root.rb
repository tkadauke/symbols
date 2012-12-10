# encoding: UTF-8
module Kernel
  def √(val)
    Math.sqrt(val)
  end
  
  const_def :√2 => √(2),
            :√3 => √(3),
            :√5 => √(5)
  
  [:¹, :², :³, :⁴, :⁵, :⁶, :⁷, :⁸, :⁹].each_with_index do |name, index|
    define_method "#{name}√" do |val|
      val ** (1.0 / (index + 1).to_f)
    end
  end
end
