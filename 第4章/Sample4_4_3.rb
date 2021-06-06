numbers = [14, 23, 36, 45, 59, 66]
multiples_of_five = numbers.find { |n| n % 5 == 0 }
puts multiples_of_five #45