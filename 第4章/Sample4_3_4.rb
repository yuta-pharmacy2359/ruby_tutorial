numbers = [25, 50, 75, 100]
sum = 0
sum_value = 2568 #参照されない(シャドーイング)
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
puts sum #1600
# puts sum_value (ブロック外なので参照不可)