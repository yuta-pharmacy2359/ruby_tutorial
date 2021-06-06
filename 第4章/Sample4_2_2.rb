a, b, c = [5, 15, 25]
puts a #5
puts b #15
puts c #25

e, f, g = [35, 60]
puts e #35
puts f #60
puts g #nil

h, i, j = [70, 85, 100, 115, 130]
puts h #70
puts i #85
puts j #100

p 38.divmod(5) #[7, 3]

quo_rem = 47.divmod(6)
puts "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}" #商=7, 余り=5

quotient, reminder = 58.divmod(7)
puts "商=#{quotient}, 余り=#{reminder}" #商=8, 余り=2