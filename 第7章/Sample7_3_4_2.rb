class Train
  def initialize(type)
    @type = type
  end

  def self.create_types(types)
    types.map do |type|
      Train.new(type)
    end
  end

  def announce
    "この電車は、#{@type} 東京行きです。"
  end
end

types = ['各駅停車', '快速', '中央特快', '青梅特快']

trains = Train.create_types(types)

trains.each do |train|
  puts train.announce
end

=begin

この電車は、各駅停車 東京行きです。
この電車は、快速 東京行きです。
この電車は、中央特快 東京行きです。
この電車は、青梅特快 東京行きです。

=end