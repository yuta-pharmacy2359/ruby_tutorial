class User
end

class Spot
end

user = User.new

puts user.class
# User

puts user.instance_of?(User)
# true
puts user.instance_of?(Spot)
# false
puts user.instance_of?(String)
# false
puts user.instance_of?(Object)
# false

puts user.is_a?(User)
# true
puts user.is_a?(Spot)
# false
puts user.is_a?(Object)
# true
puts user.is_a?(BasicObject)
# true
puts user.is_a?(String)
# false

git commit -m "Ruby入門 第7-6-3章終了"