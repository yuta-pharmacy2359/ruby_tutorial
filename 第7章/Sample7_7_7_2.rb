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

  protected

  def weight
    @weight
  end
end

hamada = User.new('Hamada', 65, 165)
matsumoto = User.new('Matsumoto', 80, 172)

puts hamada.taller_than?(matsumoto)
# false
puts matsumoto.heavier_than?(hamada)
# true

puts hamada.height
# 165

=begin
puts hamada.weight
# `<main>': protected method `weight' called for #<User:0x00007f90178da140> (NoMethodError)
=end