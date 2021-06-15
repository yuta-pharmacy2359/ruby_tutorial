devices = { smartphone: :iphone12_pro, tablet: :ipad_pro_11, pc: :macbook_pro_13_M1 }
p devices.to_a
# [[:smartphone, :iphone12_pro], [:tablet, :ipad_pro_11], [:pc, :macbook_pro_13_M1]]

array = [[:smartphone, :iphone12_pro], [:tablet, :ipad_pro_11], [:pc, :macbook_pro_13_M1]]
p array.to_h
# {:smartphone=>:iphone12_pro, :tablet=>:ipad_pro_11, :pc=>:macbook_pro_13_M1}

array = ['iphone', 'ipad', 'macbook', 'apple_watch']
# p array.to_h
# エラー(ハッシュにできない)

array = [[:smartphone, :iphone_se2], [:smartphone, :iphone11]]
p array.to_h
# {:smartphone=>:iphone11}

array = [[:smartphone, :iphone12_pro], [:tablet, :ipad_pro_11], [:pc, :macbook_pro_13_M1]]
p Hash[array]
# {:smartphone=>:iphone12_pro, :tablet=>:ipad_pro_11, :pc=>:macbook_pro_13_M1}

array = [:smartphone, :iphone12_pro, :tablet, :ipad_pro_11, :pc, :macbook_pro_13_M1]
p Hash[*array]
# {:smartphone=>:iphone12_pro, :tablet=>:ipad_pro_11, :pc=>:macbook_pro_13_M1}