def multiple_by_seven(n)
  n.to_i * 7
end

puts multiple_by_seven(6)
# 42
puts multiple_by_seven('12')
# 84
puts multiple_by_seven(nil)
# 0


def multiple_by_numbers(a = 1, b = 1, c = 1)
  a * b * c
end

puts multiple_by_numbers
# 1
puts multiple_by_numbers(2)
# 2
puts multiple_by_numbers(2, 4)
# 8
puts multiple_by_numbers(2, 4, 8)
# 64