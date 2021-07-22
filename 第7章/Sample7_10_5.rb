a = 'macbook_pro'
b = 'macbook_pro'

puts a.equal?(b)
# false

c = a
puts a.equal?(c)
# true


puts 1 == 1.00
# true


h = { 3 => 'Integer', 3.00 => 'Float' }
puts h[3]
# Integer
puts h[3.00]
# Float

puts 3.eql?(3.00)
# false


a = 'Japan'
b = 'Japan'

puts a.eql?(b)
# true
puts a.hash
# -1401642315452294856
puts b.hash
# -1401642315452294856

c = 3
d = 3.00

puts c.eql?(d)
# false
puts c.hash
# 4326350501226271134
puts d.hash
# 3466268982532445399


text = '237-0063'

case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end
# 郵便番号です


value = { 'smartphone' => 'xperia', 'tablet' => 'ipad', 'pc' => 'surface_pro' }

case value
when String
  puts '文字列です'
when Array
  puts '配列です'
when Hash
  puts 'ハッシュです'
end
# ハッシュです