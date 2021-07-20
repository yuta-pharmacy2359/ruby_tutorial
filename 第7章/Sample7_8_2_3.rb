class Product
  SOME_KINDS = ['iphone_6s', 'iphone_7', 'iphone_8'].freeze
  
  def self.iphones_usable_ios15(iphones = SOME_KINDS)
    iphones.delete('iphone_6s')
    iphones
  end
end

=begin
Product.iphones_usable_ios15
# `delete': can't modify frozen Array (FrozenError)
=end