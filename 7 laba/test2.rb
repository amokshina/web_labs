# frozen_string_literal: true

require './main2'

require 'minitest/autorun'

class WordCountTest < Minitest::Test
  def test_a
    i1 = Int.new(15)
    assert_equal 15, i1.i
    assert_equal 2, i1.number_of_digits
    f1 = Int_float.new(i1.i, 1234.1234)
    assert_equal 15, f1.i
    assert_equal 1234.1234, f1.f
    assert_equal 2, f1.number_of_digits
    assert(f1.is_a?(Int))
  end
end
