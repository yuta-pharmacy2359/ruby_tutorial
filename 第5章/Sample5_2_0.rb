h = {}
puts h.class #Hash

h = {'japan' => 'こんにちは', 'us' => 'hello', 'france' => 'bonjour', 'china' => 'ニイハオ'}
puts h
# {"japan"=>"こんにちは", "us"=>"hello", "france"=>"bonjour", "china"=>"ニイハオ"}

h = {'japan' => '円', 'japan' => 'こんにちは'}
puts h
# {"japan"=>"こんにちは"}