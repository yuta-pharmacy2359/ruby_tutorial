def greet1
  country = 'italy'
  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'Hello'
  elsif country == 'italy'
    'ciao'
  else
    '???'
  end
end
puts greet1

def greet2
  country = 'japan'
  case country
  when 'japan'
    'こんにちは'
  when 'us'
    'hello'
  when 'italy'
    'ciao'
  when 'france'
    'bonjour'
  else
    '???'
  end
end
puts greet2

def greet3
  country = '日本'
  case country
  when 'japan', '日本'
    'こんにちは'
  when 'us', 'アメリカ'
    'hello'
  when 'italy', 'イタリア'
    'ciao'
  when 'france', 'フランス'
    'bonjour'
  else
    '???'
  end
end
puts greet3

country = 'us'
message =
  case country
  when 'japan'
    'こんにちは'
  when 'us'
    'hello'
  when 'italy'
    'ciao'
  else
    '???'
  end
puts message

def greet4
  country = 'france'
  case country
  when 'japan' then 'こんにちは'
  when 'us' then 'hello'
  when 'italy' then 'ciao'
  when 'france' then 'bonjour'
  else '???'
  end
end
puts greet4