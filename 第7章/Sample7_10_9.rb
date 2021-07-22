def display_name(object)
  "I have <<#{object.name}>>"
end

class Smartphone
  def name
    'iPhone'
  end
end

class Tablet
  def name
    'iPad'
  end
end

smartphone = Smartphone.new
puts display_name(smartphone)
# I have <<iPhone>>

tablet = Tablet.new
puts display_name(tablet)
# I have <<iPad>>