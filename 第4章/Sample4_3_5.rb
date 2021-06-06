#改行なし
numbers = [23, 56, 88, 91]
sum = 0
numbers.each do |n| sum += n end
puts sum #258

#改行なし({}有り)
numbers = [21, 65, 79, 107]
sum = 0
numbers.each { |n| sum += n }
puts sum #272

#改行あり({}有り)
numbers = [39, 75, 82, 119]
sum = 0
numbers.each {
  |n| sum += n
}
puts sum #315