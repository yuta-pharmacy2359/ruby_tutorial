puts :iphone.class #Symbol
puts 'iphone'.class #String

puts :ipad.object_id #1055708
puts :ipad.object_id #1055708
puts :ipad.object_id #1055708

puts 'ipad'.object_id #70353150293520
puts 'ipad'.object_id #70353150293460
puts 'ipad'.object_id #70353150293400

string = 'ipad_pro'
string.upcase!
puts string #IPAD_PRO

=begin
symbol = :ipad_air
symbol.upcase!
puts symbol
# エラー発生(シンボルはイミュータブルで、破壊的な変更は不可能)
=end