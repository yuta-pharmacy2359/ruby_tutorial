h = {'japan' => 'こんにちは', 'us' => 'hello', 'france' => 'bonjour', 'china' => 'ニイハオ'}
h['india'] = 'ナマステ'
puts h
# {"japan"=>"こんにちは", "us"=>"hello", "france"=>"bonjour", "china"=>"ニイハオ", "india"=>"ナマステ"}

h['china'] = '你好'
puts h
# {"japan"=>"こんにちは", "us"=>"hello", "france"=>"bonjour", "china"=>"你好", "india"=>"ナマステ"}

puts h['japan']
# こんにちは

puts h['australia']
# nil