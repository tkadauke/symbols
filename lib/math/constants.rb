# encoding: UTF-8
require 'complex'

module Kernel
  const_def :π => Math::PI,
            :τ => Math::PI * 2,
            :e => Math::E,
            :i => Complex::I,
            :ϵ => Float::EPSILON,
            :∞ => +1.0/0.0
end
