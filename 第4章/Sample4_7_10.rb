p ['apple', 'sony', 'sharp', 'htc'] #["apple", "sony", "sharp", "htc"]
p %w!apple sony sharp htc! #["apple", "sony", "sharp", "htc"]
p %w(apple sony sharp htc) #["apple", "sony", "sharp", "htc"]
p %w(apple
     sony
     sharp
     htc
) #["apple", "sony", "sharp", "htc"]

p %w(apple sony\ ericson sharp htc\ nippon) #["apple", "sony ericson", "sharp", "htc nippon"]

prefix = 'in California'
p %W(apple\ #{prefix} sony\ ericson sharp htc\ nippon) #["apple in California", "sony ericson", "sharp", "htc nippon"]
