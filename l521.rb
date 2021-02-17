# frozen_string_literal: true

require_relative 'l511'

puts('Введите строку:')
str = gets
puts("Исходная строка: #{str}")
puts("Результат: #{Lab.reverse(str)}")
