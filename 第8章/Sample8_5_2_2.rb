module Taggable
  def price_tag
    "#{self.price}円"
  end
end

class Product
  include Taggable

  def price
    250000
  end
end

product = Product.new
puts product.price_tag
# 250000円