puts Array.include?(Enumerable)
# true

puts Hash.include?(Enumerable)
# true

puts Range.include?(Enumerable)
# true

p [4, 8, 12].map { |n| n % 3 }
# [1, 2, 0]

hash = { a: 1, b: 2, c: 3, d: 4, e: 5 }
p hash.map { |k, v| [k, v * 8] }
# [[:a, 8], [:b, 16], [:c, 24], [:d, 32], [:e, 40]]

p (1..5).map { |n| n * 8 }
# [8, 16, 24, 32, 40]

puts ['iphone_5s', 'iphone_6s_plus', 'iphone_x', 'iphone_11_pro_max'].count
# 4

puts hash.count
# 5

puts (1..100).count
# 100