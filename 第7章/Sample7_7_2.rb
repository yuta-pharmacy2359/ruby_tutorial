=begin
class User2
  private
  def hello
    'hello!'
  end
end

user2 = User2.new

puts user2.hello
# `<main>': private method `hello' called for #<User2:0x00007fbeff162630> (NoMethodError)
=end


=begin
class User3
  def hello
    "Hola, #{self.name}"
  end

  private

  def name
    'Hamada'
  end
end

user3 = User3.new

puts user3.hello
# `hello': private method `name' called for #<User3:0x00007f8391942188> (NoMethodError)
=end


class User4
  def hello
    "Hola, #{name}"
  end

  private

  def name
    'Matsumoto'
  end
end

user4 = User4.new

puts user4.hello
# Hola, Matsumoto