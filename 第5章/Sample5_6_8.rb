h = {}
p h[:smartphone]
# nil

h = Hash.new('Hola')
h[:smartphone] = :iphone13
p h[:smartphone]
# :iphone13

p h[:tablet]
# "Hola"

a = h[:pc]
b = h[:smartwatch]
p a.equal?(b)
# true

a.upcase!
p a #"HOLA"
p b #"HOLA"


h = Hash.new { 'Hola' }
a = h[:pc]
b = h[:smartwatch]

p a #"Hola"
p b #"Hola"

p a.equal?(b)
# false

a.upcase!
p a #"HOLA"
p b #"Hola"

h = Hash.new { |hash, key| hash[key] = 'Hola' }
p h[:smartphone] #"Hola"
p h[:tablet] #"Hola"
p h #{:smartphone=>"Hola", :tablet=>"Hola"}

git commit -m "Ruby入門 第5-6章終了"