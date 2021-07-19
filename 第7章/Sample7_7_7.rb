class User
  attr_reader :name, :height

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  def taller_than?(other_user)
    other_user.height < @height
  end
end

hamada = User.new('Hamada', 65, 165)
matsumoto = User.new('Matsumoto', 80, 172)

puts hamada.taller_than?(matsumoto)
# false

=begin
puts hamada.heavier_than?(matsumoto)
# `heavier_than?': undefined method `weight' for #<User:0x00007f9121108f10> (NoMethodError)
=end
