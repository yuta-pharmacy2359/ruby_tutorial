def greeting
  'こんにちは'
end
puts greeting

# 引数がない場合、()は省略するのが一般的
def greeting2()
  'さようなら'
end
puts greeting2

country = 'france'
def greeting3 country
  if country == 'france'
    'bonjour'
  elsif country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts greeting3 country
