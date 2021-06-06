numbers = [43, 65, 85, 91, 108]
new_numbers = []
numbers.each { |n| new_numbers << n * 8}
p new_numbers #[344, 520, 680, 728, 864]

numbers = [26, 12, 56, 39, 68]
new_numbers = numbers.map { |n| n * 12 }
p new_numbers #[312, 144, 672, 468, 816]