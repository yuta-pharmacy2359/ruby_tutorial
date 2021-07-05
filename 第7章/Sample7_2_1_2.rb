class Building
  attr_reader :name, :place, :height, :floors

  def initialize(name, place, height, floors)
    @name = name
    @place = place
    @height = height
    @floors = floors
  end
end

buildings = []
buildings << Building.new('横浜ランドマークタワー', '神奈川県横浜市西区', 296, 70)
buildings << Building.new('東京都庁舎', '東京都新宿区', 243, 48)
buildings << Building.new('あべのハルカス', '大阪府大阪市阿倍野区', 300, 60)

def building_place(building)
  "#{building.name}は#{building.place}に所在しています。"
end

buildings.each do |building|
  puts "#{building_place(building)}高さは#{building.height}mで、#{building.floors}階建てです。"
end

=begin

横浜ランドマークタワーは神奈川県横浜市西区に所在しています。高さは296mで、70階建てです。
東京都庁舎は東京都新宿区に所在しています。高さは243mで、48階建てです。
あべのハルカスは大阪府大阪市阿倍野区に所在しています。高さは300mで、60階建てです。

=end


p buildings[0].name
# "横浜ランドマークタワー"

=begin
p buildings[0].neme
# `<main>': undefined method `neme' for #<Building:0x00007fb7bd8f9bf8> (NoMethodError) Did you mean?  name
=end

=begin
p buildings[0].country = '日本'
# `<main>': undefined method `country=' for #<Building:0x00007ffc030b1ad8> (NoMethodError)
=end

=begin
p buildings[0].name = 'ランドマークタワー'
# `<main>': undefined method `name=' for #<Building:0x00007fa5041286e8> (NoMethodError) Did you mean?  name
=end