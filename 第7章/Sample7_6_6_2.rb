class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{name}, price: #{price}"
  end
end

class Ipad < Product
  attr_reader :inches

  def initialize(name, price, inches)
    super(name, price)
    @inches = inches
  end

  def to_s
    "name: #{name}, price: #{price}, inches: #{inches}"
  end
end

class Macbook < Product
  attr_reader :inches

  def initialize(name, price, inches)
    super(name, price)
    @inches = inches
  end

  def to_s
    "#{super}, inches: #{inches}"
  end
end

product = Product.new('ipad_pro_12.9', 155000)

puts product.to_s
# name: ipad_pro_12.9, price: 155000

ipad = Ipad.new('ipad_mini_5', 54000, 7.9)

puts ipad.to_s
# name: ipad_mini_5, price: 54000, inches: 7.9

macbook = Macbook.new('macbook_pro_13', 140000, 13.3)

puts macbook.to_s
# name: macbook_pro_13, price: 140000, inches: 13.3