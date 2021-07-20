class Product
  SOME_KINDS = ['iphone_6s', 'iphone_7', 'iphone_8'].freeze
end

Product::SOME_KINDS[2].upcase!

p Product::SOME_KINDS
# ["iphone_6s", "iphone_7", "IPHONE_8"]