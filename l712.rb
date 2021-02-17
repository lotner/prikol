# frozen_string_literal: true

require_relative 'l711'

puts('Введите х: ')
x = gets
puts('Введите у: ')
y = gets

puts(files(x, y))
