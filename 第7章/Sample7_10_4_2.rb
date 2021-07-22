class Product
  attr_reader :code, :name

  def initialize(code, name)
    @code = code
    @name = name
  end
end

a = Product.new('A-256647', 'iphone_11_pro')
b = Product.new('B-335126', 'iphone_se2')
c = Product.new('A-256647', 'iphone_11_pro')

puts a == b
# false
puts a == c
# false

puts a == a
# true


class Product
  attr_reader :code, :name

  def initialize(code, name)
    @code = code
    @name = name
  end

  def ==(other)
    if other.is_a?(Product)
      code == other.code
    else
      false
    end
  end
end

puts a == b
# false
puts a == c
# true

puts a == 1
# false
puts a == 'a'
# false

puts a.==(b)
# false
puts a.==(c)
# true