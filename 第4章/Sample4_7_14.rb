a = 'iphone'
p a[2] #"h"
p a[2, 3] #"hon"
p a[-2] #n

a[0] = 'X'
p a #"Xphone"

a[1, 4] = 'Y'
p a #"XYe"

a << 'fgh'
p a #"XYefgh"