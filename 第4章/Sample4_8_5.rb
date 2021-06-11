numbers = [12, 23, 34, 45, 56]
sum = 0

numbers.each do |n; sum|
  sum = 10
  sum += n
  p sum
end
=begin
22
33
44
55
66
=end

p sum
# 0