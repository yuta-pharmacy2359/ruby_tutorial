class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.format_price(price)
    "#{price}円"
  end

  def to_s
    formatted_price = Product.format_price(price)
    "#{name}は#{formatted_price}です。"
  end
end

product = Product.new('iPhone12', 100000)

puts product.to_s
# iPhone12は100000円です。