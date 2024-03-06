# frozen_string_literal: true

require './main3'
require 'minitest/autorun'

class TestIntegral < Minitest::Test
  def setup
    @foo = ->(x) { Math.tan(x)**2 }
  end

  def test_integral
    result = integral(@foo, 0, 1, 1000)
    assert_in_delta 0.557408, result, 1e-2
  end

  def test_integral2
    result = integral2(0, 1, 1000) { |x| Math.tan(x)**2 }
    assert_in_delta 0.557408, result, 1e-2
  end
end
