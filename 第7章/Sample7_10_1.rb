s = 'macbook_pro'
puts s.length
# 11
puts s.size
# 11


class Iphone
  def kind
    'iphone_x'
  end

  alias macine kind
end

iphone = Iphone.new
puts iphone.kind
# iphone_x
puts iphone.macine
# iphone_x