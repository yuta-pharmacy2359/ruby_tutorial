class Iphone
  def kind
    'iphone_x'
  end
  undef kind
end

iphone = Iphone.new
puts iphone.kind
# Sample7_10_2.rb:9:in `<main>': undefined method `kind' for #<Iphone:0x00007fe020085928> (NoMethodError)