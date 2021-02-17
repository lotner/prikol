# frozen_string_literal: true

require_relative 'l611'

lam1 = ->(x) { x * (x - 1) }
lam2 = ->(x) { Math.exp(x) / (x + 1) }

puts('Введите n: ')
num = gets
block1 = blockintprg(0, 2, num.to_i) { |x| x * (x - 1) }
block2 = blockintprg(0, 1, num.to_i) { |x| Math.exp(x) / (x + 1) }
puts("Значение первого интеграла через lambdas: #{blockintprg(0, 2, num.to_i, &lam1)}")
puts("Значение второго интеграла через lambdas: #{blockintprg(0, 1, num.to_i, &lam2)}")
puts("Значение первого интеграла через блоки: #{block1}")
puts("Значение второго интеграла через блоки: #{block2}")
