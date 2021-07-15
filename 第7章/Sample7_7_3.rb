class Product
  private

  def name
    'iPhone_11_pro_max'
  end
end

class Iphone < Product
  def to_s
    "name: #{name}"
  end
end

iphone = Iphone.new

puts iphone.to_s
# name: iPhone_11_pro_max