dimensions = [[25, 38], [12, 45], [54, 35]]  #[縦, 横]

areas = []
dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length * width
end
p areas
# [950, 540, 1890]

areas = []
dimensions.each do |length, width|
  areas << length * width
end
p areas
# [950, 540, 1890]

dimensions.each do |length, width, hoge, fuga, foo, bar|
  p [length, width, hoge, fuga, foo, bar]
end
=begin
[25, 38, nil, nil, nil, nil]
[12, 45, nil, nil, nil, nil]
[54, 35, nil, nil, nil, nil]
=end

dimensions = [[25, 38, 47], [12, 45, 64], [54, 35, 29]]
dimensions.each do |length, width|
  p [length, width]
end
=begin
[25, 38]
[12, 45]
[54, 35]
=end

dimensions = [[25, 38], [12, 45], [54, 35]]
dimensions.each_with_index do |length, width, i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
=begin
length: [25, 38], width: 0, i:
length: [12, 45], width: 1, i:
length: [54, 35], width: 2, i:
=end

dimensions.each_with_index do |dimension, i|
  length = dimension[0]
  width = dimension[1]
  puts "length: #{length}, width: #{width}, i: #{i}"
end
=begin
length: 25, width: 38, i: 0
length: 12, width: 45, i: 1
length: 54, width: 35, i: 2
=end

dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
=begin
length: 25, width: 38, i: 0
length: 12, width: 45, i: 1
length: 54, width: 35, i: 2
=end