def buy_smartphone(kind, options = {})
  cases = options[:cases]
  films = options[:films]
  puts "#{kind}を購入します"
  if cases
    puts 'ケースを購入します'
  end
  if films
    puts '保護フィルムを購入します'
  end
end

buy_smartphone('iphone12_pro_max', cases: true, films: true)
=begin
iphone12_pro_maxを購入します
ケースを購入します
保護フィルムを購入します
=end

buy_smartphone('iphone12_pro_max', cases: true)
=begin
iphone12_pro_maxを購入します
ケースを購入します
=end