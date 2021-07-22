class Product
  def initialize(name, price)
    @name = name
    @price = price
  end

  def display_text
    stock = stock? ? '在庫あり' : '在庫切れ'
    "商品名: #{@name}、価格: #{@price}、在庫: #{stock}"
  end

  def stock?
    raise 'Must implement stock? in subclass'
  end
end

product = Product.new('iPhone_12_Pro_Max', 165000)
puts product.display_text
# Sample7_10_9_3.rb:13:in `stock?': Must implement stock? in subclass (RuntimeError)