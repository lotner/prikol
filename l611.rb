# frozen_string_literal: true

# Module for Math

def blockintprg(lower, upper, num, &arg)
  sum = 0
  summ = (upper.to_f - lower.to_f) / num
  (1..num).each do |idx|
    sum += arg.call(lower + summ * (idx + 0.5))
  end
  sum *= summ
end
