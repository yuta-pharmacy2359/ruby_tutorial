class User
  def name=(value)
    @name = value
  end
end

user = User.new

puts user.name = 'hamada'
# hamada