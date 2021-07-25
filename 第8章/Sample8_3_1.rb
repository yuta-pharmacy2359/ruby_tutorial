class Iphone
  def name
    log 'name is called.'
    'iPhone_6s_Plus'
  end

  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

class Ipad
  def name
    log 'name is called.'
    'iPad_mini_5'
  end

  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

iphone = Iphone.new
puts iphone.name
# [LOG] name is called.
# iPhone_6s_Plus

ipad = Ipad.new
puts ipad.name
# [LOG] name is called.
# iPad_mini_5