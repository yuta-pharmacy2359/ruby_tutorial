a = Array.new
p a #[]

a = Array.new(10)
p a #[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]

a = Array.new(10, 5)
p a #[5, 5, 5, 5, 5, 5, 5, 5, 5, 5]

a = Array.new(10) { |n| n % 5 + 1 }
p a #[1, 2, 3, 4, 5, 1, 2, 3, 4, 5]