# encoding: UTF-8
module Kernel
  [:₁, :₂, :₃, :₄, :₅, :₆, :₇, :₈, :₉, :₁₀].each_with_index do |name, index|
    define_method "log#{name}" do |val|
      Math.log(val) / Math.log(index + 1)
    end
  end
  
  def ln(val)
    Math.log(val) / Math.log(e)
  end
end
