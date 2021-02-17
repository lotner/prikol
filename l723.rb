# frozen_string_literal: true

require_relative 'l721'
require 'minitest/autorun'

# Test Class
class TestClass < Minitest::Test
  def setup
    @obj = Circle.new(1, 2, 3)
    @obj1 = Dot.new(1, 2)
  end

  def test_correct
    assert_equal(@obj.dor, 'R: 3')
  end

  def test_inheritance
    assert_equal(@obj1.class.name, @obj.class.superclass.name)
  end
end
