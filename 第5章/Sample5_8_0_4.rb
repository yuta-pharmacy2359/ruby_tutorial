def greeting_exists?(country)
  greetings = {japan: 'konnitiha', us: 'hello', france: 'bonjour', china: 'ni-hao', india: 'namasute'}
  greeting = greetings[country]
  if greeting
    true
  else
    false
  end
end

puts greeting_exists?(:japan) #true
puts greeting_exists?(:tokyo) #false


def greeting_exists2?(country)
  greetings = {japan: 'konnitiha', us: 'hello', france: 'bonjour', china: 'ni-hao', india: 'namasute'}
  greeting = greetings[country]
  !!greeting
end

puts greeting_exists2?(:india) #true
puts greeting_exists2?(:new_delhi) #false