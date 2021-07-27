module Loggable

  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

class Iphone
  include Loggable

  def name
    log 'iPhone is called.'
    'iPhone_11_Pro_Max'
  end
end

class Ipad
  include Loggable
  
  def name
    log 'iPad is called.'
    'iPad_mini_5'
  end
end

iphone = Iphone.new
puts iphone.log 'public?'
# Sample8_3_1_3.rb:29:in `<main>': private method `log' called for #<Iphone:0x00007fbcdc1860f0> (NoMethodError)