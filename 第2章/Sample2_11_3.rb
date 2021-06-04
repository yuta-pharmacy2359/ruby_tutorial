a = 'advertise'

puts a.upcase #ADVERTISE
puts a #advertise

puts a.upcase! #ADVERTISE
puts a #ADVERTISE


def reverse_upcase!(s)
  s.reverse!.upcase!
end
s = 'something'
puts reverse_upcase!(s) #GNIHTEMOS
puts s #GNIHTEMOS


#変数名に!や?は使用不可
# puts odd? = 1.odd?
# puts upcase! = 'python'.upcase!