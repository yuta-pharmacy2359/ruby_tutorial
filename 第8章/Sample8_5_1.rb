module Loggable
end

class Product
  include Loggable
end

puts Product.include?(Loggable)
# true

p Product.included_modules
# [Loggable, Kernel]

p Product.ancestors
# [Product, Loggable, Object, Kernel, BasicObject]

product = Product.new
puts product.class.include?(Loggable)
# true

p product.class.included_modules
# [Loggable, Kernel]

puts product.is_a?(Product)
# true

puts product.is_a?(Loggable)
# true

puts product.is_a?(Object)
# true

puts product.is_a?(String)
# false