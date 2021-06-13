greeting1 = {"japan"=>"こんにちは", "us"=>"hello", "france"=>"bonjour", "china"=>"你好", "india"=>"ナマステ"}
greeting2 = {"japan"=>"こんにちは", "us"=>"hello", "france"=>"bonjour", "china"=>"你好", "india"=>"ナマステ"}
greeting3 = {"india"=>"ナマステ", "japan"=>"こんにちは", "france"=>"bonjour", "us"=>"hello", "china"=>"你好"}
greeting4 = {"japan"=>"こんにちは", "us"=>"hello", "spain"=>"hola", "italy"=>"ciao", "india"=>"ナマステ"}

puts greeting1 == greeting2 #true
puts greeting1 == greeting3 #true
puts greeting1 == greeting4 #false

puts greeting1.size #5
h = {}
puts h.size #0

puts greeting1.delete('china')
# 你好
puts greeting1
# {"japan"=>"こんにちは", "us"=>"hello", "france"=>"bonjour", "india"=>"ナマステ"}

puts greeting1.delete('russia')
# nil
puts greeting1.delete('russia') { |key| "Not found : #{key}"}
# Not found : russia
puts greeting1.delete('france') { |key| "Not found : #{key}"}
# bonjour