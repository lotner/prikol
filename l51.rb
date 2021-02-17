# frozen_string_literal: true

# Module for Math
module Lab
  def self.log(arg)
    return 'Введено некорректное значение и получено деление на ноль' if [1, 2].include?(arg)

    Math.log10((arg**2) / (arg - 2)) * Math.exp(arg)
  end
end
