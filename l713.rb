# frozen_string_literal: true

require_relative 'l711'
require 'minitest/autorun'

# Test Class
class TestClass < Minitest::Test
  def setup; end

  def test_correct
    val1 = files('a a a a', 'a a a a')
    val2 = files('a a a a', 'a a b a')
    assert_equal(val1, 'Компоненты совпадают')
    assert_equal(val2, 'Компонент расхождения: 3')
  end
end
