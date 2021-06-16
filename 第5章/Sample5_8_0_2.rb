def find_greeting(country)
  greetings = {japan: 'konnitiha', us: 'hello', france: 'bonjour', china: 'ni-hao', india: 'namasute'}
  greetings[country]
end

puts find_greeting(:japan) #konnitiha
puts find_greeting(:mexico) #nil

def upcase_greeting(country)
  greeting = find_greeting(country)
  if greeting
    greeting.upcase
  end
end

puts upcase_greeting(:china) #NI-HAO


def upcase_greeting2(country)
  if greeting = find_greeting(country)
    greeting.upcase
  end
end

puts upcase_greeting2(:india) #NAMASUTE


a = 'iphonex'
puts a&.upcase #IPHONEX

a = nil
puts a&.upcase #nil


def upcase_greeting3(country)
  greeting = find_greeting(country)
  greeting&.upcase
end

puts upcase_greeting2(:france) #BONJOUR