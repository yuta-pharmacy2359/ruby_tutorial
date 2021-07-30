module Taggable
  def price_tag
    "#{price}円"
  end
end

class Product
  include Taggable

  def price
    150000
  end
end

product = Product.new
puts product.price_tag
# 150000円