class Product
  @name = 'iphone'

  def self.name
    @name
  end

  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

product = Product.new('ipad')

puts product.name
# ipad
puts Product.name
# iphone