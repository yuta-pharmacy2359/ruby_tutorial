phone = '0120-828-828'
date = '2021/7/5'
post = '193-0822'
other = 'hello world!'

def number_sensor(text)
  case text
  when /^\d{3}-\d{4}$/
    '郵便番号です'
  when /^\d{4}\/\d{1,2}\/\d{1,2}$/
    '日付です'
  when /^\d+-\d+-\d+$/
    '電話番号です'
  else
    '該当するものがありません'
  end
end

puts number_sensor(phone)
# 電話番号です
puts number_sensor(date)
# 日付です
puts number_sensor(post)
# 郵便番号です
puts number_sensor(other)
# 該当するものがありません