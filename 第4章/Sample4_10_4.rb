def next1
  vehicles = ["car", "ship", "plane", "submarine", "train"]
  vehicles.each do |vehicle|
    next if vehicle.include?("mar")
    puts vehicle
  end
end
p next1
=begin
car
ship
plane
train
["car", "ship", "plane", "submarine", "train"]
=end


def next2
  vehicles = ["car", "ship", "plane", "submarine", "train"]
  i = 0
  while i < vehicles.size
    v = vehicles[i]
    i += 1
    next if v.length == 5
    puts v
  end
end
p next2
=begin
car
ship
submarine
nil
=end


def next3
  vehicles = ["car", "ship", "plane", "submarine", "train"]
  countries = ["japan", "us", "germany", "france", "russia"]
  vehicles.each do |vehicle|
    countries.each do |country|
      next if country.include?("j")
      puts "#{vehicle}, #{country}"
    end
  end
end
p next3
=begin
car, us
car, germany
car, france
car, russia
ship, us
ship, germany
ship, france
ship, russia
plane, us
plane, germany
plane, france
plane, russia
submarine, us
submarine, germany
submarine, france
submarine, russia
train, us
train, germany
train, france
train, russia
["car", "ship", "plane", "submarine", "train"]
=end