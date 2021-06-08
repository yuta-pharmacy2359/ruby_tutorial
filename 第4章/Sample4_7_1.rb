a = [1, 2, 3, 4, 5]
p a[2, 3] #[3, 4, 5]]

p a.values_at(1, 3, 5) #[2, 4, nil]

puts a[a.size - 1] #5

puts a[-1] #5
puts a[-3] #3
p a[-3, 3] #[3, 4, 5]

puts a.last #5
p a.last(4) #[2, 3, 4, 5]

puts a.first #1
p a.first(3) #[1, 2, 3]