class Building
  attr_reader :name, :place, :height, :floors

  def initialize(name, place, height, floors)
    @name = name
    @place = place
    @height = height
    @floors = floors
  end

  def building_place
    "#{name}は#{place}に所在しています。"
  end
end

buildings = []
buildings << Building.new('横浜ランドマークタワー', '神奈川県横浜市西区', 296, 70)
buildings << Building.new('東京都庁舎', '東京都新宿区', 243, 48)
buildings << Building.new('あべのハルカス', '大阪府大阪市阿倍野区', 300, 60)

buildings.each do |building|
  puts "#{building.building_place}高さは#{building.height}mで、#{building.floors}階建てです。"
end

=begin

横浜ランドマークタワーは神奈川県横浜市西区に所在しています。高さは296mで、70階建てです。
東京都庁舎は東京都新宿区に所在しています。高さは243mで、48階建てです。
あべのハルカスは大阪府大阪市阿倍野区に所在しています。高さは300mで、60階建てです。

=end