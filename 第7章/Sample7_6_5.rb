class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

product = Product.new('iphone_12_pro_max', 150000)

puts product.name
# iphone_12_pro_max

puts product.price
# 150000


class Iphone < Product
  attr_reader :inches

  def initialize(name, price, inches)
    super(name, price)
    @inches = inches
  end
end

iphone = Iphone.new('iphone_12_mini', 70000, 5.4)

puts iphone.name
# iphone_12_mini

puts iphone.price
# 70000

puts iphone.inches
# 5.4


class Ipad < Product
  def initialize(name, price)
    super
  end
end

ipad = Ipad.new('ipad_air_4', 65000)

puts ipad.name
# ipad_air_4

puts ipad.price
# 65000


=begin
class Macbook < Product
  def initialize(name, price)
    super()
  end
end

macbook = Macbook.new('macbook_pro_13', 140000)

puts macbook.name
# `initialize': wrong number of arguments (given 0, expected 2) (ArgumentError)
=end