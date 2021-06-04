a = 'This is a pen.'
b = 'This is a pen.'
puts a.object_id #実行ごとに変化する
puts b.object_id

c = b
puts c.object_id

def m(d)
  d.object_id
end
puts m(c)

puts a.equal?(b) #false
puts b.equal?(c) #true


def m!(d)
  d.upcase!
end
m!(c)

puts a #This is a pen.
puts b #THIS IS A PEN.
puts c #THIS IS A PEN.