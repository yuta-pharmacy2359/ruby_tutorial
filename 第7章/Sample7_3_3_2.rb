=begin
class CapitolCity
  def initialize(country, capitol)
    @country = country
    @capitol = capitol
  end

  def shuffle_announce
    "The capitol of #{shuffle_country} is #{shuffle_capitol}."
  end
end

capitol_city = CapitolCity.new('Japan', 'Tokyo')
puts capitol_city.shuffle_announce
# `shuffle_announce': undefined local variable or method `shuffle_country' for #<CapitolCity:0x00007f89da8de6e8> (NameError) Did you mean?  shuffle_announce
=end

class CapitolCity
  def initialize(country, capitol)
  end

  def shuffle_announce
    shuffle_country = @country
    shuffle_capitol = @capitol
    "The capitol of #{shuffle_country} is #{shuffle_capitol}."
  end
end

capitol_city = CapitolCity.new('Japan', 'Tokyo')
puts capitol_city.shuffle_announce
# The capitol of  is .


class Train
  def initialize(type, destination)
    @type = type
    @destination = destination
  end

  def announce
    "この電車は、#{@tipe} #{@destinasion}行きです。"
  end
end

train = Train.new('中央特快', '東京')

puts train.announce
# この電車は、 行きです。