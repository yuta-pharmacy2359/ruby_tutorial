class Product
  @@name = 'iphone'

  def self.name
    @@name
  end

  def initialize(name)
    @@name = name
  end

  def name
    @@name
  end
end

class Iphone < Product
  @@name = 'iphone_11_pro_max'

  def self.name
    @@name
  end

  def upcase_name
    @@name.upcase
  end
end

puts Product.name
# iphone_11_pro_max
puts Iphone.name
# iphone_11_pro_max

product = Product.new('macbook')
puts product.name
# macbook

puts Product.name
# macbook
puts Iphone.name
# macbook

iphone = Iphone.new('iphone_12_mini')
puts iphone.name
# iphone_12_mini
puts iphone.upcase_name
# IPHONE_12_MINI

puts product.name
# iphone_12_mini
puts Product.name
# iphone_12_mini
puts Iphone.name
# iphone_12_mini