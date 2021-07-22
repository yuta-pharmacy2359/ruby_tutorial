class MyString < String
end

s = MyString.new('This is a pen.')
puts s
# This is a pen.
puts s.class
# MyString


class MyArray < Array
end

a = MyArray.new()
a << 'iphone_5s'
a << 'iphone_6s_plus'
a << 'iphone_x'
a << 'iphone_11_pro_max'
p a
# ["iphone_5s", "iphone_6s_plus", "iphone_x", "iphone_11_pro_max"]
puts a.class
# MyArray


class String
  def shuffle
    chars.shuffle.join
  end
end

s = 'Hello, I am Hamada, this is a pen!'
puts s.shuffle
# itslaa  sonhpm ei !Ia,Haem,   Hadl