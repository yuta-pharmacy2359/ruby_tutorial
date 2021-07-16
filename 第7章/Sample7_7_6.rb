class Apple
  def iphone
    'iphone_11_pro_max'
  end

  def ipad
    'ipad_pro_11'
  end

  private :iphone, :ipad

  def macbook
    'macbook_pro_16'
  end
end

apple = Apple.new

=begin
puts apple.iphone
# `<main>': private method `iphone' called for #<Apple:0x00007fe72a1427b0> (NoMethodError)
=end

=begin
puts apple.ipad
# `<main>': private method `ipad' called for #<Apple:0x00007fcff69b9290> (NoMethodError)
=end

puts apple.macbook
# macbook_pro_16