class Product
  NAME = 'iphones'
  SOME_KINDS = ['iphone_11_pro_max', 'iphone_12_mini', 'iphone_xr']
  SOME_INCHES = { 'iphone_11_pro_max' => 6.5, 'iphone_12_mini' => 5.4, 'iphone_xr' => 6.1 }
end

Product::NAME.upcase!
puts Product::NAME
# IPHONES

Product::SOME_KINDS << 'iphone_13_pro_max'
p Product::SOME_KINDS
# ["iphone_11_pro_max", "iphone_12_mini", "iphone_xr", "iphone_13_pro_max"]

Product::SOME_INCHES['iphone_13_pro_max'] = 6.7
p Product::SOME_INCHES
# {"iphone_11_pro_max"=>6.5, "iphone_12_mini"=>5.4, "iphone_xr"=>6.1, "iphone_13_pro_max"=>6.7}