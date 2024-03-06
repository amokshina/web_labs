require './main3'

require 'minitest/autorun'

class TestFoo < Minitest::Test
  def test_f
    assert_equal ['ibi7', '_87uyg', '', 'ert7', '_657879'],
                 trasformation!(['ibi7', '787uyg', 'кегн', 'ert7', '7657879'])
  end

  def test_s
    assert_equal ['', '', '_24', 'docsai'], trasformation!(['123вышгф', 'щшсыуа', '324', 'docsai'])
  end
end
