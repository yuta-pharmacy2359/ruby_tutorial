module Loggable
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
puts iphone.name
# [LOG] iPhone is called.
# iPhone_11_Pro_Max

ipad = Ipad.new
puts ipad.name
# [LOG] iPad is called.
# iPad_mini_5