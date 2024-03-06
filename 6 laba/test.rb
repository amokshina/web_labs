# frozen_string_literal: true

require './main'
require 'minitest/autorun'

class TestFoo < Minitest::Test
  def setup
    @foo = ->(x) { Math.tan(x)**2 }
  end

  def test_f
    assert_in_delta Math.sqrt(3) - Math::PI / 12 - 1, integral(@foo, Math::PI / 4, Math::PI / 3, 20), 0.001
  end

  def test_s
    assert_in_delta Math.sqrt(3) - Math::PI / 12 - 1, integral(@foo, Math::PI / 4, Math::PI / 3, 30), 0.001
  end

  def test_t
    assert_in_delta Math.sqrt(3) - Math::PI / 12 - 1, integral(@foo, Math::PI / 4, Math::PI / 3, 40), 0.001
  end
end
