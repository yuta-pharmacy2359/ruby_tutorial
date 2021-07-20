class Product
  DEFAULT_PRICE = 0
end

puts Product::DEFAULT_PRICE
# 0


class Product2
  DEFAULT_PRICE2 = 1000
  private_constant :DEFAULT_PRICE2
end

=begin
puts Product2::DEFAULT_PRICE2
# `<main>': private constant Product2::DEFAULT_PRICE2 referenced (NameError)
=end


class Product3
  def iphone
    DEFAULT_PRICE3 = 100000
  end
end

=begin
puts iphone
# dynamic constant assignment DEFAULT_PRICE3 = 100000
=end