class Foo
  def self.hello
    'hello'
  end
end

class Bar < Foo
end

puts Foo.hello
# hello

puts Bar.hello
# hello