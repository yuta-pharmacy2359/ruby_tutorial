require 'minitest/autorun'
require './lib/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    assert_equal '{}', convert_hash_syntax('{}')
  end
  # 成功

  def test_convert_hash_syntax2
    old_syntax = <<-TEXT
      {
        :name => 'Alice',
        :age=>20,
        :gender  =>  :female
      }
    TEXT
    expected = <<-TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
    assert_equal expected, convert_hash_syntax(old_syntax)
  end
  # 失敗

  def test_convert_hash_syntax3
    old_syntax = <<-TEXT
      {
        :name => 'Alice',
        :age=>20,
        :gender  =>  :female
      }
    TEXT
    expected = <<-TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
    assert_equal expected, convert_hash_syntax2(old_syntax)
    actual = convert_hash_syntax2(old_syntax)
    puts actual
    assert_equal expected, actual
  end
  # 成功
end

=begin

{
  name: 'Alice',
  age: 20,
  gender: :female
}

=end