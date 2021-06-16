string = 'ipad_pro_11'
string2 = '_3rd_gen'
symbol = :ipad_pro_11

p string == symbol
# false

p string + string2
# "ipad_pro_11_3rd_gen"

=begin
p string + symbol
# TypeError (stringとsymbolは別物)
=end

p string.to_sym
# :ipad_pro_11

p string.to_sym == symbol
# true

p symbol.to_s
# "ipad_pro_11"

p string == symbol.to_s
# true

p string + symbol.to_s
# "ipad_pro_11ipad_pro_11"

p 'ipad_pro_11'.respond_to?('include?') #true
p 'ipad_pro_11'.respond_to?(:include?) #true

p 'ipad_pro_11'.respond_to?('tablet') #false
p 'ipad_pro_11'.respond_to?(:tablet) #false

p 'ipad_pro_11'.include?('ro') #true
p 'ipad_pro_11'.include?(:ro) #TypeError(シンボルを引数で渡せないパターン)