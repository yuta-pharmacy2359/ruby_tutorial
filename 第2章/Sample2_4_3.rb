n = 1
# puts n++ (++は無効)
puts n += 1
puts n -= 1

m = 2
puts m *= 3
puts m /= 2
puts m **= 3

# puts 1 + '10' (数値+文字列はNG)
puts 1 + '10'.to_i
puts 1 + '10.5'.to_f

number = 3
# puts 'Number is ' + number (NG)
puts 'Number is ' + number.to_s

number2 = 5
puts "Number is #{number2}"

puts 0.1 * 3.0
puts 0.1 * 3.0 == 0.3
puts 0.1 * 3.0 <= 0.3

puts 0.1r * 3.0r
puts 0.1r * 3r == 0.3
puts 0.1r * 3r <= 0.3

a = 0.1
b = 3.0
puts a.rationalize * b.rationalize
puts a * b
puts (0.1r * 3.0r).to_f