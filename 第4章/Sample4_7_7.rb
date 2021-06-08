def greeting(*names)
  "#{names.join('と')}、こんにちは！"
end
p greeting('浜田さん') #"浜田さん、こんにちは！"
p greeting('浜田さん', '遠藤さん') #"浜田さんと遠藤さん、こんにちは！"
p greeting('浜田さん', '遠藤さん', '山﨑さん') #"浜田さんと遠藤さんと山﨑さん、こんにちは！"