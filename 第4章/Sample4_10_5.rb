comedians = ['浜田', '松本', '遠藤', '田中', '方正']
comedians.each do |comedian|
  print "#{comedian}、"
  action = ['OUT', 'タイキック', 'セーフ'].sample
  puts action
  redo unless action == 'セーフ'
end
=begin
浜田、セーフ
松本、OUT
松本、OUT
松本、セーフ
遠藤、OUT
遠藤、タイキック
遠藤、セーフ
田中、タイキック
田中、OUT
田中、OUT
田中、OUT
田中、タイキック
田中、OUT
田中、セーフ
方正、タイキック
方正、セーフ
=end


comedians = ['浜田', '松本', '遠藤', '田中', '方正']
count = 0
comedians.each do |comedian|
  print "#{comedian}、"
  action = 'OUT'
  puts action
  count += 1
  redo if action != 'セーフ' && count < 3
  count = 0
end
=begin
浜田、OUT
浜田、OUT
浜田、OUT
松本、OUT
松本、OUT
松本、OUT
遠藤、OUT
遠藤、OUT
遠藤、OUT
田中、OUT
田中、OUT
田中、OUT
方正、OUT
方正、OUT
方正、OUT
=end