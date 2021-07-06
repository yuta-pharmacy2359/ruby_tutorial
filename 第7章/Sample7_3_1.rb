class User
  def initialize
    puts '初期化しました'
  end
end

puts user = User.new
=begin
初期化しました
#<User:0x00007ffcd4066d18>
=end

=begin
puts user.initialize
# `<main>': private method `initialize' called for #<User:0x00007ff3c6919670> (NoMethodError)
=end


class Building
  def initialize(name, place, height, floor)
    puts "名前: #{name}、所在地: #{place}、高さ: #{height}m、階数: #{floor}"
  end
end

=begin
puts Building.new
# `initialize': wrong number of arguments (given 0, expected 4) (ArgumentError)
=end

puts Building.new('横浜ランドマークタワー', '神奈川県横浜市西区', 296, 70)
=begin
名前: 横浜ランドマークタワー、所在地: 神奈川県横浜市西区、高さ: 296m、階数: 70
#<Building:0x00007f865a13a1b8>
=end