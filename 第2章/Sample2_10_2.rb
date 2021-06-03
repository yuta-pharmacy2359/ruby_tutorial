t1 = true
t2 = true
f1 = false
puts t1 and f1
puts t1 or f1
puts (not t1)

puts !f1 || t1
puts (not f1 || t1)

puts (t1 || t2 && f1)
puts (t1 or t2 and f1)


def greeting(country)
  country or return 'countryを入力してください'
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts greeting(nil)
puts greeting('japan')
puts greeting('us')