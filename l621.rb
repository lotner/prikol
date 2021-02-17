# frozen_string_literal: true

# Module for Math
def numerator(eps)
  (Enumerator.new do |y|
    num = 1.0
    loop do
      y << 1 / num
      num *= 2.0
    end
  end).take_while { |y| y > eps }.sum
end
