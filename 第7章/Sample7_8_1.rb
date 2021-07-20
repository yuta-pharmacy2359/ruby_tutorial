class Product
  DEFAULT_PRICE = 500
  DEFAULT_PRICE = 1500
end

=begin
Sample7_8_1.rb:3: warning: already initialized constant Product::DEFAULT_PRICE
Sample7_8_1.rb:2: warning: previous definition of DEFAULT_PRICE was here
=end

puts Product::DEFAULT_PRICE
# 1500

Product::DEFAULT_PRICE = 5000

=begin
Sample7_8_1.rb:14: warning: already initialized constant Product::DEFAULT_PRICE
Sample7_8_1.rb:3: warning: previous definition of DEFAULT_PRICE was here
=end

puts Product::DEFAULT_PRICE
# 5000

Product.freeze

=begin
Product::DEFAULT_PRICE = 10000
# Sample7_8_1.rb:26:in `<main>': can't modify frozen #<Class:Product> (FrozenError)
=end