# frozen_string_literal: true

require_relative 'l51'

puts('Введите х:')
x = gets

puts("y = #{Lab.log(x.to_i)}")
