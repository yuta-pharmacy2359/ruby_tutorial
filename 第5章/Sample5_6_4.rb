
def buy_smartphone(kind, cases, films)
  puts "#{kind}を購入します"
  if cases
    puts 'ケースを購入します'
  end
  if films
    puts '保護フィルムを購入します'
  end
end


# buy_smartphone('ipad_pro_12.9', cases: true, films: false, stands: true, chargers: true)
# エラー発生

def buy_smartphone(kind, cases: true, films: true, **others)
  puts "#{kind}を購入します"
  if cases
    puts 'ケースを購入します'
  end
  if films
    puts '保護フィルムを購入します'
  end
  if others
    puts '他のオプションも購入します'
  end
end

buy_smartphone('ipad_pro_12.9', cases: true, films: false, cables: true, stands: true)
=begin
ipad_pro_12.9を購入します
ケースを購入します
他のオプションも購入します
=end