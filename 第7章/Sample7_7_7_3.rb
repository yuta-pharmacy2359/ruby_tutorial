class User
  attr_reader :name, :weight, :height
  protected :weight

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
puts matsumoto.heavier_than?(hamada)
# true

puts matsumoto.height
# 172

=begin
puts matsumoto.weight
# `<main>': protected method `weight' called for #<User:0x00007fa69d0b8e48> (NoMethodError)
=end