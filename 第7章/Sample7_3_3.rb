class Train
  def initialize(type, destination)
    @type = type
    @destination = destination
  end

  def announce
    "この電車は、#{@type} #{@destination}行きです。"
  end

  def destination=(value)
    @destination = value
  end
end

train = Train.new('中央特快', '東京')

puts train.announce
# この電車は、中央特快 東京行きです

train.destination = '高尾'

puts train.announce
# この電車は、中央特快 高尾行きです。


class CapitolCity
  def initialize(country, capitol)
    @country = country
    @capitol = capitol
  end

  def shuffle_announce
    shuffle_country = @country.chars.shuffle.join
    shuffle_capitol = @capitol.chars.shuffle.join
    "The capitol of #{shuffle_country} is #{shuffle_capitol}."
  end

  def country
    @country
  end
end

capitol_city = CapitolCity.new('Japan', 'Tokyo')
puts capitol_city.shuffle_announce
# The capitol of paJna is Toyko.

puts capitol_city.country
# Japan