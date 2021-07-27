module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Iphone
  extend Loggable

  def self.create_iphones(names)
    log 'create_products is called.'
  end
end

puts Iphone.create_iphones([])
# [LOG] create_products is called.

puts Iphone.log('Hola!')
# [LOG] Hola!