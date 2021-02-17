# frozen_string_literal: true

require_relative 'l61'
require_relative 'l621'
require 'minitest/autorun'

# Test Class
class TestClass < Minitest::Test
  def setup; end

  def test_correct
    eps = recurse(10**-5) - recurse(10**-2)
    val = recurse(10**-5) - recurse(10**-1)
    assert_in_delta(val, eps, 0.15)
  end
end
