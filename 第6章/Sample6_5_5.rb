text = '本能寺の変は1582年6月21日に発生しました。'

text =~ /(\d+)年(\d+)月(\d+)日/

p Regexp.last_match
# #<MatchData "1582年6月21日" 1:"1582" 2:"6" 3:"21">

p Regexp.last_match(0)
# "1582年6月21日"

p Regexp.last_match(1)
# "1582"
p Regexp.last_match(2)
# "6"
p Regexp.last_match(3)
# "21"

p Regexp.last_match(-1)
# "21"