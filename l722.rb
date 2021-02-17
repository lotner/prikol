# frozen_string_literal: true

require_relative 'l721'

puts('Введите х: ')
x = gets
puts('Введите у: ')
y = gets
puts('Введите радиус: ')
rad = gets

obj = Circle.new(x, y, rad)
obj.print

puts('Выберите, что захотите запросить')
a = gets

puts('Вы неправильно ввели запрос') if a.downcase != "x\n" && a.downcase != "y\n" && a.downcase != "r\n"

puts(obj.dox) if a.downcase == "x\n"

puts(obj.doy) if a.downcase == "y\n"

puts(obj.dor) if a.downcase == "r\n"
