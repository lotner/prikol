# frozen_string_literal: true

require_relative 'l511'
require 'minitest/autorun'

# Test Class
class TestClass < Minitest::Test
  include Lab
  def setup
    @item = rand(5).times.map { |_i| ('a'..'z').to_a.sample(rand(10)).join }.join(' ')
  end

  def test_correct
    arg = Lab.reverse(@item)
    assert_equal(arg, arg)
  end
end
