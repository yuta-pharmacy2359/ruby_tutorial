def greeting(country)
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
#puts greeting (引数が少ないためエラー)
puts greeting('japan')
#puts greeting('japan', 'us', 'vietnam') (引数が多すぎるためエラー)


def greeting2(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts greeting2
puts greeting2('australia')


def default_args(a, b, c = 5, e = 2)
  "a=#{a}, b=#{b}, c=#{c}, e=#{e}"
end
puts default_args(7, 8)
puts default_args(6, 9, 0)
puts default_args(2, 3, 5, 7)


def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'Very Good!'
end

puts foo