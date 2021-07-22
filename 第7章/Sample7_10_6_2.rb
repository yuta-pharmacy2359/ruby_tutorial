class Product
  def initialize(name)
    @name = name
  end

  def buy
    "I am going to buy #{@name}."
  end
end

product = Product.new('apple_watch')
puts product.buy
# I am going to buy apple_watch.

class Product
  def buy
    "私は#{@name}を買います。"
  end
end

puts product.buy
# 私はapple_watchを買います。