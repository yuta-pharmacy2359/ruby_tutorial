require 'minitest/autorun'
require './lib/rgb'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#ffffff', to_hex(255, 255, 255)
    assert_equal '#043c78', to_hex(4, 60, 120)
  end
  def test_to_hex2
    assert_equal '#000000', to_hex2(0, 0, 0)
    assert_equal '#ffffff', to_hex2(255, 255, 255)
    assert_equal '#043c78', to_hex2(4, 60, 120)
  end
  def test_to_hex3
    assert_equal '#000000', to_hex3(0, 0, 0)
    assert_equal '#ffffff', to_hex3(255, 255, 255)
    assert_equal '#043c78', to_hex3(4, 60, 120)
  end
  def test_to_hex4
    assert_equal '#000000', to_hex4(0, 0, 0)
    assert_equal '#ffffff', to_hex4(255, 255, 255)
    assert_equal '#043c78', to_hex4(4, 60, 120)
  end
  def test_to_ints
    assert_equal [0, 0, 0], to_ints('#000000')
    assert_equal [255, 255, 255], to_ints('#ffffff')
    assert_equal [4, 60, 120], to_ints('#043c78')
  end
  def test_to_ints2
    assert_equal [0, 0, 0], to_ints2('#000000')
    assert_equal [255, 255, 255], to_ints2('#ffffff')
    assert_equal [4, 60, 120], to_ints2('#043c78')
  end
  def test_to_ints3
    assert_equal [0, 0, 0], to_ints3('#000000')
    assert_equal [255, 255, 255], to_ints3('#ffffff')
    assert_equal [4, 60, 120], to_ints3('#043c78')
  end
  def test_to_ints4
    assert_equal [0, 0, 0], to_ints4('#000000')
    assert_equal [255, 255, 255], to_ints4('#ffffff')
    assert_equal [4, 60, 120], to_ints4('#043c78')
  end
  def test_to_ints5
    assert_equal [0, 0, 0], to_ints5('#000000')
    assert_equal [255, 255, 255], to_ints5('#ffffff')
    assert_equal [4, 60, 120], to_ints5('#043c78')
  end
  def test_to_ints6
    assert_equal [0, 0, 0], to_ints6('#000000')
    assert_equal [255, 255, 255], to_ints6('#ffffff')
    assert_equal [4, 60, 120], to_ints6('#043c78')
  end
end