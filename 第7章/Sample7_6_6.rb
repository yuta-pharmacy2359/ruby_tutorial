class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Ipad < Product
  attr_reader :inches

  def initialize(name, price, inches)
    super(name, price)
    @inches = inches
  end
end

product = Product.new('ipad_pro_12.9', 155000)

puts product.to_s
# #<Product:0x00007ff5a6105218>

ipad = Ipad.new('ipad_mini_5', 54000, 7.9)

puts ipad.to_s
# #<Ipad:0x00007fd6a186e230>
