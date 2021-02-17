# frozen_string_literal: true

require_relative 'l611'
require 'minitest/autorun'

# Test Class
class TestClass < Minitest::Test
  def setup; end

  def test_error
    assert_raises('NoMethodError') { blockintprg(0, 2, 's', &->(x) { x * (x - 1) }) }
  end

  def test_correct
    val1 = blockintprg(0, 2, 3) { |x| x * (x - 1) }
    val2 = blockintprg(0, 2, 3, &->(x) { x * (x - 1) })
    assert_equal(2.815, val1.ceil(3))
    assert_equal(2.815, val2.ceil(3))
  end
end
