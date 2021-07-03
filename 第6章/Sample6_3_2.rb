text = <<-TEXT
島原の乱は1637年12月11日に発生し、1638年4月12日に終結しました。
TEXT

p text.scan(/\d+年\d+月\d+日/)
# ["1637年12月11日", "1638年4月12日"]

p text.scan(/(\d+)年(\d+)月(\d+)日/)
# [["1637", "12", "11"], ["1638", "4", "12"]]


text = '本能寺の変は1582年6月21日に発生しました。'
m = /(\d+)年(\d+)月(\d+)日/.match(text)

puts m[0]
# 1582年6月21日
puts m[1]
# 1582
puts m[2]
# 6
puts m[3]
# 21
p m[2, 2]
# ["6", "21"]
puts m[-1]
# 21
p m[1..3]
# ["1582", "6", "21"]

p m
# #<MatchData "1582年6月21日" 1:"1582" 2:"6" 3:"21">
p /(\d+)年(\d+)月(\d+)日/.match('honnouji')
# nil

m = text.match(/(\d+)年(\d+)月(\d+)日/)
p m
# #<MatchData "1582年6月21日" 1:"1582" 2:"6" 3:"21">


text1 = 'ペリーは1853年7月8日に浦賀沖に来航しました。'
text2 = '聖徳太子は574年に生まれました。'
def ymd(text)
  if m = /(\d+)年(\d+)月(\d+)日/.match(text)
    'マッチしました'
  else
    'マッチしませんでした'
  end
end

puts ymd(text1)
# マッチしました
puts ymd(text2)
# マッチしませんでした