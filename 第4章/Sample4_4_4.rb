numbers = [12, 34, 56, 78]
sum = numbers.inject(0) { |result, n| result + n }
puts sum #180

puts ['Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'].inject('Jan') { |result, s| result + ',' + s }