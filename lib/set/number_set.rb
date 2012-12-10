# encoding: UTF-8
require 'complex'
require 'rational'

class NumberSet
  def initialize(&block)
    @block = block
  end
  
  def include?(value)
    @block.call(value)
  end
end

module Kernel
  const_def :ℤ => Fixnum,
            :ℕ => NumberSet.new { |val| val.∈(ℤ) && val > 0 },
            :ℚ => NumberSet.new { |val| val.∈(ℤ) || val.∈(Rational) },
            :ℝ => NumberSet.new { |val| val.∈(ℚ) || val.∈(Float) },
            :ℂ => NumberSet.new { |val| val.∈(ℝ) || val.∈(Complex) },
            :𝔹 => [true, false]
end
