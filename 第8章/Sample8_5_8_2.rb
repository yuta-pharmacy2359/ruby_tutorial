module NameChanger
  def change_name
    self.name = '松本'
  end
end

class User
  include NameChanger

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('Matsumoto')
user.change_name
puts user.name
# 松本