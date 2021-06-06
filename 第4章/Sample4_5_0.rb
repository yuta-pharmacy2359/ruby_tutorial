puts (1..5).class #Range
puts (1...5).class #Range

range = 1..10
puts range.include?(5) #true
puts range.include?(9.999) #true
puts range.include?(10) #true
puts range.include?(15) #false

range = 1...10
puts range.include?(5) #true
puts range.include?(9.999) #true
puts range.include?(10) #false
puts range.include?(15) #false