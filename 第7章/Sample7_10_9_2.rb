class Product
  def initialize(name, price)
    @name = name
    @price = price
  end

  def display_text
    stock = stock? ? '在庫あり' : '在庫切れ'
    "商品名: #{@name}、価格: #{@price}、在庫: #{stock}"
  end
end

class Smartphone < Product
  def stock?
    true
  end
end

=begin
product = Product.new('iPhone_12_Pro_Max', 165000)
puts product.display_text
# Sample7_10_9_2.rb:8:in `display_text': undefined method `stock?' for #<Product:0x00007ff7c1856400> (NoMethodError)
=end

smartphone = Smartphone.new('iPhone_12_Pro_Max', 165000)
puts smartphone.display_text
# 商品名: iPhone_12_Pro_Max、価格: 165000、在庫: 在庫あり