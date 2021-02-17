# frozen_string_literal: true

require_relative 'l51'
require 'minitest/autorun'

# Test Class
class TestClass < Minitest::Test
  include Lab
  def setup; end

  def test_correct
    assert_equal(Lab.log(0), -1.0 / 0)
  end

  def test_correctt
    assert_equal(Lab.log(3), 19.166473157018817)
  end

  def test_error
    assert_raises('NoMethodError') { Lab.log('s') }
  end
end
