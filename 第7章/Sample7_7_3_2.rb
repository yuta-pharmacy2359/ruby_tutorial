class Product
  def to_s
    "name: #{name}"
  end

  private

  def name
    'iphone_xr'
  end
end

class Iphone < Product
  private

  def name
    'iphone_xs_max'
  end
end

product = Product.new
puts product.to_s
# name: iphone_xr

iphone = Iphone.new
puts iphone.to_s
# name: iphone_xs_max