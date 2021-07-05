towers = []
towers << { name: '東京タワー', place: '東京都港区', height: 333 }
towers << { name: '東京スカイツリー', place: '東京都墨田区', height: 634 }
towers.each do |tower|
  puts "名称: #{tower[:name]}、所在地: #{tower[:place]}、高さ(m): #{tower[:height]}"
end

=begin

名称: 東京タワー、所在地: 東京都港区、高さ(m): 333
名称: 東京スカイツリー、所在地: 東京都墨田区、高さ(m): 634

=end


buildings = []
buildings << { name: '横浜ランドマークタワー', place: '神奈川県横浜市西区', height: 296 }
buildings << { name: '東京都庁舎', place: '東京都新宿区', height: 243 }
buildings << { name: 'あべのハルカス', place: '大阪府大阪市阿倍野区', height: 300 }

def building_place(building)
  "#{building[:name]}は#{building[:place]}に所在しています。"
end

buildings.each do |building|
  puts "#{building_place(building)}高さは#{building[:height]}mです。"
end
=begin

横浜ランドマークタワーは神奈川県横浜市西区に所在しています。高さは296mです。
東京都庁舎は東京都新宿区に所在しています。高さは243mです。
あべのハルカスは大阪府大阪市阿倍野区に所在しています。高さは300mです。

=end


p buildings[0][:height]
# 296
p buildings[0][:haight]
# nil

buildings[0][:floors] = 70
buildings[0][:name] = 'ランドマークタワー'
p buildings[0]
# {:name=>"ランドマークタワー", :place=>"神奈川県横浜市西区", :height=>296, :floors=>70}