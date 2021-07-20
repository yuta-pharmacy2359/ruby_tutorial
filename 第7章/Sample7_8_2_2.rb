class Product
  SOME_KINDS = ['iphone_6', 'iphone6s', 'iphone7']

  def self.iphones_usable_ios15(iphones = SOME_KINDS)
    iphones.delete('iphone_6')
    iphones
  end
end

Product.iphones_usable_ios15

p Product::SOME_KINDS
# ["iphone6s", "iphone7"]