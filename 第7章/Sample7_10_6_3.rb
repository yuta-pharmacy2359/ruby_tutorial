class Product
  def initialize(name)
    @name = name
  end

  def buy
    "I am going to buy #{@name}"
  end
end

class Product
  alias buy_original buy

  def buy
    "#{buy_original}, so I'm going to buy #{@name}."
  end
end

product = Product.new('iPhone_13')
puts product.buy
# I am going to buy iPhone_13, so I'm going to buy iPhone_13.