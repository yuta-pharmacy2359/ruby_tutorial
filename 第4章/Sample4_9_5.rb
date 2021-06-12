numbers = [2, 4, 6, 8, 10]
sum = 0
for n in numbers
  sum += n
end
p sum
# 30

sum = 0
for n in numbers do sum += n end
p sum
# 30

sum = 0
numbers.each do |n|
  sum += n
end
p sum
# 30

=begin
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p n
p sum_value
=end
# エラー発生

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sum = 0
for n in numbers
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p n #10
p sum_value #100
p sum #300