greeting = {"japan"=>"こんにちは", "us"=>"hello", "france"=>"bonjour", "china"=>"你好", "india"=>"ナマステ"}

greeting.each do |key, value|
  puts "#{key} : #{value}"
end
=begin
japan : こんにちは
us : hello
france : bonjour
china : 你好
india : ナマステ
=end

greeting.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key} : #{value}"
end
=begin
japan : こんにちは
us : hello
france : bonjour
china : 你好
india : ナマステ
=end