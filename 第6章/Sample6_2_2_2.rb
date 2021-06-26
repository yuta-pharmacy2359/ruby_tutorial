text = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT

p text.scan(/クープ バゲット/)
# ["クープ バゲット"]

p text.scan(/クープ[ 　・]バゲット/)
# ["クープ バゲット", "クープ　バゲット", "クープ・バゲット"]

p text.scan(/クープ[ 　・]バ[ゲケ]ット/)
# ["クープ バゲット", "クープ　バゲット", "クープ・バゲット", "クープ・バケット"]

p text.scan(/クープ[ 　・]?バ[ゲケ]ット/)
# ["クープバゲット", "クープ バゲット", "クープ　バゲット", "クープ・バゲット", "クープ・バケット"]

p text.scan(/クープ.?バ[ゲケ]ット/)
# ["クープバゲット", "クープ バゲット", "クープ　バゲット", "クープ・バゲット", "クープ・バケット"]

p text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)
# ["クープバゲットのパンは美味しかった。", "今日はクープ バゲットさんに行きました。", "クープ　バゲットのパンは最高。", "また行きたいです。クープ・バゲット。", "クープ・バケットのパン、売り切れだった（><）"]


html = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
HTML

puts html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1, \2')
=begin
<select name="game_console">
none, 
wii_u, Wii U
ps4, プレステ4
gb, ゲームボーイ
</select>
=end

html2 = <<-HTML
<option value="ps4">プレステ4</option><option value="gb">ゲームボーイ</option>
HTML

puts html2.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1, \2')
=begin
</select>
ps4, プレステ4</option><option value="gb">ゲームボーイ
=end

puts html2.gsub(/<option value="(\w+)"(?: selected)?>([^<]*)<\/option>/, '\1, \2')
# ps4, プレステ4gb, ゲームボーイ

puts html2.gsub(/<option value="(\w+)"(?: selected)?>(.*?)<\/option>/, '\1, \2')
# ps4, プレステ4gb, ゲームボーイ