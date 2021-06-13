def vegitables_shuffle
  vegitables = ["cucumber", "tomato", "carrot", "japanese-raddish", "broccoli"].shuffle
  vegitables.each do |s|
    puts s
    break if s.include?("mat")
  end
end
p vegitables_shuffle
=begin
broccoli
japanese-raddish
cucumber
tomato
nil
=end


def vegitables_shuffle2
  vegitables = ["cucumber", "tomato", "carrot", "japanese-raddish", "broccoli"].shuffle
  i = 0
  while i < vegitables.size
    s = vegitables[i]
    puts s
    break if s.include?("cco")
    i += 1
  end
end
p vegitables_shuffle2
=begin
tomato
japanese-raddish
carrot
broccoli
nil
=end


ret =
  while true
    break
  end
p ret
# nil


ret =
  while true
    break "RET"
  end
p ret
# "RET"


def mix
  vehicles = ["car", "ship", "plane", "submarine", "train"]
  numbers = [1, 2, 3, 4, 5]
  vehicles.each do |vehicle|
    numbers.shuffle.each do |n|
      puts "#{vehicle}, #{n}"
      break if n == 2
    end
  end
end
p mix
=begin
car, 4
car, 1
car, 3
car, 2
ship, 4
ship, 3
ship, 5
ship, 1
ship, 2
plane, 2
submarine, 2
train, 4
train, 1
train, 5
train, 2
["car", "ship", "plane", "submarine", "train"]
=end