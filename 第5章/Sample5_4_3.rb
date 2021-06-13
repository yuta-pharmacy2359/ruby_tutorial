def buy_smartphone(kind, cases, films)
  puts "#{kind}を購入します"
  if cases
    puts 'ケースを購入します'
  end
  if films
    puts '保護フィルムを購入します'
  end
end

puts buy_smartphone('iphone11', true, false)
=begin
iphone11を購入します
ケースを購入します
=end

puts buy_smartphone('iphonese2', false, true)
=begin
iphonese2を購入します
保護フィルムを購入します
=end


def buy_smartphone(kind, cases: true, films: true)
  puts "#{kind}を購入します"
  if cases
    puts 'ケースを購入します'
  end
  if films
    puts '保護フィルムを購入します'
  end
end

puts buy_smartphone('iphone11', cases: true, films: false)
=begin
iphone11を購入します
ケースを購入します
=end

puts buy_smartphone('iphonese2', cases: false, films: true)
=begin
iphonese2を購入します
保護フィルムを購入します
=end

puts buy_smartphone('iphone11', films: false)
=begin
iphone11を購入します
ケースを購入します
=end

puts buy_smartphone('iphonese2')
=begin
iphonese2を購入します
ケースを購入します
保護フィルムを購入します
=end

puts buy_smartphone('iphone11', films: false, cases: false)
# iphone11を購入します

=begin
puts buy_smartphone('iphonese2', cables: true)
# エラー(存在しないキーワード引数)
=end


def buy_smartphone(kind, cases:, films:)
  puts "#{kind}を購入します"
  if cases
    puts 'ケースを購入します'
  end
  if films
    puts '保護フィルムを購入します'
  end
end

puts buy_smartphone('iphonese2', cases: false, films: true)
=begin
iphonese2を購入します
保護フィルムを購入します
=end

=begin
puts buy_smartphone('iphonese2', cases: true)
# エラー(デフォルト値がないキーワード引数を省略)
=end

params = {cases: true, films: false}
puts buy_smartphone('iphone12_pro', params)
=begin
iphone12_proを購入します
ケースを購入します
=end