class Parent
  def initialize
    @first = 'Ichiro'
    @second = 'Jiro'
    @third = 'Saburo'
  end

  def name
    "長男: #{@first}、次男: #{@second}、三男: #{@third}"
  end
end

class Child < Parent
  def initialize
    super
    @hour = 13
    @minute = 53
    @second = 48
  end

  def time
    "#{@hour}:#{@minute}:#{@second}"
  end
end

parent = Parent.new
puts parent.name
# 長男: Ichiro、次男: Jiro、三男: Saburo

child = Child.new
puts child.time
# 13:53:48

puts child.name
# 長男: Ichiro、次男: 48、三男: Saburo