class Product
end

def Product.buy
  "I'm going to buy MacBook Pro."
end

class << Product
  def sell
    "I'm going to sell Surface Pro 7."
  end
end

puts Product.buy
# I'm going to buy MacBook Pro.
puts Product.sell
# I'm going to sell Surface Pro 7.