p %s!Designed by Apple in California!
# :"Designed by Apple in California"

p %s(Designed by Apple in California)
# :"Designed by Apple in California"

p %i(Designed by Apple in California)
# [:Designed, :by, :Apple, :in, :California]

name = 'iphone13_pro_max'
p %i(smart\nphone #{name.upcase})
# [:"smart\\nphone", :"\#{name.upcase}"]

p %I(smart\nphone #{name.upcase})
# [:"smart\nphone", :IPHONE13_PRO_MAX]