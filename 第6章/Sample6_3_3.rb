text = 'ペリーは1853年7月8日に浦賀沖に来航しました。'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)

puts m[:year]
# 1853
puts m[:month]
# 7
puts m[:day]
# 8

puts m['month']
# 7

puts m[3]
# 8


text2 = 'ペリーが来航しました。'
def ymd(txt)
  if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ txt
    "#{year}/#{month}/#{day}"
  else
    '日付が読み取れません。'
  end
end

puts ymd(text)
# 1853/7/8
puts ymd(text2)
# 日付が読み取れません。


=begin

def ymd2(txt)
  if txt =~ /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
    "#{year}/#{month}/#{day}"
  else
    '日付が読み取れません。'
  end
end

puts ymd2(text)
# Traceback (most recent call last):
	1: from Sample6_3_3.rb:41:in `<main>'
  Sample6_3_3.rb:35:in `ymd2': undefined local variable or method `year' for main:Object (NameError)

=end


=begin

regexp = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
def ymd(txt)
  if regexp =~ txt
    "#{year}/#{month}/#{day}"
  else
    '日付が読み取れません。'
  end
end

puts ymd(text)
# Traceback (most recent call last):
	1: from Sample6_3_3.rb:60:in `<main>'
  Sample6_3_3.rb:53:in `ymd': undefined local variable or method `regexp' for main:Object (NameError)

=end