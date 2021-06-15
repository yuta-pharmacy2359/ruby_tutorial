devices = { smartphone: :iphone12_pro, tablet: :ipad_pro_11, pc: :macbook_pro_13_M1 }

devices2 = { **devices, smartwatch: :apple_watch_series6 }
p devices2
# {:smartphone=>:iphone12_pro, :tablet=>:ipad_pro_11, :pc=>:macbook_pro_13_M1, :smartwatch=>:apple_watch_series6}

devices3 = { smartwatch: :apple_watch_series6 }.merge(devices)
p devices3
# {:smartwatch=>:apple_watch_series6, :smartphone=>:iphone12_pro, :tablet=>:ipad_pro_11, :pc=>:macbook_pro_13_M1}