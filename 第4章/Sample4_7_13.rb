a = Array.new(5, 'macbook')
p a #["macbook", "macbook", "macbook", "macbook", "macbook"]

str = a[0]
p str #"macbook"

str.upcase!
p str #"MACBOOK"

p a #["MACBOOK", "MACBOOK", "MACBOOK", "MACBOOK", "MACBOOK"]

a = Array.new(5) { 'airtag' }
p a #["airtag", "airtag", "airtag", "airtag", "airtag"]

str = a[0]
p str #"airtag"

str.upcase!
p a #["AIRTAG", "airtag", "airtag", "airtag", "airtag"]