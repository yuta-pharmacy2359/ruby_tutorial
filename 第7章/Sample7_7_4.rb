class User
  private

  def self.hello
    'Hola!'
  end
end

puts User.hello
# Hola!


=begin
class User2
  class << self
    private

    def hello
      '你好!'
    end
  end
end

puts User2.hello
# `<main>': private method `hello' called for User2:Class (NoMethodError)
=end


class User3
  def self.hello
    'Bonjour!'
  end

  private_class_method :hello
end

puts User3.hello
# `<main>': private method `hello' called for User3:Class (NoMethodError)