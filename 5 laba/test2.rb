# frozen_string_literal: true

require './main2'
require 'minitest/autorun'

class TestFoo < Minitest::Test
  def test_text1
    assert_equal([1, -2, 4, 3, 8, -5, 25], trasformation([1, -2, 3, 8, -5]))
  end

  def test_text2
    assert_equal([-5, 25, 0, -1, 1, 2], trasformation([-5, 0, -1, 2]))
  end
end
