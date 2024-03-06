# frozen_string_literal: true

require './main'
require 'minitest/autorun'

class TestFoo < Minitest::Test
  def test_positive_input
    assert_in_delta 1.61117, foo(5), 0.1
  end

  def test_zero_input
    assert_equal 'bad data', foo(0)
  end

  def test_negative_input
    assert_equal 'bad data', foo(-3)
  end
end
