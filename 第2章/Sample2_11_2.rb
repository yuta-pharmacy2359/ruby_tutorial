puts ''.empty? #true
puts 'Good-bye'.empty? #false

puts 'landmark'.include?('nd') #true
puts 'landmark'.include?('nk') #false

puts 83452.odd? #false
puts 20857.odd? #true

puts 6507.even? #false
puts 2032.even? #true

puts nil.nil? #true
puts ''.nil? #false
puts 'Hello'.nil? #false
puts 8.nil? #false

def multiple_of_eight?(n)
  n % 8 == 0
end
puts multiple_of_eight?(4) #false
puts multiple_of_eight?(16) #true
puts multiple_of_eight?(29) #false 