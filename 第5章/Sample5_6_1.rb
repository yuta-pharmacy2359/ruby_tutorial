devices = { smartphone: :iphone12_pro, tablet: :ipad_pro_11, pc: :macbook_pro_13_M1 }
p devices.keys
# [:smartphone, :tablet, :pc]

p devices.values
# [:iphone12_pro, :ipad_pro_11, :macbook_pro_13_M1]

p devices.has_value?(:ipad_pro_11)
# true

p devices.has_value?(:iphone12_pro_max)
# false