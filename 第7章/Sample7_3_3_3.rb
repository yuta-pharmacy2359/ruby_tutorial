class Train
  attr_accessor :type, :destination

  def initialize(type, destination)
    @type = type
    @destination = destination
  end

  def announce
    "この電車は、#{@type} #{@destination}行きです。"
  end
end

train = Train.new('中央特快', '東京')

train.type = '青梅特快'

puts train.announce
# この電車は、青梅特快 東京行きです。


class CapitolCity
  attr_reader :country, :capitol

  def initialize(country, capitol)
    @country = country
    @capitol = capitol
  end

  def shuffle_announce
    shuffle_country = @country.chars.shuffle.join
    shuffle_capitol = @capitol.chars.shuffle.join
    "The capitol of #{shuffle_country} is #{shuffle_capitol}."
  end
end

capitol_city = CapitolCity.new('Japan', 'Tokyo')

puts capitol_city.capitol
# Tokyo

=begin
capitol_city.name = "Yokohama"
# `<main>': undefined method `name=' for #<CapitolCity:0x00007fc113888160> (NoMethodError)
=end

class Building
  attr_writer :name, :place, :height, :floor

  def initialize(name, place, height, floor)
    @name = name
    @place = place
    @height = height
    @floor = floor
  end

  def indicate
    puts "名前: #{@name}、所在地: #{@place}、高さ: #{@height}m、階数: #{@floor}"
  end
end

building = Building.new('横浜ランドマークタワー', '神奈川県横浜市西区', 296, 70)

building.name = 'ランドマークタワー'

puts building.indicate
# 名前: ランドマークタワー、所在地: 神奈川県横浜市西区、高さ: 296m、階数: 70

=begin
puts building.name
# `<main>': undefined method `name' for #<Building:0x00007fb7f991f1c8> (NoMethodError) Did you mean?  name=
=end
