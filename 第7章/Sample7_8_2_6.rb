class Product
  SOME_KINDS = ['iphone_6s', 'iphone_7', 'iphone_8'].map(&:freeze).freeze
end

=begin
Product::SOME_KINDS[2].upcase!
# Sample7_8_2_6.rb:5:in `upcase!': can't modify frozen String (FrozenError)
=end