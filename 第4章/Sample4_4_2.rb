numbers = [24, 36, 57, 83, 98, 117]
even_numbers = numbers.select { |n| n.even? }
p even_numbers #[24, 36, 98]

numbers = [13, 25, 36, 47, 65, 88, 100]
non_multiples_of_five = numbers.reject { |n| n % 5 == 0}
p non_multiples_of_five #[13, 36, 47, 88]