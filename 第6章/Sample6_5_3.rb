puts 'RIVER' =~ /river/i
# 0

puts 'ADVERTISE' =~ %r{advertise}i
# 0

regexp = Regexp.new('cucumber', Regexp::IGNORECASE)
puts 'CUCUMBER' =~ regexp
# 0


puts "This\nis\na\npen" =~ /This.is.a.pen/
# nil

puts "This\nis\na\npen" =~ /This.is.a.pen/m
# 0

regexp = Regexp.new('This.is.a.pen', Regexp::MULTILINE)
puts "This\nis\na\npen" =~ regexp
# 0


regexp = /
  \d{4}   # 年
  \/      # 区切り文字のスラッシュ
  \d{1,2} # 月
  \/      # 区切り文字のスラッシュ
  \d{1,2} # 日
/x

puts '2007/11/23' =~ regexp
# 0


regexp = /
  \d{4}   # 年
  \       # 半角スペース区切り
  \d{1,2} # 月
  \       # 半角スペース区切り
  \d{1,2} # 日
/x

puts '2005 6 18' =~ regexp
# 0


pattern = <<'TEXT'
  \d{4}   # 年
  \/      # 区切り文字のスラッシュ
  \d{1,2} # 月
  \/      # 区切り文字のスラッシュ
  \d{1,2} # 日
TEXT
regexp = Regexp.new(pattern, Regexp::EXTENDED)

puts '2018/12/7' =~ regexp
# 0


puts "THIS\nIS\nA\nPEN" =~ /This.is.a.pen/im
# 0


regexp = Regexp.new('This.is.a.pen', Regexp::IGNORECASE | Regexp::MULTILINE)
puts "THIS\nIS\nA\nPEN" =~ regexp
# 0