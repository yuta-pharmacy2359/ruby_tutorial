class Product
  DEFAULT_PRICE = 10000

  def self.default_price
    DEFAULT_PRICE
  end

  def default_price
    DEFAULT_PRICE
  end
end

puts Product.default_price
# 10000

product = Product.new
puts product.default_price
# 10000