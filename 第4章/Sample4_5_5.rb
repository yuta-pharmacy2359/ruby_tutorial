numbers = (1..100).to_a
sum = 0
numbers.each { |n| sum += n }
puts sum
#5050

sum = 0
(1..1000).each { |n| sum += n }
puts sum
#500500

numbers = []
(1..20).step(3) { |n| numbers << n }
p numbers
#[1, 4, 7, 10, 13, 16, 19]

git commit -m "Ruby入門 第4-5章終了"