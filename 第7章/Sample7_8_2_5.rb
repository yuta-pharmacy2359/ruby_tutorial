class Product
  SOME_KINDS = ['iphone_6s'.freeze, 'iphone_7'.freeze, 'iphone_8'.freeze].freeze
end

=begin
Product::SOME_KINDS[2].upcase!
# Sample7_8_2_5.rb:5:in `upcase!': can't modify frozen String (FrozenError)
=end