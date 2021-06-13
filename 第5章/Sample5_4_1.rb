greeting1 = { japan: "こんにちは", us: "hello", france: "bonjour", china: "你好", india: "ナマステ"}
puts greeting1[:japan] #こんにちは

greeting2 = { japan: :こんにちは, us: :hello, france: :bonjour, china: :你好, india: :ナマステ }
puts greeting2[:us] #hello