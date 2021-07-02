text = <<-TEXT
sounds that are pleasing to the ear.
ear is the organ of the sense of hearing.
I can't bear it.
Why on earth would anyone feel sorry for you?
TEXT

p text.scan(/ear/)
# ["ear", "ear", "ear", "ear", "ear"]

p text.scan(/\bear\b/)
# ["ear", "ear"]


text2 = <<-TEXT
<td>
<%= link_to I18n.t('.show'), user %>
<%= link_to t('.edit'), edit_user_path(user) %>
</td>
TEXT

p text2.scan(/t/)
# ["t", "t", "t", "t", "t", "t", "t", "t", "t"]

p text2.scan(/\bt\b/)
# ["t", "t"]


text3 = <<-TEXT
type=zip; filename=users.zip; size=1024;
type=xml; filename=posts.xml; size=2048;
TEXT

p text3.scan(/filename=[^;]+/)
# ["filename=users.zip", "filename=posts.xml"]

p text3.scan(/filename=([^;]+)/)
# [["users.zip"], ["posts.xml"]]

p text3.scan(/(?<=filename=)/)
# ["", ""]

p text3.scan(/(?<=filename=)[^;]+/)
# ["users.zip", "posts.xml"]


text4 = <<-TEXT
John:guitar, George:guitar, Paul:bass, Ringo:drum
Freddie:vocal, Brian:guitar, John:bass, Roger:drum
TEXT

p text4.scan(/\w+:bass/)
# ["Paul:bass", "John:bass"]

p text4.scan(/(?=:bass)/)
# ["", ""]

p text4.scan(/\w+(?=:bass)/)
# ["Paul", "John"]


text5 = <<-TEXT
東京都
千葉県
神奈川県
埼玉都
TEXT

p text5.scan(/(?<!東京)都/)
# ["都"]


text6 = <<-TEXT
つぼ焼きにしたサザエはおいしい
日曜日にやってるサザエさんは面白い
TEXT

p text6.scan(/サザエ(?!さん)/)
# ["サザエ"]


text7 = <<-TEXT
<a href="http://google.com">http://google.com</a>
<a href="http://yahoo.co.jp">ヤフー</a>
<a href="http://facebook.com">http://facebook.com</a>
TEXT

p text7.scan(/<a href="(.+?)">\1<\/a>/)
# [["http://google.com"], ["http://facebook.com"]]


text8 = <<-TEXT
You say yes. - @jnchito 8s
I say no. - @BarackObama 12m
You say stop. - @dhh 7h
I say go go go. - @ladygaga Feb 20
Hello, goodbye. - @BillGates 11 Apr 2015
TEXT

p text8.scan(/^(.*) - (@\w+) (\d+[smh]|(?:\d+ )?[A-Z][a-z]{2} \d+)/)
# [["You say yes.", "@jnchito", "8s"], ["I say no.", "@BarackObama", "12m"], ["You say stop.", "@dhh", "7h"], ["I say go go go.", "@ladygaga", "Feb 20"], ["Hello, goodbye.", "@BillGates", "11 Apr 2015"]]


text9 = <<-TEXT
users[100]
users[123]
TEXT

p text9.scan(/\[\d+\]/)
# ["[100]", "[123]"]


text9 = <<-TEXT
users.rb
base.css
users#rb
base%css
TEXT

p text9.scan(/\w+.\w{1,3}/)
# ["users.rb", "base.css", "users#rb", "base%css"]

p text9.scan(/\w+\.\w{1,3}/)
# ["users.rb", "base.css"]


text10 = <<-TEXT
begin
  5.times { |n| puts (-10 * n + 1 / 0).zero? ^ true }
rescue
  puts $!
end
TEXT

p text10.scan(/[()$.*+?|{}]/)
# [".", "{", "|", "|", "(", "*", "+", ")", ".", "?", "}", "$"]

p text10.scan(/[\w\d\s\n]/)
# ["b", "e", "g", "i", "n", "\n", " ", " ", "5", "t", "i", "m", "e", "s", " ", " ", "n", " ", "p", "u", "t", "s", " ", "1", "0", " ", " ", "n", " ", " ", "1", " ", " ", "0", "z", "e", "r", "o", " ", " ", "t", "r", "u", "e", " ", "\n", "r", "e", "s", "c", "u", "e", "\n", " ", " ", "p", "u", "t", "s", " ", "\n", "e", "n", "d", "\n"]

p text10.scan(/[a-z]/)
# ["b", "e", "g", "i", "n", "t", "i", "m", "e", "s", "n", "p", "u", "t", "s", "n", "z", "e", "r", "o", "t", "r", "u", "e", "r", "e", "s", "c", "u", "e", "p", "u", "t", "s", "e", "n", "d"]

p text10.scan(/[az-]/)
# ["-", "z"]

p text10.scan(/[-az]/)
# ["-", "z"]

p text10.scan(/[^abc]/)
# ["e", "g", "i", "n", "\n", " ", " ", "5", ".", "t", "i", "m", "e", "s", " ", "{", " ", "|", "n", "|", " ", "p", "u", "t", "s", " ", "(", "-", "1", "0", " ", "*", " ", "n", " ", "+", " ", "1", " ", "/", " ", "0", ")", ".", "z", "e", "r", "o", "?", " ", "^", " ", "t", "r", "u", "e", " ", "}", "\n", "r", "e", "s", "u", "e", "\n", " ", " ", "p", "u", "t", "s", " ", "$", "!", "\n", "e", "n", "d", "\n"]

p text10.scan(/[abc^]/)
# ["b", "^", "c"]


text11 = <<-TEXT
google
gooogle
goooogle
gooooogle
goooooogle
TEXT

p text11.scan(/go{4,}gle/)
# ["goooogle", "gooooogle", "goooooogle"]

p text11.scan(/go{,3}gle/)
# ["google", "gooogle"]


p text.scan(/\Bear\B/)
# ["ear"]