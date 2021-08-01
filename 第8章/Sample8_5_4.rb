p 55 <=> 45
# 1

p 38 <=> 38
# 0

p 59 <=> 68
# -1

p 23 <=> 'iphone'
# nil

p 'xperia' <=> 'iphone'
# 1

p 'macbook' <=> 'macbook'
# 0

p 'iphone' <=> 'xperia'
# -1

p 'iphone' <=> true
# nil

p 13 > 12
# true

p 12 > 13
# false

p 12 == 13
# false

p 'iphone' > 'xperia'
# false

p 'xperia' > 'iphone'
# true

p 'iphone' == 'xperia'
# false