module NameChanger
  def change_name
    @name = '浜田'
  end
end

class User
  include NameChanger

  attr_reader :name

  def initialize(name)
    @name = name
  end
end

user = User.new('Hamada')
puts user.name
# Hamada

user.change_name
puts user.name
# 浜田